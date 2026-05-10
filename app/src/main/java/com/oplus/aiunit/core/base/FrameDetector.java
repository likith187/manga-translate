package com.oplus.aiunit.core.base;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.AIUnit;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.DetectStateCallback;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.callback.IProcessCallback;
import com.oplus.aiunit.core.callback.ProcessCallback;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.core.data.DetectInfo;
import com.oplus.aiunit.core.data.Parameters;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.data.UnitState;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.protocol.common.FrameTag;
import com.oplus.aiunit.core.service.IServiceManager;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.toolkits.AISettings;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public abstract class FrameDetector<I extends FrameInputSlot, O extends FrameOutputSlot> extends AIContext implements AIDetector<I, O> {
    private static final String IPC_NAME_CANCEL = "process_cancel_callback";
    private static final int MAX_THREAD_SIZE = 3;
    private static final String TAG = "FrameDetector";
    protected static volatile ExecutorService mExecutor;
    protected final Context mContext;
    protected String mDetectName;
    private final IServiceManager mServiceManager = IServiceManager.getInstance();
    private final List<DetectStateCallback> mStateCallbackList = new CopyOnWriteArrayList();
    private final DetectStateCallback mInnerStateCallback = new AnonymousClass1();
    private IAIMessenger mMessenger = null;
    protected Parameters mParameters = null;
    private final IProcessCallback mIpcCancel = new InnerProcessCallback(this, IPC_NAME_CANCEL);
    private final AtomicInteger mProcessCancelling = new AtomicInteger(0);

    public static class InnerProcessCallback<I extends FrameInputSlot, O extends FrameOutputSlot> extends IProcessCallback.Stub {
        String ipcName;
        WeakReference<FrameDetector<I, O>> weakDetector;

        public InnerProcessCallback(FrameDetector<I, O> frameDetector, String str) {
            this.weakDetector = new WeakReference<>(frameDetector);
            this.ipcName = str;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public String name() {
            String str = this.ipcName;
            return str != null ? str : "ipc";
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public int onCallback(ParamPackage paramPackage) {
            WeakReference<FrameDetector<I, O>> weakReference = this.weakDetector;
            FrameDetector<I, O> frameDetector = weakReference != null ? weakReference.get() : null;
            StringBuilder sb = new StringBuilder("onCallback$");
            sb.append(name());
            sb.append(" -> ");
            sb.append(frameDetector != null);
            AILog.d(FrameDetector.TAG, sb.toString());
            if (frameDetector != null) {
                return frameDetector.doIPC(name(), paramPackage);
            }
            return 0;
        }
    }

    public FrameDetector(Context context, String str) {
        this.mContext = context;
        this.mDetectName = str;
        AILog.d(TAG, "<init> " + this.mDetectName);
    }

    public int doIPC(String str, ParamPackage paramPackage) {
        if (!str.equals(IPC_NAME_CANCEL)) {
            return 0;
        }
        int i10 = this.mProcessCancelling.get();
        AILog.d(TAG, "doIPC " + str + " state = " + i10);
        paramPackage.setParam("package::process_cancelling", Integer.valueOf(i10));
        return 0;
    }

    public static /* synthetic */ void lambda$applyFramePackage$2(FramePackage framePackage, Bundle bundle, String str) {
        framePackage.setParam(str, bundle.get(str));
    }

    public static /* synthetic */ void lambda$createConfigPackage$1(ParamPackage paramPackage, Bundle bundle, String str) {
        paramPackage.setParam(str, bundle.get(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$processAsync$0(FrameInputSlot frameInputSlot, ProcessCallback processCallback) {
        FrameOutputSlot frameOutputSlotCreateOutputSlot = createOutputSlot();
        ErrorCode errorCodeProcess = process(frameInputSlot, frameOutputSlotCreateOutputSlot);
        if (processCallback != 0) {
            processCallback.onResult(frameOutputSlotCreateOutputSlot, errorCodeProcess.value());
        }
    }

    public /* synthetic */ void lambda$startDetectAsync$3() {
        startDetectInternal(this.mInnerStateCallback);
    }

    private void removeInnerCallback() {
        AILog.i(TAG, "removeInnerCallback " + this.mServiceManager.removeStateCallback(getName(), this.mInnerStateCallback));
    }

    private int startDetectInternal(DetectStateCallback detectStateCallback) {
        AILog.d(TAG, "startDetectInternal " + this.mDetectName);
        DetectData detectData = AISettings.getDetectData(this.mContext, this.mDetectName, getExtras());
        if (!detectData.isSupport()) {
            int state = detectData.getState();
            AILog.w(TAG, "start remote not support for state = " + state);
            return UnitState.toErrorCode(state).value();
        }
        try {
            ConfigPackage configPackageCreateConfigPackage = createConfigPackage();
            if (configPackageCreateConfigPackage != null && configPackageCreateConfigPackage.getParamPackage() != null && this.mParameters != null) {
                configPackageCreateConfigPackage.getParamPackage().mergeParam(this.mParameters.applyParam());
            }
            return this.mServiceManager.driveAndAttach(configPackageCreateConfigPackage, this.mDetectName, detectStateCallback);
        } catch (Exception e10) {
            AILog.e(TAG, "start remote failed.", e10);
            return ErrorCode.kErrorInvalidServiceState.value();
        }
    }

    private int startDetectInternalWithConfig(DetectStateCallback detectStateCallback) {
        try {
            return this.mServiceManager.driveAndAttach(applyConfigPackage(), this.mDetectName, detectStateCallback);
        } catch (Throwable th) {
            AILog.e(TAG, "startDetectInternalWithConfig " + th.getMessage());
            return ErrorCode.kErrorProcessFail.value();
        }
    }

    public int stopInternal() {
        AILog.i(TAG, "stopInternal");
        this.mProcessCancelling.set(1);
        try {
            try {
                return this.mServiceManager.detach(destroyConfigPackage(), getName());
            } catch (Exception e10) {
                AILog.e(TAG, "stopInternal RemoteException " + e10);
                removeInnerCallback();
                return ErrorCode.kErrorInvalidServiceState.value();
            }
        } finally {
            removeInnerCallback();
        }
    }

    public void addCallback(DetectStateCallback detectStateCallback) {
        if (this.mStateCallbackList.contains(detectStateCallback)) {
            return;
        }
        this.mStateCallbackList.add(detectStateCallback);
    }

    public ConfigPackage applyConfigPackage() {
        ConfigPackage configPackage = super.getConfigPackage();
        if (configPackage == null) {
            AILog.i(TAG, "applyConfigPackage: need to recreate config package");
            configPackage = createConfigPackage();
            if (configPackage != null && configPackage.getParamPackage() != null && this.mParameters != null) {
                configPackage.getParamPackage().mergeParam(this.mParameters.applyParam());
            }
        }
        return configPackage;
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public FramePackage applyFramePackage() {
        applyConfigPackage();
        final FramePackage framePackageApplyFramePackage = super.applyFramePackage();
        if (framePackageApplyFramePackage != null) {
            final Bundle extras = AIProtocol.getExtras(this.mContext);
            extras.keySet().forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FrameDetector.lambda$applyFramePackage$2(framePackageApplyFramePackage, extras, (String) obj);
                }
            });
            framePackageApplyFramePackage.getParamPackage().setDetectorExtras(getExtras());
            framePackageApplyFramePackage.setParam(ParamsKt.PARAM_KEY_API_LEVEL, Integer.valueOf(getApiLevel()));
            framePackageApplyFramePackage.setParam("package::unit_name", this.mDetectName);
        }
        return framePackageApplyFramePackage;
    }

    public Boolean checkActive() {
        boolean zIsStarted = this.mServiceManager.isStarted(this.mDetectName);
        AILog.i(TAG, "checkActive: " + zIsStarted);
        return Boolean.valueOf(zIsStarted);
    }

    public void clearCallbacks() {
        this.mStateCallbackList.clear();
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public ConfigPackage createConfigPackage() {
        AILog.d(TAG, "createConfigPackage " + this.mDetectName);
        ConfigPackage configPackageCreateConfigPackage = super.createConfigPackage();
        final Bundle extras = AIProtocol.getExtras(this.mContext);
        final ParamPackage paramPackage = configPackageCreateConfigPackage.getParamPackage();
        extras.keySet().forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FrameDetector.lambda$createConfigPackage$1(paramPackage, extras, (String) obj);
            }
        });
        paramPackage.setDetectorExtras(getExtras());
        paramPackage.setParam(ParamsKt.PARAM_KEY_API_LEVEL, Integer.valueOf(getApiLevel()));
        paramPackage.setParam("package::unit_name", this.mDetectName);
        paramPackage.setParam(ParamsKt.PARAM_KEY_DETECT_NAME_NEW, this.mDetectName);
        IAIMessenger iAIMessenger = this.mMessenger;
        if (iAIMessenger != null) {
            paramPackage.setParam(ParamsKt.PARAM_KEY_CLIENT_MESSENGER, iAIMessenger);
        }
        return configPackageCreateConfigPackage;
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public I createInputSlot() {
        return (I) new FrameInputSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public O createOutputSlot() {
        return (O) new FrameOutputSlot(this);
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public int getApiLevel() {
        return 203;
    }

    public DetectData getDetectData() {
        return AIUnit.getDetectData(this.mContext, this.mDetectName, getExtras());
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public int getDetectorState() {
        return AIUnit.getUnitState(this.mContext, this.mDetectName, getExtras());
    }

    public ExecutorService getExecutor() {
        if (mExecutor == null) {
            synchronized (FrameDetector.class) {
                try {
                    if (mExecutor == null) {
                        mExecutor = Executors.newFixedThreadPool(3);
                    }
                } finally {
                }
            }
        }
        return mExecutor;
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public Bundle getExtras() {
        Bundle extras = AIProtocol.getExtras(this.mContext);
        extras.putInt(ParamsKt.PARAM_KEY_API_LEVEL, getApiLevel());
        return extras;
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public String getName() {
        return this.mDetectName;
    }

    public Parameters getParameters() {
        Parameters parameters = this.mParameters;
        if (parameters != null) {
            return parameters.clone();
        }
        return null;
    }

    public Bundle getUnstableRunningInfo() {
        return AIUnit.getUnstableRunningInfo(this.mContext, this.mDetectName, getExtras());
    }

    public int getUnstableRunningType() {
        return AIUnit.getUnstableRunningInfo(this.mContext, this.mDetectName).getInt(ParamsKt.PARAM_KEY_DETECT_DATA_RUN_TYPE);
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public boolean isSupported() {
        try {
            return AIUnit.isDetectSupported(this.mContext, this.mDetectName, getExtras());
        } catch (Exception e10) {
            AILog.e(TAG, "isSupported: " + e10.getMessage());
            return false;
        }
    }

    public void postProcess(FrameInputSlot frameInputSlot, FrameOutputSlot frameOutputSlot, FramePackage framePackage) {
        AILog.d(TAG, "postProcess");
        AILog.d(TAG, "postProcess read some data from share memory " + framePackage.readInOutBigDataFromShareMemory());
        framePackage.clearJsonMemory();
        frameOutputSlot.setFramePackage(framePackage);
        frameOutputSlot.setJsonResult(framePackage.getParamStr("package::json_result"));
        frameOutputSlot.setStatistics(framePackage.getParamStr("package::statistics"));
        try {
            frameOutputSlot.clearBitmaps();
            Map<Integer, FrameTag> outputTags = FrameTag.getOutputTags(framePackage.getParamStr("package::frame_tag_group"));
            for (int i10 = 0; i10 < frameOutputSlot.getFrameListSize(); i10++) {
                FrameTag frameTag = outputTags.get(Integer.valueOf(i10));
                if (frameTag == null) {
                    AILog.e(TAG, "invalid frame tag.");
                    return;
                }
                FrameUnit frameUnit = frameOutputSlot.getFrameUnit(i10);
                if (frameUnit == null) {
                    AILog.e(TAG, "invalid src unit after process");
                    return;
                }
                List<FrameTag.FrameFragment> fragments = frameTag.getFragments();
                if (fragments.isEmpty()) {
                    FrameUnit frameUnit2 = framePackage.getFrameUnit(frameTag.getPackageOrder().intValue());
                    if (frameUnit2 == null) {
                        AILog.e(TAG, "invalid dst unit after process");
                    } else {
                        frameUnit.move(frameUnit2);
                        frameOutputSlot.convertBitmap(frameUnit);
                    }
                } else {
                    Iterator<FrameTag.FrameFragment> it = fragments.iterator();
                    while (it.hasNext()) {
                        frameOutputSlot.convertBitmap(new FrameUnit(frameUnit, it.next()));
                    }
                }
            }
        } finally {
            frameInputSlot.cleanAutoFrameUnit();
            frameOutputSlot.cleanAutoFrameUnit();
        }
    }

    public void preProcess(FrameInputSlot frameInputSlot, FrameOutputSlot frameOutputSlot, FramePackage framePackage) {
        AILog.d(TAG, "preProcess");
        framePackage.setParam("package::json_source", frameInputSlot.getJsonSource());
        int frameListSize = frameInputSlot.getFrameListSize();
        ArrayList arrayList = new ArrayList();
        AILog.d(TAG, "frame list size " + frameListSize);
        int size = 0;
        while (size < frameListSize) {
            FrameUnit frameUnit = frameInputSlot.getFrameUnit(size);
            if (frameUnit != null) {
                if (frameUnit.isFragment() || frameUnit.isFragmentParent()) {
                    FrameUnit frameUnitFindFragmentParent = frameInputSlot.findFragmentParent(frameUnit);
                    List<FrameUnit> listFindFragmentChildList = frameInputSlot.findFragmentChildList(frameUnit);
                    if (frameUnitFindFragmentParent != null && listFindFragmentChildList != null) {
                        FrameTag frameTag = new FrameTag(Integer.valueOf(framePackage.getFrameUnitList().size()), Integer.valueOf(size), "input", frameUnitFindFragmentParent.getTag());
                        arrayList.add(frameTag);
                        framePackage.setFrameUnit(size, frameUnitFindFragmentParent);
                        int frameSize = 0;
                        for (FrameUnit frameUnit2 : listFindFragmentChildList) {
                            frameUnitFindFragmentParent.setData(frameUnit2.getData(), frameSize);
                            frameTag.addChildFrameUnit(frameUnit2, frameSize);
                            frameSize += frameUnit2.getFrameSize();
                        }
                        size += listFindFragmentChildList.size() + 1;
                    }
                } else {
                    framePackage.setFrameUnit(size, frameUnit);
                    arrayList.add(new FrameTag(Integer.valueOf(size), Integer.valueOf(size), "input", frameUnit.getTag()));
                    size++;
                }
            }
        }
        int size2 = framePackage.getFrameUnitList().size();
        for (int i10 = 0; i10 < frameOutputSlot.getFrameListSize(); i10++) {
            FrameUnit frameUnit3 = frameOutputSlot.getFrameUnit(i10);
            if (frameUnit3 == null) {
                AILog.e(TAG, "output frame index " + i10 + " is null.");
                framePackage.setErrorCode(ErrorCode.kErrorParamLengthMismatch);
                return;
            }
            int i11 = size2 + i10;
            framePackage.setFrameUnit(i11, frameUnit3);
            arrayList.add(new FrameTag(Integer.valueOf(i11), Integer.valueOf(i10), "output", frameUnit3.getTag()));
        }
        framePackage.setParam("package::frame_tag_group", FrameTag.listToJson(arrayList).toString());
        AILog.d(TAG, "preProcess move some data to share memory " + framePackage.moveInOutBigDataToShareMemory());
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public ErrorCode process(I i10, O o10) {
        Parameters parameters;
        checkMainThread();
        long jCurrentTimeMillis = System.currentTimeMillis();
        FramePackage framePackage = null;
        try {
            try {
                i10.setProcessCallback(this.mIpcCancel);
                if (getConfigPackage() == null || !checkActive().booleanValue()) {
                    AILog.i(TAG, "process start first");
                    int iStartDetectInternalWithConfig = startDetectInternalWithConfig(this.mInnerStateCallback);
                    if (iStartDetectInternalWithConfig != ErrorCode.kErrorNone.value()) {
                        ErrorCode errorCodeFind = ErrorCode.find(iStartDetectInternalWithConfig);
                        i10.cleanAutoFrameUnit();
                        o10.cleanAutoFrameUnit();
                        return errorCodeFind;
                    }
                }
                ErrorCode errorCode = i10.getErrorCode();
                if (errorCode != ErrorCode.kErrorNone) {
                    AILog.e(TAG, "some error occurs at input slot,with code " + errorCode);
                    i10.cleanAutoFrameUnit();
                    o10.cleanAutoFrameUnit();
                    return errorCode;
                }
                FramePackage framePackageApplyFramePackage = applyFramePackage();
                if (framePackageApplyFramePackage == null) {
                    ErrorCode errorCode2 = ErrorCode.kErrorNotReady;
                    i10.cleanAutoFrameUnit();
                    o10.cleanAutoFrameUnit();
                    if (framePackageApplyFramePackage != null) {
                        framePackageApplyFramePackage.clearJsonMemory();
                    }
                    return errorCode2;
                }
                if (framePackageApplyFramePackage.getParamPackage() != null && (parameters = this.mParameters) != null) {
                    framePackageApplyFramePackage.mergeParam(parameters.applyParam());
                }
                framePackageApplyFramePackage.mergeParam(i10.getCustomParam());
                preProcess(i10, o10, framePackageApplyFramePackage);
                process(framePackageApplyFramePackage);
                postProcess(i10, o10, framePackageApplyFramePackage);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                ErrorCode errorCode3 = framePackageApplyFramePackage.getErrorCode();
                AILog.i(TAG, "process: errorCode = " + errorCode3 + ", cost time = " + (jCurrentTimeMillis2 - jCurrentTimeMillis) + " ms");
                i10.cleanAutoFrameUnit();
                o10.cleanAutoFrameUnit();
                framePackageApplyFramePackage.clearJsonMemory();
                return errorCode3;
            } catch (Exception e10) {
                AILog.e(TAG, "process failed. " + e10);
                i10.cleanAutoFrameUnit();
                o10.cleanAutoFrameUnit();
                if (0 != 0) {
                    framePackage.clearJsonMemory();
                }
                return ErrorCode.UNKNOWN;
            }
        } catch (Throwable th) {
            i10.cleanAutoFrameUnit();
            o10.cleanAutoFrameUnit();
            if (0 != 0) {
                framePackage.clearJsonMemory();
            }
            throw th;
        }
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public void processAsync(final I i10, final ProcessCallback<O> processCallback) {
        getExecutor().execute(new Runnable() { // from class: com.oplus.aiunit.core.base.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f10841a.lambda$processAsync$0(i10, processCallback);
            }
        });
    }

    @Deprecated
    public DetectInfo query() {
        return AIUnit.queryDetectInfo(this.mContext, this.mDetectName);
    }

    public boolean removeCallback(DetectStateCallback detectStateCallback) {
        return this.mStateCallbackList.remove(detectStateCallback);
    }

    public Boolean removeUnit() {
        return Boolean.valueOf(this.mServiceManager.removeUnit(this.mDetectName));
    }

    @Deprecated
    public int setDetectStateCallback(DetectStateCallback detectStateCallback) {
        addCallback(detectStateCallback);
        return ErrorCode.kErrorNone.value();
    }

    public void setMessenger(IAIMessenger iAIMessenger) {
        this.mMessenger = iAIMessenger;
    }

    public void setParameters(Parameters parameters) {
        this.mParameters = parameters;
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public int start() {
        AILog.d(TAG, "start " + this.mDetectName);
        checkMainThread();
        return startDetectInternal(this.mInnerStateCallback);
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public void startDetectAsync(DetectStateCallback detectStateCallback) {
        AILog.d(TAG, "startDetectAsync " + this.mDetectName);
        addCallback(detectStateCallback);
        getExecutor().execute(new Runnable() { // from class: com.oplus.aiunit.core.base.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f10840a.lambda$startDetectAsync$3();
            }
        });
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public int stop() {
        checkMainThread();
        return stopInternal();
    }

    @Override // com.oplus.aiunit.core.base.AIDetector
    public void stopAsync() {
        getExecutor().execute(new Runnable() { // from class: com.oplus.aiunit.core.base.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f10848a.stopInternal();
            }
        });
    }

    /* JADX INFO: renamed from: com.oplus.aiunit.core.base.FrameDetector$1 */
    public class AnonymousClass1 implements DetectStateCallback {
        public AnonymousClass1() {
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onAllDestroy(final String str) {
            AILog.w(FrameDetector.TAG, "onAllDestroy: " + FrameDetector.this.mDetectName);
            FrameDetector.this.stopInternal();
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.f
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onAllDestroy(str);
                }
            });
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onAllFail(final String str, final int i10, final String str2) {
            AILog.w(FrameDetector.TAG, "onAllFail: " + FrameDetector.this.mDetectName + ", err = " + i10 + ", msg = " + str2);
            FrameDetector.this.stopInternal();
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.h
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onAllFail(str, i10, str2);
                }
            });
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onDestroy() {
            AILog.i(FrameDetector.TAG, "onDestroy: " + FrameDetector.this.mDetectName);
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onFail(int i10, String str) {
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onOneDestroy(final AIConfig aIConfig) {
            AILog.i(FrameDetector.TAG, "onOneDestroy: " + FrameDetector.this.mDetectName);
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.k
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onOneDestroy(aIConfig);
                }
            });
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onOneFail(final AIConfig aIConfig, final int i10, final String str) {
            AILog.w(FrameDetector.TAG, "onOneFail: " + FrameDetector.this.mDetectName + ", err = " + i10 + ", msg = " + str);
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onOneFail(aIConfig, i10, str);
                }
            });
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onStart() {
            AILog.i(FrameDetector.TAG, "onStart: " + FrameDetector.this.mDetectName);
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.i
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onStart();
                }
            });
        }

        @Override // com.oplus.aiunit.core.callback.DetectStateCallback
        public void onStart(final AIConfig aIConfig) {
            AILog.i(FrameDetector.TAG, "onStart: " + FrameDetector.this.mDetectName);
            FrameDetector.this.mStateCallbackList.forEach(new Consumer() { // from class: com.oplus.aiunit.core.base.g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((DetectStateCallback) obj).onStart(aIConfig);
                }
            });
        }
    }

    @Override // com.oplus.aiunit.core.base.AIContext
    public void process(FramePackage framePackage) {
        ErrorCode errorCode = framePackage.getErrorCode();
        ErrorCode errorCode2 = ErrorCode.kErrorNone;
        if (errorCode != errorCode2) {
            AILog.e(TAG, "existing error occurred already," + framePackage.getErrorCode());
            return;
        }
        try {
            this.mProcessCancelling.set(0);
            int iProcess = this.mServiceManager.process(framePackage, getName());
            if (iProcess != errorCode2.value()) {
                if (framePackage.getParamInt(ParamsKt.PARAM_KEY_PROCESS_RETRY) == 1) {
                    AILog.i(TAG, "process retry and start because " + iProcess);
                    int iStartDetectInternalWithConfig = startDetectInternalWithConfig(this.mInnerStateCallback);
                    if (iStartDetectInternalWithConfig != errorCode2.value()) {
                        framePackage.setErrorCode(ErrorCode.find(iStartDetectInternalWithConfig));
                        AILog.e(TAG, "process retry but start fail for " + iStartDetectInternalWithConfig);
                        return;
                    }
                    iProcess = this.mServiceManager.process(framePackage, getName());
                } else {
                    framePackage.setErrorCode(ErrorCode.find(iProcess));
                }
            }
            AILog.d(TAG, "process code = " + iProcess);
        } catch (Throwable th) {
            AILog.e(TAG, "process remote failed. " + th);
            framePackage.setErrorCode(ErrorCode.kErrorRemoteDead);
        }
    }
}

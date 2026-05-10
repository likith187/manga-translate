package com.oplus.aiunit.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.oplus.aiunit.core.AIUnit;
import com.oplus.aiunit.core.base.FrameDetector;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.AICallback;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.core.data.DetectInfo;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class AIConnector<I extends FrameInputSlot, O extends FrameOutputSlot> {
    private static final long AWAIT_TIME_MAX = 3;
    public static final Companion Companion = new Companion(null);
    private final String TAG;
    private final AIConnector$aiCallback$1 aiCallback;
    private final CopyOnWriteArrayList<AICallback> callbackList;
    private final Context context;
    private final FrameDetector<I, O> detector;
    private CountDownLatch initLatch;
    private final AtomicBoolean isConnected;
    private final AtomicBoolean isStarted;
    private volatile boolean isSupported;

    public interface Action<R> {

        public static final class DefaultImpls {
            public static <R> R failure(Action<R> action, ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                return null;
            }
        }

        R failure(ErrorCode errorCode, String str);

        R run();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.oplus.aiunit.core.AIConnector$aiCallback$1] */
    public AIConnector(Context context, FrameDetector<I, O> detector, String TAG) {
        r.e(context, "context");
        r.e(detector, "detector");
        r.e(TAG, "TAG");
        this.context = context;
        this.detector = detector;
        this.TAG = TAG;
        this.initLatch = new CountDownLatch(1);
        this.isConnected = new AtomicBoolean(false);
        this.isStarted = new AtomicBoolean(false);
        this.callbackList = new CopyOnWriteArrayList<>();
        this.aiCallback = new AICallback(this) { // from class: com.oplus.aiunit.core.AIConnector$aiCallback$1
            final /* synthetic */ AIConnector<I, O> this$0;

            {
                this.this$0 = this;
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onAllDestroy(String detectName) {
                r.e(detectName, "detectName");
                AILog.w(this.this$0.getTAG(), "onAllDestroy: detectName = " + detectName);
                ((AIConnector) this.this$0).isStarted.set(false);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onAllDestroy(detectName);
                }
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onAllFail(String detectName, int i10, String str) {
                r.e(detectName, "detectName");
                AILog.e(this.this$0.getTAG(), "onAllFail: detectName = " + detectName + ", err = " + i10 + ", msg = " + str);
                ((AIConnector) this.this$0).isStarted.set(false);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onAllFail(detectName, i10, str);
                }
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onDestroy() {
                AICallback.DefaultImpls.onDestroy(this);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onFail(int i10, String str) {
                AICallback.DefaultImpls.onFail(this, i10, str);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onOneDestroy(AIConfig config) {
                r.e(config, "config");
                AILog.w(this.this$0.getTAG(), "onOneDestroy: config = " + config);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onOneDestroy(config);
                }
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onOneFail(AIConfig config, int i10, String str) {
                r.e(config, "config");
                AILog.e(this.this$0.getTAG(), "onOneFail: config = " + config + ", err = " + i10 + ", msg = " + str);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onOneFail(config, i10, str);
                }
            }

            @Override // com.oplus.aiunit.core.callback.AICallback, com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnect() {
                AILog.i(this.this$0.getTAG(), "onServiceConnect");
                ((AIConnector) this.this$0).isConnected.set(true);
                CountDownLatch countDownLatch = ((AIConnector) this.this$0).initLatch;
                AIConnector<I, O> aIConnector = this.this$0;
                synchronized (countDownLatch) {
                    ((AIConnector) aIConnector).initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onServiceConnect();
                }
            }

            @Override // com.oplus.aiunit.core.callback.AICallback, com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnectFailed(int i10) {
                AILog.w(this.this$0.getTAG(), "onServiceConnectFailed: " + i10);
                ((AIConnector) this.this$0).isConnected.set(false);
                ((AIConnector) this.this$0).isStarted.set(false);
                CountDownLatch countDownLatch = ((AIConnector) this.this$0).initLatch;
                AIConnector<I, O> aIConnector = this.this$0;
                synchronized (countDownLatch) {
                    ((AIConnector) aIConnector).initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onServiceConnectFailed(i10);
                }
            }

            @Override // com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceDisconnect() {
                super.onServiceDisconnect();
                AILog.i(this.this$0.getTAG(), "onServiceDisconnect");
                ((AIConnector) this.this$0).isConnected.set(false);
                ((AIConnector) this.this$0).isStarted.set(false);
                CountDownLatch countDownLatch = ((AIConnector) this.this$0).initLatch;
                AIConnector<I, O> aIConnector = this.this$0;
                synchronized (countDownLatch) {
                    ((AIConnector) aIConnector).initLatch.countDown();
                    h0 h0Var = h0.INSTANCE;
                }
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onServiceDisconnect();
                }
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onStart() {
                AILog.d(this.this$0.getTAG(), "onStart");
                ((AIConnector) this.this$0).isStarted.set(true);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onStart();
                }
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onStart(AIConfig config) {
                r.e(config, "config");
                AILog.d(this.this$0.getTAG(), "onStart: config = " + config);
                ((AIConnector) this.this$0).isStarted.set(true);
                Iterator it = ((AIConnector) this.this$0).callbackList.iterator();
                while (it.hasNext()) {
                    ((AICallback) it.next()).onStart(config);
                }
            }
        };
        new Thread(new Runnable() { // from class: com.oplus.aiunit.core.b
            @Override // java.lang.Runnable
            public final void run() {
                AIConnector._init_$lambda$0(this.f10839a);
            }
        }).start();
    }

    public static final void _init_$lambda$0(AIConnector this$0) {
        r.e(this$0, "this$0");
        this$0.initState(false);
    }

    private final synchronized void initState(boolean z10) {
        try {
            if (!this.isConnected.get() || !AIUnit.Companion.isConnected()) {
                synchronized (this.initLatch) {
                    try {
                        if (this.initLatch.getCount() <= 0) {
                            this.initLatch = new CountDownLatch(1);
                        }
                        h0 h0Var = h0.INSTANCE;
                    } finally {
                    }
                }
                AIUnit.Companion.init(this.context, this.aiCallback, AILog.INSTANCE.getDebugMode());
                if (z10 && !r.a(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                    try {
                        this.initLatch.await(AWAIT_TIME_MAX, TimeUnit.SECONDS);
                    } catch (Exception e10) {
                        this.isConnected.set(AIUnit.Companion.isConnected());
                        AILog.w(this.TAG, "initState connect wait exception. " + e10.getMessage());
                    }
                }
            }
            AILog.d(this.TAG, "initState: isConnected = " + this.isConnected);
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void resetState() {
        this.isStarted.set(false);
        this.isConnected.set(false);
    }

    public static final void stopAsync$lambda$5(AIConnector this$0) {
        r.e(this$0, "this$0");
        this$0.stop();
    }

    public final void add(AICallback callback) {
        r.e(callback, "callback");
        if (this.callbackList.contains(this.aiCallback)) {
            return;
        }
        this.callbackList.add(callback);
    }

    public boolean checkSupported() {
        AIUnit.Companion companion = AIUnit.Companion;
        Context context = this.context;
        String name = this.detector.getName();
        r.d(name, "getName(...)");
        this.isSupported = companion.isDetectSupported(context, name, getExtras());
        return isSupported();
    }

    public final synchronized void clear() {
        this.callbackList.clear();
        this.detector.removeUnit();
        AIUnit.Companion.remove(this.aiCallback);
        boolean zRemoveCallback = this.detector.removeCallback(this.aiCallback);
        AILog.i(this.TAG, "clear removeInner " + zRemoveCallback);
        resetState();
    }

    public final synchronized void destroy() {
        AILog.i(this.TAG, "destroy: " + this.detector.getName() + ", isStarted = " + this.isStarted + ", isConnected = " + this.isConnected);
        stopAndClear();
    }

    public final int getApi() {
        return this.detector.getApiLevel();
    }

    public final Context getContext() {
        return this.context;
    }

    public final DetectData getDetectData() {
        DetectData detectData = this.detector.getDetectData();
        r.d(detectData, "getDetectData(...)");
        return detectData;
    }

    public final String getDetectName() {
        String name = this.detector.getName();
        r.d(name, "getName(...)");
        return name;
    }

    public final FrameDetector<I, O> getDetector() {
        return this.detector;
    }

    public final Bundle getExtras() {
        Bundle extras = this.detector.getExtras();
        r.d(extras, "getExtras(...)");
        return extras;
    }

    public final int getProtocol() {
        return this.detector.getProtocol();
    }

    public final Bundle getRunningInfo() {
        Bundle unstableRunningInfo = this.detector.getUnstableRunningInfo();
        r.d(unstableRunningInfo, "getUnstableRunningInfo(...)");
        return unstableRunningInfo;
    }

    public final int getRunningType() {
        return this.detector.getUnstableRunningType();
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final String getUnitName() {
        String name = this.detector.getName();
        r.d(name, "getName(...)");
        return name;
    }

    public final synchronized void initSync() {
        initState(true);
        if (this.isConnected.get()) {
            start();
        }
    }

    public final boolean isSupported() {
        if (!this.isSupported) {
            AIUnit.Companion companion = AIUnit.Companion;
            Context context = this.context;
            String name = this.detector.getName();
            r.d(name, "getName(...)");
            this.isSupported = companion.isDetectSupported(context, name, getExtras());
        }
        return this.isSupported;
    }

    public final DetectInfo query() {
        DetectInfo detectInfoQuery = this.detector.query();
        r.d(detectInfoQuery, "query(...)");
        return detectInfoQuery;
    }

    public final boolean remove(AICallback callback) {
        r.e(callback, "callback");
        return this.callbackList.remove(callback);
    }

    public void removeUnitCache() {
        this.detector.removeUnit();
    }

    public final <R> R runAction(Action<R> action) {
        Object objM59constructorimpl;
        r.e(action, "action");
        AILog.d(this.TAG, "runAction for " + getDetectName());
        long jCurrentTimeMillis = System.currentTimeMillis();
        initState(true);
        if (!this.isConnected.get()) {
            AILog.w(this.TAG, "runAction no connected!");
            return action.failure(ErrorCode.kErrorInvalidServiceState, "service no connected");
        }
        int iStart = start();
        if (!this.isStarted.get()) {
            AILog.w(this.TAG, "runAction no started!");
            ErrorCode errorCodeFind = ErrorCode.find(iStart);
            r.d(errorCodeFind, "find(...)");
            return action.failure(errorCodeFind, "unit start failed");
        }
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = (R) n8.r.m59constructorimpl(action.run());
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            action.failure(ErrorCode.kErrorProcessFail, "runAction failed: " + thM62exceptionOrNullimpl.getMessage());
        }
        if (n8.r.m65isFailureimpl(objM59constructorimpl)) {
            objM59constructorimpl = (R) null;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        AILog.i(this.TAG, "runAction: " + getDetectName() + " cost time " + (jCurrentTimeMillis2 - jCurrentTimeMillis) + " ms");
        return (R) objM59constructorimpl;
    }

    public void setSharedMemoryPool(int[] pool) {
        kotlin.jvm.internal.r.e(pool, "pool");
        this.detector.setConfigMemoryPool(pool);
    }

    public final void setSupported(boolean z10) {
        this.isSupported = z10;
    }

    public final synchronized int start() {
        initState(true);
        if (this.isStarted.get() && this.detector.checkActive().booleanValue()) {
            return 0;
        }
        this.detector.addCallback(this.aiCallback);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iStart = this.detector.start();
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        AILog.i(this.TAG, "start code = " + iStart + ", cost time = " + jCurrentTimeMillis2);
        if (iStart == 0) {
            this.isStarted.set(true);
        }
        return iStart;
    }

    public synchronized void stop() {
        try {
            AILog.i(this.TAG, "stop: " + this.detector.getName() + ", isStarted = " + this.isStarted + ", isConnected = " + this.isConnected);
            if (this.isStarted.get()) {
                this.detector.stop();
                this.isStarted.set(false);
            }
            if (this.isConnected.get()) {
                this.isConnected.set(false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void stopAndClear() {
        stop();
        clear();
    }

    public final void stopAsync() {
        this.detector.getExecutor().execute(new Runnable() { // from class: com.oplus.aiunit.core.a
            @Override // java.lang.Runnable
            public final void run() {
                AIConnector.stopAsync$lambda$5(this.f10838a);
            }
        });
    }
}

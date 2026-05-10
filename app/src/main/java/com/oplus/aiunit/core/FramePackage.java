package com.oplus.aiunit.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SharedMemory;
import android.system.ErrnoException;
import com.oplus.aiunit.core.base.SdkParamCompat;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.protocol.common.FrameTag;
import com.oplus.aiunit.core.utils.AILog;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes.dex */
public class FramePackage implements Parcelable {
    public static final String JSON_RESULT_NAME = "package::json_result";
    public static final String JSON_SOURCE_NAME = "package::json_source";
    private static final String TAG = "FramePackage";
    private final Map<String, ShareMemoryHolder> mBigDataMap;
    private final List<FrameUnit> mFrameUnitList;
    private final ParamPackage mParamPackage;
    private static final Long DATA_SIZE_THRESHOLD = 512000L;
    public static final Parcelable.Creator<FramePackage> CREATOR = new Parcelable.Creator<FramePackage>() { // from class: com.oplus.aiunit.core.FramePackage.1
        @Override // android.os.Parcelable.Creator
        public FramePackage createFromParcel(Parcel parcel) {
            return new FramePackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FramePackage[] newArray(int i10) {
            return new FramePackage[i10];
        }
    };

    /* JADX INFO: renamed from: com.oplus.aiunit.core.FramePackage$1 */
    public class AnonymousClass1 implements Parcelable.Creator<FramePackage> {
        @Override // android.os.Parcelable.Creator
        public FramePackage createFromParcel(Parcel parcel) {
            return new FramePackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FramePackage[] newArray(int i10) {
            return new FramePackage[i10];
        }
    }

    public FramePackage() {
        this.mFrameUnitList = new ArrayList();
        this.mParamPackage = new ParamPackage();
        this.mBigDataMap = new HashMap();
    }

    private boolean isKeyInputOrOutput(String str) {
        return str.equals("package::json_source") || str.equals("package::json_result");
    }

    public static /* synthetic */ void lambda$clearAllBigDataShareMemory$0(String str, ShareMemoryHolder shareMemoryHolder) {
        if (shareMemoryHolder != null) {
            shareMemoryHolder.close();
        }
    }

    private String readOutputFromShareMemory(String str) {
        ShareMemoryHolder shareMemoryHolder = this.mBigDataMap.get(str);
        if (shareMemoryHolder == null) {
            return null;
        }
        if (isKeyInputOrOutput(str)) {
            try {
                SharedMemory sharedMemory = shareMemoryHolder.getSharedMemory();
                if (sharedMemory == null) {
                    AILog.w(TAG, "share memory is null but big data share memory is not null");
                    return null;
                }
                ByteBuffer byteBufferMapReadOnly = sharedMemory.mapReadOnly();
                int iLimit = byteBufferMapReadOnly.limit() - byteBufferMapReadOnly.position();
                byte[] bArr = new byte[iLimit];
                byteBufferMapReadOnly.get(bArr);
                AILog.d(TAG, "read " + str + " from share memory with " + iLimit);
                String str2 = new String(bArr, kotlin.text.d.f13110a);
                this.mParamPackage.setParamStringNoPrint(str, str2);
                SharedMemory.unmap(byteBufferMapReadOnly);
                return str2;
            } catch (ErrnoException | IllegalArgumentException e10) {
                AILog.e(TAG, "readOutputFromShareMemory", e10);
            }
        } else {
            AILog.d(TAG, "" + str + ", " + shareMemoryHolder);
        }
        return null;
    }

    public boolean addShareMemory(String str, byte[] bArr) {
        SharedMemory sharedMemory;
        AILog.d(TAG, "addShareMemory: " + str);
        if (bArr != null && bArr.length != 0) {
            ShareMemoryHolder shareMemoryHolder = this.mBigDataMap.get(str);
            if (shareMemoryHolder != null) {
                shareMemoryHolder.close();
            }
            ShareMemoryHolder shareMemoryHolderCreateBigDataShareMemory = ShareMemoryHolder.createBigDataShareMemory(bArr.length);
            if (shareMemoryHolderCreateBigDataShareMemory == null || (sharedMemory = shareMemoryHolderCreateBigDataShareMemory.getSharedMemory()) == null) {
                return false;
            }
            try {
                ByteBuffer byteBufferMapReadWrite = sharedMemory.mapReadWrite();
                byteBufferMapReadWrite.put(bArr);
                SharedMemory.unmap(byteBufferMapReadWrite);
                this.mBigDataMap.put(str, shareMemoryHolderCreateBigDataShareMemory);
                AILog.d(TAG, "addShareMemory: " + str + " success");
                return true;
            } catch (ErrnoException | IllegalArgumentException e10) {
                AILog.e(TAG, "addShareMemory: " + str + " failed. " + e10.getMessage());
            }
        }
        return false;
    }

    public boolean attachConfigPackage(ConfigPackage configPackage) {
        boolean z10 = false;
        if (configPackage == null) {
            AILog.e(TAG, "invalid config package can't find.");
            return false;
        }
        if (this.mFrameUnitList.isEmpty()) {
            return true;
        }
        for (FrameUnit frameUnit : this.mFrameUnitList) {
            if (equalConfigPackage(configPackage, ParamsKt.PARAM_KEY_CONFIG_UUID)) {
                SharedMemory shareMemoryHolder = configPackage.getShareMemoryHolder(frameUnit.getUUID());
                if (shareMemoryHolder != null) {
                    frameUnit.setSharedMemory(shareMemoryHolder);
                    z10 = true;
                }
            } else {
                AILog.e(TAG, "invalid uuid from while attach, means start != process");
            }
        }
        return z10;
    }

    public void clearAllBigDataShareMemory() {
        this.mBigDataMap.forEach(new BiConsumer() { // from class: com.oplus.aiunit.core.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                FramePackage.lambda$clearAllBigDataShareMemory$0((String) obj, (ShareMemoryHolder) obj2);
            }
        });
        this.mBigDataMap.clear();
    }

    public void clearBigDataShareMemory(String str) {
        ShareMemoryHolder shareMemoryHolder = this.mBigDataMap.get(str);
        if (shareMemoryHolder != null) {
            shareMemoryHolder.close();
            this.mBigDataMap.remove(str);
        }
    }

    public void clearJsonMemory() {
        String[] strArr = {"package::json_source", "package::json_result"};
        for (int i10 = 0; i10 < 2; i10++) {
            String str = strArr[i10];
            ShareMemoryHolder shareMemoryHolder = this.mBigDataMap.get(str);
            if (shareMemoryHolder != null) {
                shareMemoryHolder.close();
                this.mBigDataMap.remove(str);
            }
        }
    }

    public void deepCopy(FramePackage framePackage) {
        this.mFrameUnitList.clear();
        this.mFrameUnitList.addAll(framePackage.getFrameUnitList());
        this.mParamPackage.cleanParam();
        this.mParamPackage.mergeParam(framePackage.getParamPackage());
        this.mBigDataMap.clear();
        this.mBigDataMap.putAll(framePackage.getBigDataMap());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equalConfigPackage(ConfigPackage configPackage, String str) {
        return configPackage.getParamPackage().getParam(str).equals(this.mParamPackage.getParam(str));
    }

    public void fromConfigPackage(ConfigPackage configPackage, String str) {
        this.mParamPackage.setParam(str, configPackage.getParamPackage().getParam(str));
    }

    public Map<String, ShareMemoryHolder> getBigDataMap() {
        return this.mBigDataMap;
    }

    public ErrorCode getErrorCode() {
        String paramStr = this.mParamPackage.getParamStr(ParamsKt.PARAM_KEY_ERROR_CODE);
        return (paramStr == null || paramStr.isEmpty()) ? ErrorCode.kErrorNone : ErrorCode.find(Integer.parseInt(paramStr));
    }

    public String getErrorMessage() {
        return this.mParamPackage.getParamStr(ParamsKt.PARAM_KEY_ERROR_MESSAGE);
    }

    public FrameUnit getFrameUnit(int i10) {
        if (this.mFrameUnitList.size() <= i10) {
            return null;
        }
        return this.mFrameUnitList.get(i10);
    }

    public FrameUnit getFrameUnitByTag(String str, String str2) {
        Iterator<Map.Entry<Integer, FrameTag>> it = FrameTag.getTagsByType(getParamStr("package::frame_tag_group"), str2).entrySet().iterator();
        while (it.hasNext()) {
            FrameTag value = it.next().getValue();
            if (value != null && value.tag.equals(str)) {
                return getFrameUnit(value.packageOrder.intValue());
            }
        }
        return null;
    }

    public List<FrameUnit> getFrameUnitList() {
        return this.mFrameUnitList;
    }

    public int getIntErrorCode() {
        String paramStr = this.mParamPackage.getParamStr(ParamsKt.PARAM_KEY_ERROR_CODE);
        if (paramStr == null || paramStr.isEmpty()) {
            return ErrorCode.kErrorNone.value();
        }
        try {
            return Integer.parseInt(paramStr);
        } catch (NumberFormatException unused) {
            AILog.e(TAG, "invalid error code");
            return ErrorCode.kErrorInvalidParam.value();
        }
    }

    public float getParamFloat(String str) {
        return this.mParamPackage.getParamFloat(str);
    }

    public int getParamInt(String str) {
        return this.mParamPackage.getParamInt(str);
    }

    public ParamPackage getParamPackage() {
        return this.mParamPackage;
    }

    public String getParamStr(String str) {
        return this.mParamPackage.getParamStr(str);
    }

    public void mergeParam(ParamPackage paramPackage) {
        this.mParamPackage.mergeParam(paramPackage);
    }

    public boolean moveBigDataToShareMemory(String str) {
        ShareMemoryHolder shareMemoryHolderMoveBigDataToShareMemory = moveBigDataToShareMemory(str, this.mBigDataMap.get(str));
        this.mBigDataMap.put(str, shareMemoryHolderMoveBigDataToShareMemory);
        return shareMemoryHolderMoveBigDataToShareMemory != null;
    }

    public boolean moveInOutBigDataToShareMemory() {
        return moveBigDataToShareMemory("package::json_result") || moveBigDataToShareMemory("package::json_source");
    }

    public void readFromParcel(Parcel parcel) {
        parcel.readTypedList(this.mFrameUnitList, FrameUnit.CREATOR);
        parcel.readMap(this.mParamPackage.getParamMap(), null);
        SdkParamCompat.compat(this.mParamPackage.getParamMap());
        parcel.readMap(this.mBigDataMap, getClass().getClassLoader());
        try {
            this.mParamPackage.setParamExtra(parcel.readBundle(getClass().getClassLoader()));
        } catch (IllegalStateException e10) {
            AILog.e(TAG, "readFromParcel: " + e10);
        }
    }

    public boolean readInOutBigDataFromShareMemory() {
        return readOutputFromShareMemory("package::json_result") != null || (readOutputFromShareMemory("package::json_source") != null);
    }

    public byte[] removeShareMemory(String str) {
        AILog.d(TAG, "removeShareMemory: " + str);
        ShareMemoryHolder shareMemoryHolder = this.mBigDataMap.get(str);
        if (shareMemoryHolder == null) {
            return null;
        }
        try {
            SharedMemory sharedMemory = shareMemoryHolder.getSharedMemory();
            if (sharedMemory == null) {
                return null;
            }
            ByteBuffer byteBufferMapReadOnly = sharedMemory.mapReadOnly();
            byte[] bArr = new byte[byteBufferMapReadOnly.limit() - byteBufferMapReadOnly.position()];
            byteBufferMapReadOnly.get(bArr);
            SharedMemory.unmap(byteBufferMapReadOnly);
            AILog.d(TAG, "removeShareMemory: " + str + " success");
            return bArr;
        } catch (ErrnoException | IllegalArgumentException e10) {
            AILog.e(TAG, "removeShareMemory: " + str + " failed. " + e10.getMessage());
            return null;
        }
    }

    public void restoreParcelableFrameUnit(FrameUnit frameUnit) {
        for (FrameUnit frameUnit2 : this.mFrameUnitList) {
            if (frameUnit2.getUUID().equals(frameUnit.getUUID())) {
                AILog.d(TAG, "restoreParcelableFrameUnit: tag = " + frameUnit2.getTag());
                frameUnit2.restoreFrameUnit(frameUnit);
                return;
            }
        }
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.mParamPackage.setParam(ParamsKt.PARAM_KEY_ERROR_CODE, Integer.valueOf(errorCode.value()));
    }

    public void setErrorMessage(String str) {
        this.mParamPackage.setParam(ParamsKt.PARAM_KEY_ERROR_MESSAGE, str);
    }

    public void setFrameUnit(int i10, FrameUnit frameUnit) {
        if (i10 == this.mFrameUnitList.size()) {
            this.mFrameUnitList.add(frameUnit);
        } else {
            if (i10 >= this.mFrameUnitList.size() || i10 < 0) {
                return;
            }
            this.mFrameUnitList.set(i10, frameUnit);
        }
    }

    public void setIntErrorCode(int i10) {
        this.mParamPackage.setParam(ParamsKt.PARAM_KEY_ERROR_CODE, Integer.valueOf(i10));
    }

    public void setJsonResultParam(String str) {
        this.mParamPackage.setParamStr("package::json_result", str);
    }

    public <E> void setParam(String str, E e10) {
        this.mParamPackage.setParam(str, e10);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.mFrameUnitList);
        parcel.writeMap(this.mParamPackage.getParamMap());
        parcel.writeMap(this.mBigDataMap);
        parcel.writeBundle(this.mParamPackage.getParamExtra());
    }

    private ShareMemoryHolder moveBigDataToShareMemory(String str, ShareMemoryHolder shareMemoryHolder) {
        String paramStr = this.mParamPackage.getParamStr(str);
        if (paramStr == null) {
            AILog.d(TAG, "moveBigStringToShareMemory skip due to null");
            return null;
        }
        Charset charset = kotlin.text.d.f13110a;
        int length = paramStr.getBytes(charset).length;
        if (length < DATA_SIZE_THRESHOLD.longValue()) {
            AILog.d(TAG, "moveBigStringToShareMemory " + str + " skip due to size " + length);
            return null;
        }
        this.mParamPackage.removeParamStr(str);
        if (shareMemoryHolder != null) {
            shareMemoryHolder.close();
        }
        ShareMemoryHolder shareMemoryHolderCreateBigDataShareMemory = ShareMemoryHolder.createBigDataShareMemory(paramStr.getBytes(charset).length);
        if (shareMemoryHolderCreateBigDataShareMemory == null) {
            AILog.e(TAG, "moveBigStringToShareMemory create failed");
            return null;
        }
        SharedMemory sharedMemory = shareMemoryHolderCreateBigDataShareMemory.getSharedMemory();
        if (sharedMemory == null) {
            AILog.e(TAG, "moveBigStringToShareMemory share memory allocate failed");
            return null;
        }
        try {
            ByteBuffer byteBufferMapReadWrite = sharedMemory.mapReadWrite();
            byteBufferMapReadWrite.put(paramStr.getBytes(charset));
            AILog.d(TAG, "move " + str + " to share memory with " + length);
            SharedMemory.unmap(byteBufferMapReadWrite);
            return shareMemoryHolderCreateBigDataShareMemory;
        } catch (ErrnoException | IllegalArgumentException e10) {
            AILog.e(TAG, "moveBigStringToShareMemory", e10);
            return null;
        }
    }

    public FramePackage(String str) {
        this.mFrameUnitList = new ArrayList();
        ParamPackage paramPackage = new ParamPackage();
        this.mParamPackage = paramPackage;
        this.mBigDataMap = new HashMap();
        paramPackage.setParam(ParamsKt.PARAM_KEY_CONFIG_UUID, str);
    }

    public FramePackage(Parcel parcel) {
        this.mFrameUnitList = new ArrayList();
        this.mParamPackage = new ParamPackage();
        this.mBigDataMap = new HashMap();
        readFromParcel(parcel);
    }
}

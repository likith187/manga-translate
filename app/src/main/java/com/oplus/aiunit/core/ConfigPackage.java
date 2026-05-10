package com.oplus.aiunit.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SharedMemory;
import com.oplus.aiunit.core.base.SdkParamCompat;
import com.oplus.aiunit.core.utils.AILog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class ConfigPackage implements Parcelable {
    private static final String CONFIG_UUID_PARAM = "package::config_uuid";
    public static final Parcelable.Creator<ConfigPackage> CREATOR = new Parcelable.Creator<ConfigPackage>() { // from class: com.oplus.aiunit.core.ConfigPackage.1
        @Override // android.os.Parcelable.Creator
        public ConfigPackage createFromParcel(Parcel parcel) {
            return new ConfigPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ConfigPackage[] newArray(int i10) {
            return new ConfigPackage[i10];
        }
    };
    private static final String DETECTOR_USAGE_PARAM = "package::detector_usage";
    public static final int FRAME_SIZE_0 = 0;
    public static final int FRAME_SIZE_1 = 512;
    public static final int FRAME_SIZE_2 = 1024;
    public static final int FRAME_SIZE_3 = 2048;
    public static final int FRAME_SIZE_4 = 3072;
    public static final int FRAME_SIZE_5 = 4096;
    public static final int FRAME_SIZE_6 = 8192;
    private static final String TAG = "ConfigPackage";
    private final List<ShareMemoryHolder> mMemoryHolderList;
    private final ParamPackage mParamPackage;

    /* JADX INFO: renamed from: com.oplus.aiunit.core.ConfigPackage$1 */
    public class AnonymousClass1 implements Parcelable.Creator<ConfigPackage> {
        @Override // android.os.Parcelable.Creator
        public ConfigPackage createFromParcel(Parcel parcel) {
            return new ConfigPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ConfigPackage[] newArray(int i10) {
            return new ConfigPackage[i10];
        }
    }

    public ConfigPackage(Parcel parcel) {
        this.mMemoryHolderList = new ArrayList();
        this.mParamPackage = new ParamPackage();
        readFromParcel(parcel);
    }

    public void allocateShareMemoryByFlagList(int[] iArr) {
        AILog.d(TAG, "allocate share memory size list " + Arrays.toString(iArr));
        for (int i10 : iArr) {
            ShareMemoryHolder shareMemoryHolderCreate = ShareMemoryHolder.create(i10);
            if (shareMemoryHolderCreate != null) {
                this.mMemoryHolderList.add(shareMemoryHolderCreate);
            } else {
                AILog.d(TAG, "invalid flag while allocating share memory " + i10);
            }
        }
    }

    public synchronized ShareMemoryHolder applyShareMemoryHolder(int i10) {
        AILog.d(TAG, "apply share memory holder size is " + i10);
        for (ShareMemoryHolder shareMemoryHolder : this.mMemoryHolderList) {
            int size = shareMemoryHolder.getSharedMemory().getSize();
            int useFlag = shareMemoryHolder.getUseFlag();
            AILog.d(TAG, "applyShareMemoryHolder: " + size + ", " + useFlag);
            if (size >= i10 && useFlag == 0) {
                shareMemoryHolder.setUseFlag(1);
                return shareMemoryHolder;
            }
        }
        AILog.w(TAG, "no share memory holder found.");
        return null;
    }

    public synchronized void cleanSharedMemoryHolder() {
        try {
            AILog.d(TAG, "cleanSharedMemoryHolder");
            for (ShareMemoryHolder shareMemoryHolder : this.mMemoryHolderList) {
                shareMemoryHolder.setUseFlag(2);
                shareMemoryHolder.getSharedMemory().close();
            }
            this.mMemoryHolderList.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public synchronized ShareMemoryHolder electShareMemoryHolder(String str) {
        for (ShareMemoryHolder shareMemoryHolder : this.mMemoryHolderList) {
            if (shareMemoryHolder.getUUID().equals(str)) {
                return shareMemoryHolder;
            }
        }
        return null;
    }

    public synchronized void freeAllShareMemoryHolder() {
        AILog.d(TAG, "freeAllShareMemoryHolder");
        Iterator<ShareMemoryHolder> it = this.mMemoryHolderList.iterator();
        while (it.hasNext()) {
            it.next().setUseFlag(0);
        }
    }

    public synchronized void freeShareMemoryHolder(String str) {
        AILog.d(TAG, "freeShareMemoryHolder");
        for (ShareMemoryHolder shareMemoryHolder : this.mMemoryHolderList) {
            if (shareMemoryHolder.getUUID().equals(str)) {
                shareMemoryHolder.setUseFlag(0);
                return;
            }
        }
    }

    public int getDetectorType() {
        return this.mParamPackage.getParamInt("package::detector_type");
    }

    public String getDetectorUsage() {
        return this.mParamPackage.getParamStr(DETECTOR_USAGE_PARAM);
    }

    public ParamPackage getParamPackage() {
        return this.mParamPackage;
    }

    public SharedMemory getShareMemoryHolder(String str) {
        if (str == null) {
            AILog.e(TAG, "share memory uuid is null");
            return null;
        }
        for (ShareMemoryHolder shareMemoryHolder : this.mMemoryHolderList) {
            if (str.equals(shareMemoryHolder.getUUID())) {
                return shareMemoryHolder.getSharedMemory();
            }
        }
        AILog.w(TAG, "can't find any share memory holder while getting");
        return null;
    }

    public List<ShareMemoryHolder> getShareMemoryHolderList() {
        return this.mMemoryHolderList;
    }

    public String getUuid() {
        return this.mParamPackage.getParamStr("package::config_uuid");
    }

    public void readFromParcel(Parcel parcel) {
        parcel.readTypedList(this.mMemoryHolderList, ShareMemoryHolder.CREATOR);
        parcel.readMap(this.mParamPackage.getParamMap(), null);
        SdkParamCompat.compat(this.mParamPackage.getParamMap());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.mMemoryHolderList);
        parcel.writeMap(this.mParamPackage.getParamMap());
    }

    public ConfigPackage() {
        this.mMemoryHolderList = new ArrayList();
        ParamPackage paramPackage = new ParamPackage();
        this.mParamPackage = paramPackage;
        paramPackage.setParam("package::config_uuid", UUID.randomUUID().toString());
    }
}

package com.oplus.aiunit.core;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SharedMemory;
import android.system.ErrnoException;
import androidx.annotation.Keep;
import com.oplus.aiunit.core.utils.AILog;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class ShareMemoryHolder implements Parcelable {
    public static final int SHM_HOLDER_FLAG_CLOSED = 2;
    public static final int SHM_HOLDER_FLAG_OCCUPY = 1;
    public static final int SHM_HOLDER_FLAG_VACANT = 0;
    private static final String TAG = "ShareMemoryHolder";
    private SharedMemory sharedMemory;
    private String strUUID;
    private int useFlag;
    private static int[] FRAME_SIZE_ARRAY = {ConfigPackage.FRAME_SIZE_1, 1024, ConfigPackage.FRAME_SIZE_3, ConfigPackage.FRAME_SIZE_4, ConfigPackage.FRAME_SIZE_5, ConfigPackage.FRAME_SIZE_6};
    public static final Parcelable.Creator<ShareMemoryHolder> CREATOR = new Parcelable.Creator<ShareMemoryHolder>() { // from class: com.oplus.aiunit.core.ShareMemoryHolder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMemoryHolder createFromParcel(Parcel parcel) {
            return new ShareMemoryHolder(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareMemoryHolder[] newArray(int i10) {
            return new ShareMemoryHolder[i10];
        }
    };

    private ShareMemoryHolder() {
        this.useFlag = 1;
    }

    public static ShareMemoryHolder create(int i10) {
        if (i10 != 512 && i10 != 1024 && i10 != 2048 && i10 != 3072 && i10 != 4096 && i10 != 8192) {
            return null;
        }
        try {
            ShareMemoryHolder shareMemoryHolder = new ShareMemoryHolder();
            String string = UUID.randomUUID().toString();
            shareMemoryHolder.sharedMemory = SharedMemory.create(string, i10 * i10 * 4);
            shareMemoryHolder.useFlag = 0;
            shareMemoryHolder.strUUID = string;
            return shareMemoryHolder;
        } catch (ErrnoException unused) {
            AILog.e(TAG, "create SharedMemory failed. frameFlag: " + i10);
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    public static ShareMemoryHolder createBigDataShareMemory(int i10) {
        try {
            String string = UUID.randomUUID().toString();
            ShareMemoryHolder shareMemoryHolder = new ShareMemoryHolder();
            shareMemoryHolder.sharedMemory = SharedMemory.create(string, i10);
            shareMemoryHolder.useFlag = 0;
            shareMemoryHolder.strUUID = string;
            AILog.i(TAG, "createBigDataShareMemory " + i10);
            return shareMemoryHolder;
        } catch (Throwable th) {
            AILog.e(TAG, "createBigDataShareMemory " + i10 + " err. " + th.getMessage());
            return null;
        }
    }

    public void close() {
        AILog.d(TAG, "close share memory");
        SharedMemory sharedMemory = this.sharedMemory;
        if (sharedMemory != null) {
            sharedMemory.close();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SharedMemory getSharedMemory() {
        return this.sharedMemory;
    }

    public String getUUID() {
        return this.strUUID;
    }

    public int getUseFlag() {
        return this.useFlag;
    }

    public void readFromParcel(Parcel parcel) {
        this.useFlag = parcel.readInt();
        this.strUUID = parcel.readString();
        if (this.useFlag != 2) {
            this.sharedMemory = (SharedMemory) parcel.readParcelable(SharedMemory.class.getClassLoader());
        } else {
            this.sharedMemory = null;
        }
    }

    public void setUseFlag(int i10) {
        AILog.d(TAG, "set flag " + i10);
        this.useFlag = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.useFlag);
        parcel.writeString(this.strUUID);
        if (this.useFlag != 2) {
            parcel.writeParcelable(this.sharedMemory, i10);
        }
    }

    public ShareMemoryHolder(Parcel parcel) {
        readFromParcel(parcel);
    }
}

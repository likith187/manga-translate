package com.oplus.epona;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
class ExceptionInfo implements Parcelable {
    public static final Parcelable.Creator<ExceptionInfo> CREATOR = new a();
    private String mMessage;
    private String mName;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExceptionInfo createFromParcel(Parcel parcel) {
            return new ExceptionInfo(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ExceptionInfo[] newArray(int i10) {
            return new ExceptionInfo[i10];
        }
    }

    /* synthetic */ ExceptionInfo(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getMessage() {
        return this.mMessage;
    }

    public String getName() {
        return this.mName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.mName);
        parcel.writeString(this.mMessage);
    }

    ExceptionInfo(Throwable th) {
        this.mName = th.getClass().getName();
        this.mMessage = th.getMessage();
    }

    private ExceptionInfo(Parcel parcel) {
        this.mName = parcel.readString();
        this.mMessage = parcel.readString();
    }
}

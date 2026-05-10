package com.oplus.tingle.ipc;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class BinderExt implements Parcelable {
    public static final Parcelable.Creator<BinderExt> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f11206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f11207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f11208c;

    static class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BinderExt createFromParcel(Parcel parcel) {
            return new BinderExt(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BinderExt[] newArray(int i10) {
            return new BinderExt[i10];
        }
    }

    public BinderExt(Parcel parcel) {
        this.f11206a = parcel.readStrongBinder();
        this.f11207b = parcel.readString();
        this.f11208c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStrongBinder(this.f11206a);
        parcel.writeString(this.f11207b);
        parcel.writeInt(this.f11208c);
    }
}

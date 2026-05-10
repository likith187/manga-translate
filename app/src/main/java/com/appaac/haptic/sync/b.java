package com.appaac.haptic.sync;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4716c;

    public b(Parcel parcel) {
        this.f4714a = parcel.readString();
        this.f4715b = parcel.readInt();
        this.f4716c = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "loop='" + this.f4715b + "',interval='" + this.f4716c + "'," + this.f4714a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f4714a);
        parcel.writeInt(this.f4715b);
        parcel.writeInt(this.f4716c);
    }
}

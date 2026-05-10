package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class m extends com.google.android.gms.internal.common.a implements IInterface {
    m(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int e() {
        Parcel parcelA = a(6, d());
        int i10 = parcelA.readInt();
        parcelA.recycle();
        return i10;
    }

    public final int f(IObjectWrapper iObjectWrapper, String str, boolean z10) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.e(parcelD, iObjectWrapper);
        parcelD.writeString(str);
        parcelD.writeInt(z10 ? 1 : 0);
        Parcel parcelA = a(3, parcelD);
        int i10 = parcelA.readInt();
        parcelA.recycle();
        return i10;
    }

    public final int g(IObjectWrapper iObjectWrapper, String str, boolean z10) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.e(parcelD, iObjectWrapper);
        parcelD.writeString(str);
        parcelD.writeInt(z10 ? 1 : 0);
        Parcel parcelA = a(5, parcelD);
        int i10 = parcelA.readInt();
        parcelA.recycle();
        return i10;
    }

    public final IObjectWrapper h(IObjectWrapper iObjectWrapper, String str, boolean z10, long j10) {
        Parcel parcelD = d();
        com.google.android.gms.internal.common.c.e(parcelD, iObjectWrapper);
        parcelD.writeString(str);
        parcelD.writeInt(z10 ? 1 : 0);
        parcelD.writeLong(j10);
        Parcel parcelA = a(7, parcelD);
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelA.readStrongBinder());
        parcelA.recycle();
        return iObjectWrapperAsInterface;
    }
}

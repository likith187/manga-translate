package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f8074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8075b;

    protected a(IBinder iBinder, String str) {
        this.f8074a = iBinder;
        this.f8075b = str;
    }

    protected final Parcel a(int i10, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f8074a.transact(i10, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8074a;
    }

    protected final void b(int i10, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f8074a.transact(1, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    protected final void c(int i10, Parcel parcel) {
        try {
            this.f8074a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    protected final Parcel d() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f8075b);
        return parcelObtain;
    }
}

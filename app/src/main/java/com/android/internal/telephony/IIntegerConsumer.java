package com.android.internal.telephony;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IIntegerConsumer extends IInterface {
    public static final String DESCRIPTOR = "com.android.internal.telephony.IIntegerConsumer";

    public static abstract class Stub extends Binder implements IIntegerConsumer {

        private static class a implements IIntegerConsumer {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static IIntegerConsumer f4710b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4711a;

            a(IBinder iBinder) {
                this.f4711a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4711a;
            }
        }

        public Stub() {
            attachInterface(this, IIntegerConsumer.DESCRIPTOR);
        }

        public static IIntegerConsumer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IIntegerConsumer.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIntegerConsumer)) ? new a(iBinder) : (IIntegerConsumer) iInterfaceQueryLocalInterface;
        }

        public static IIntegerConsumer getDefaultImpl() {
            return a.f4710b;
        }

        public static boolean setDefaultImpl(IIntegerConsumer iIntegerConsumer) {
            if (a.f4710b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iIntegerConsumer == null) {
                return false;
            }
            a.f4710b = iIntegerConsumer;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(IIntegerConsumer.DESCRIPTOR);
            return true;
        }
    }
}

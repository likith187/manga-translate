package com.oplus.tingle.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.system.Os;
import com.heytap.tingle.ipc.IMaster;

/* JADX INFO: loaded from: classes2.dex */
public class c extends IMaster.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f11213a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f11214b;

    private c() {
    }

    static c a() {
        if (f11214b == null) {
            synchronized (f11213a) {
                try {
                    if (f11214b == null) {
                        f11214b = new c();
                    }
                } finally {
                }
            }
        }
        return f11214b;
    }

    private void b(Parcel parcel, Parcel parcel2, int i10) {
        IBinder strongBinder = parcel.readStrongBinder();
        int i11 = parcel.readInt();
        parcel.readStringArray();
        if (g7.c.a().d() && !g7.c.a().e(strongBinder.getInterfaceDescriptor(), i11)) {
            throw new SecurityException("Tingle Authentication Failed.");
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.appendFrom(parcel, parcel.dataPosition(), parcel.dataAvail());
            try {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                strongBinder.transact(i11, parcelObtain, parcel2, i10);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            } finally {
                parcelObtain.recycle();
            }
        } catch (Throwable th) {
            b8.a.c("Master", "appendFrom failed: " + th.toString(), new Object[0]);
        }
    }

    @Override // com.heytap.tingle.ipc.IMaster
    public int getUid() {
        return Os.getuid();
    }

    @Override // com.heytap.tingle.ipc.IMaster.Stub, android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        parcel.enforceInterface(t7.a.c());
        b(parcel, parcel2, i11);
        return true;
    }
}

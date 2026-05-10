package com.oplus.tingle.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.system.Os;
import com.oplus.tingle.ipc.IMaster;

/* JADX INFO: loaded from: classes2.dex */
public class b extends IMaster.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f11211a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f11212b;

    private b() {
    }

    static b a() {
        if (f11212b == null) {
            synchronized (f11211a) {
                try {
                    if (f11212b == null) {
                        f11212b = new b();
                    }
                } finally {
                }
            }
        }
        return f11212b;
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

    @Override // com.oplus.tingle.ipc.IMaster
    public int getUid() {
        return Os.getuid();
    }

    @Override // com.oplus.tingle.ipc.IMaster.Stub, android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        parcel.enforceInterface(t7.a.c());
        b(parcel, parcel2, i11);
        return true;
    }
}

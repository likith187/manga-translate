package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.e;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f3527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f3528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final androidx.room.e f3530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final e.c f3531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    IMultiInstanceInvalidationService f3532f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Executor f3533g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final IMultiInstanceInvalidationCallback f3534h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final AtomicBoolean f3535i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final ServiceConnection f3536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Runnable f3537k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final Runnable f3538l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f3539m;

    class a extends IMultiInstanceInvalidationCallback.Stub {

        /* JADX INFO: renamed from: androidx.room.f$a$a, reason: collision with other inner class name */
        class RunnableC0041a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String[] f3541a;

            RunnableC0041a(String[] strArr) {
                this.f3541a = strArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                f.this.f3530d.e(this.f3541a);
            }
        }

        a() {
        }

        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public void onInvalidation(String[] strArr) {
            f.this.f3533g.execute(new RunnableC0041a(strArr));
        }
    }

    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            f.this.f3532f = IMultiInstanceInvalidationService.Stub.asInterface(iBinder);
            f fVar = f.this;
            fVar.f3533g.execute(fVar.f3537k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            f fVar = f.this;
            fVar.f3533g.execute(fVar.f3538l);
            f.this.f3532f = null;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f fVar = f.this;
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = fVar.f3532f;
                if (iMultiInstanceInvalidationService != null) {
                    fVar.f3529c = iMultiInstanceInvalidationService.registerCallback(fVar.f3534h, fVar.f3528b);
                    f fVar2 = f.this;
                    fVar2.f3530d.a(fVar2.f3531e);
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e10);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            fVar.f3530d.g(fVar.f3531e);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            fVar.f3530d.g(fVar.f3531e);
            try {
                f fVar2 = f.this;
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = fVar2.f3532f;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(fVar2.f3534h, fVar2.f3529c);
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e10);
            }
            f fVar3 = f.this;
            fVar3.f3527a.unbindService(fVar3.f3536j);
        }
    }

    /* JADX INFO: renamed from: androidx.room.f$f, reason: collision with other inner class name */
    class C0042f extends e.c {
        C0042f(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.e.c
        boolean a() {
            return true;
        }

        @Override // androidx.room.e.c
        public void b(Set set) {
            if (f.this.f3535i.get()) {
                return;
            }
            try {
                f fVar = f.this;
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = fVar.f3532f;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.broadcastInvalidation(fVar.f3529c, (String[]) set.toArray(new String[0]));
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot broadcast invalidation", e10);
            }
        }
    }

    f(Context context, String str, androidx.room.e eVar, Executor executor) {
        b bVar = new b();
        this.f3536j = bVar;
        this.f3537k = new c();
        this.f3538l = new d();
        this.f3539m = new e();
        Context applicationContext = context.getApplicationContext();
        this.f3527a = applicationContext;
        this.f3528b = str;
        this.f3530d = eVar;
        this.f3533g = executor;
        this.f3531e = new C0042f((String[]) eVar.f3504a.keySet().toArray(new String[0]));
        applicationContext.bindService(new Intent(applicationContext, (Class<?>) MultiInstanceInvalidationService.class), bVar, 1);
    }
}

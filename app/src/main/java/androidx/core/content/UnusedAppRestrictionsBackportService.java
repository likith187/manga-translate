package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback;
import androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService;
import r.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnusedAppRestrictionsBackportService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IUnusedAppRestrictionsBackportService.Stub f1995a = new a();

    class a extends IUnusedAppRestrictionsBackportService.Stub {
        a() {
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public void isPermissionRevocationEnabledForApp(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
            if (iUnusedAppRestrictionsBackportCallback == null) {
                return;
            }
            UnusedAppRestrictionsBackportService.this.a(new f(iUnusedAppRestrictionsBackportCallback));
        }
    }

    protected abstract void a(f fVar);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1995a;
    }
}

package s6;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import com.oplus.epona.Call$Callback;
import com.oplus.epona.Response;
import com.oplus.epona.f;

/* JADX INFO: loaded from: classes2.dex */
public class e implements f {
    private Uri b(String str) {
        return Uri.parse("content://" + str + ".oplus.epona");
    }

    private boolean c(String str) {
        return com.oplus.epona.d.m().a(str) != null;
    }

    @Override // com.oplus.epona.f
    public void a(f.a aVar) {
        String componentName = aVar.a().getComponentName();
        if (c(componentName)) {
            aVar.b();
            return;
        }
        Call$Callback call$CallbackCallback = aVar.callback();
        ApplicationInfo applicationInfoA = new u6.b().a(componentName);
        if (applicationInfoA == null) {
            c8.a.c("Epona->LaunchComponentInterceptor", "find component:%s failed", componentName);
            call$CallbackCallback.onReceive(Response.a());
        } else if (d(b(applicationInfoA.packageName), componentName)) {
            aVar.b();
        } else {
            c8.a.c("Epona->LaunchComponentInterceptor", "launch component:%s failed", componentName);
            call$CallbackCallback.onReceive(Response.a());
        }
    }

    public boolean d(Uri uri, String str) {
        Context contextG = com.oplus.epona.d.g();
        if (contextG == null) {
            return false;
        }
        try {
            Bundle bundleCall = contextG.getContentResolver().call(uri, "launchComponent", (String) null, (Bundle) null);
            boolean z10 = bundleCall.getBoolean("KEY_LAUNCH_SUCCESS");
            IBinder binder = bundleCall.getBinder("KEY_REMOTE_TRANSFER");
            if (z10 && binder != null) {
                u6.d.c().e(str, binder);
            }
            return z10;
        } catch (Exception unused) {
            return false;
        }
    }
}

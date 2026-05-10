package k5;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import com.heytap.epona.Response;
import com.heytap.epona.d;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.heytap.epona.d {
    private Uri b(String str) {
        return Uri.parse("content://" + str + ".epona");
    }

    private boolean c(String str) {
        return n5.c.f().e(str) != null;
    }

    private boolean d(Uri uri) {
        Context contextF = com.heytap.epona.c.f();
        if (contextF == null) {
            return false;
        }
        try {
            return contextF.getContentResolver().call(uri, "launchComponent", (String) null, (Bundle) null).getBoolean("KEY_LAUNCH_SUCCESS");
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.heytap.epona.d
    public void a(d.a aVar) {
        String strB = aVar.a().b();
        if (c(strB)) {
            q5.a.b("LaunchComponentInterceptor", "RemoteTransfer with componentName = %s found. Proceed", strB);
            aVar.b();
            return;
        }
        com.heytap.epona.a aVarCallback = aVar.callback();
        ApplicationInfo applicationInfoA = new l5.b().a(strB);
        if (applicationInfoA == null) {
            q5.a.b("LaunchComponentInterceptor", "find component:%s failed", strB);
            aVarCallback.onReceive(Response.b());
        } else if (d(b(applicationInfoA.packageName))) {
            aVar.b();
        } else {
            q5.a.b("LaunchComponentInterceptor", "launch component:%s failed", strB);
            aVarCallback.onReceive(Response.b());
        }
    }
}

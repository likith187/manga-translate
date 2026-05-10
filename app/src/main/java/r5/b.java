package r5;

import android.app.Application;
import android.content.Context;
import android.os.Binder;
import android.text.TextUtils;
import java.util.Arrays;
import w5.c;
import w5.d;
import w5.e;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: d */
    private static b f15440d;

    /* JADX INFO: renamed from: a */
    private volatile boolean f15441a = false;

    /* JADX INFO: renamed from: b */
    private Context f15442b;

    /* JADX INFO: renamed from: c */
    private s5.a f15443c;

    private b() {
    }

    public static b a() {
        if (f15440d == null) {
            synchronized (b.class) {
                try {
                    if (f15440d == null) {
                        f15440d = new b();
                    }
                } finally {
                }
            }
        }
        return f15440d;
    }

    public synchronized void b(Context context) {
        if (this.f15441a) {
            return;
        }
        this.f15441a = true;
        this.f15442b = context instanceof Application ? context : context.getApplicationContext();
        this.f15443c = new s5.a(context);
        v5.a.a();
        Context context2 = this.f15442b;
        if (context2 != null && TextUtils.equals(context2.getPackageName(), "com.heytap.appplatform")) {
            d.e(this.f15442b);
            c.e().f(this.f15442b);
        }
    }

    public boolean c() {
        return !c.e().g();
    }

    public boolean d(String str, String str2, String str3) {
        if (Binder.getCallingUid() == 1000) {
            return true;
        }
        String strC = e.c(this.f15442b, Binder.getCallingUid(), Binder.getCallingPid());
        if (TextUtils.isEmpty(str)) {
            d.c("Epona Authentication Failed Cause Component Empty : " + strC);
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            d.c("Epona Authentication Failed Cause ActionName Empty : " + strC);
            return false;
        }
        if (TextUtils.isEmpty(str3)) {
            d.c("Epona Authentication Failed Cause Register Package Empty : " + strC);
            return false;
        }
        d.b("Start epona verify Component : [" + str + "] action : [" + str2 + "] register pacage : [" + str3 + "] caller pacakge : [" + strC + "]");
        if (this.f15443c.b("728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9")) {
            d.b("Epona verity SUCCESS cause local version, Caller Package [" + strC + "]");
            return true;
        }
        if (TextUtils.isEmpty(strC)) {
            d.c("Get caller package is null");
            String[] packagesForUid = this.f15442b.getPackageManager().getPackagesForUid(Binder.getCallingUid());
            if (packagesForUid == null || packagesForUid.length <= 0) {
                d.c("Get packages Error : Calling pid [" + Binder.getCallingPid() + "] Calling uid [" + Binder.getCallingUid() + "]");
                return false;
            }
            d.c("Get UID [" + Binder.getCallingUid() + "] PID [" + Binder.getCallingPid() + "] Packages [" + Arrays.toString(packagesForUid) + "]");
            strC = packagesForUid[0];
        }
        String strE = w5.b.e(this.f15442b, strC);
        if (this.f15443c.b(strE)) {
            d.b("Epona verity SUCCESS Caller Package [" + strC + "] is platform signature");
            return true;
        }
        if (!TextUtils.equals("com.heytap.appplatform", str3)) {
            boolean zEquals = TextUtils.equals(w5.b.d(this.f15442b, str3), w5.b.d(this.f15442b, strC));
            StringBuilder sb = new StringBuilder();
            sb.append("Epona verity ");
            sb.append(zEquals ? "SUCCESS" : "FAILED");
            sb.append(" Caller : [");
            sb.append(strC);
            sb.append("] Component : [");
            sb.append(str);
            sb.append("] ActionName : [");
            sb.append(str2);
            sb.append("]");
            d.b(sb.toString());
            return zEquals;
        }
        if (TextUtils.equals("com.heytap.appplatform", strC)) {
            return true;
        }
        if (this.f15443c.a(strC, strE)) {
            boolean zD = this.f15443c.d(strC, str, str2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Epona verity ");
            sb2.append(zD ? "SUCCESS" : "FAILED");
            sb2.append(" Caller : [");
            sb2.append(strC);
            sb2.append("] Component : [");
            sb2.append(str);
            sb2.append("] ActionName : [");
            sb2.append(str2);
            sb2.append("]");
            d.b(sb2.toString());
            return zD;
        }
        u5.a aVarC = s5.c.c(this.f15442b, strC);
        int iB = aVarC.b();
        if (iB != 1001) {
            d.c("Epona Authentication Failed " + s5.d.a(iB) + " Package : " + strC);
            return false;
        }
        this.f15443c.c(strC, aVarC, strE);
        boolean zD2 = this.f15443c.d(strC, str, str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Epona verity ");
        sb3.append(zD2 ? "SUCCESS" : "FAILED");
        sb3.append(" Caller : [");
        sb3.append(strC);
        sb3.append("] Component : [");
        sb3.append(str);
        sb3.append("] ActionName : [");
        sb3.append(str2);
        sb3.append("]");
        d.b(sb3.toString());
        return zD2;
    }
}

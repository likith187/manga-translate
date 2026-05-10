package l7;

import android.content.Context;
import android.os.Binder;
import android.text.TextUtils;
import k7.d;
import k7.e;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h7.a f13632b;

    public c(Context context) {
        this.f13631a = context;
        this.f13632b = new h7.a(context);
    }

    private boolean a(i7.a aVar, String str) {
        int iC = aVar.c();
        if (iC == 1001) {
            return false;
        }
        e(iC, str);
        return true;
    }

    private boolean b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            d.c("Tingle Authentication Failed Cause Caller Package Empty");
            return true;
        }
        if (!TextUtils.isEmpty(str2)) {
            return false;
        }
        d.c("Tingle Authentication Failed Cause Descriptor Empty : " + str);
        return true;
    }

    private boolean c(String str) {
        return this.f13632b.d(str);
    }

    private boolean d() {
        return Binder.getCallingUid() == 1000;
    }

    private void e(int i10, String str) {
        d.c("Tingle Authentication Failed " + h7.c.a(i10) + " Package : " + str);
    }

    private void f(boolean z10, String str, String str2, int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append("Tingle verity ");
        sb.append(z10 ? "SUCCESS" : "FAILED");
        sb.append(" Caller : [");
        sb.append(str);
        sb.append("] Descriptor : [");
        sb.append(str2);
        sb.append("] Method : [");
        sb.append(j7.b.a(str2, i10));
        sb.append("]");
        d.b(sb.toString());
    }

    private boolean g(String str, String str2) {
        if (!j7.b.c(str2)) {
            return false;
        }
        d.b("Tingle verity SUCCESS cause descriptor is [" + str2 + "], Caller Package [" + str + "]");
        return true;
    }

    private boolean i(String str, String str2) {
        i7.a aVarA = this.f13632b.a(str2);
        if (aVarA != null) {
            return aVarA.a("tingle", str);
        }
        return false;
    }

    public boolean h(String str, int i10) {
        if (this.f13632b.c()) {
            return true;
        }
        String strC = e.c(this.f13631a, Binder.getCallingUid(), Binder.getCallingPid());
        String strF = k7.b.f(this.f13631a, strC);
        if (b(strC, str)) {
            return false;
        }
        if (d() || c(strF) || g(strC, str)) {
            return true;
        }
        if (this.f13632b.b(strC, strF)) {
            boolean zI = i(j7.b.a(str, i10), strC);
            f(zI, strC, str, i10);
            return zI;
        }
        i7.a aVarA = h7.b.a(this.f13631a, strC);
        if (a(aVarA, strC)) {
            return false;
        }
        this.f13632b.e(strC, aVarA, strF);
        boolean zI2 = i(j7.b.a(str, i10), strC);
        f(zI2, strC, str, i10);
        return zI2;
    }
}

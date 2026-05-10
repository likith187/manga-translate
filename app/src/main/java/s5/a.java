package s5;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import java.util.Arrays;
import w5.h;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LruCache f15557a = new LruCache(r5.a.f15439b);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f15558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f15559c;

    public a(Context context) {
        this.f15558b = context;
        this.f15559c = w5.b.e(context, "android");
    }

    public boolean a(String str, String str2) {
        u5.a aVarB = c.b(this.f15558b, str, w5.e.b(this.f15558b, str));
        u5.a aVar = (u5.a) this.f15557a.get(str);
        if (aVarB == null || aVar == null || aVar.f() || !TextUtils.equals(str2, aVar.d())) {
            return false;
        }
        return Arrays.equals(aVarB.c(), aVar.c());
    }

    public boolean b(String str) {
        return TextUtils.equals(this.f15559c, str);
    }

    public void c(String str, u5.a aVar, String str2) {
        aVar.e();
        aVar.h();
        aVar.g(str2);
        this.f15557a.put(str, aVar);
    }

    public boolean d(String str, String str2, String str3) {
        u5.a aVar = (u5.a) this.f15557a.get(str);
        if (aVar == null) {
            return false;
        }
        if (h.c(str2, ".").size() > 2) {
            str2 = str2.substring(str2.lastIndexOf(".") + 1);
        }
        boolean z10 = aVar.a("epona", str2) || aVar.a("epona", str3);
        boolean z11 = aVar.a("tingle", str2) || aVar.a("tingle", str3);
        if (!z10 && z11) {
            w5.d.b("Action : [" + str2 + "/" + str3 + "] is re-wrapped form Tingle, Caller : [" + str + "]");
        }
        return z10 || z11;
    }
}

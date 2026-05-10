package h7;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import k7.e;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LruCache f12342a = new LruCache(g7.a.f12111b);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f12343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f12344c;

    public a(Context context) {
        this.f12343b = context;
    }

    public i7.a a(String str) {
        return (i7.a) this.f12342a.get(str);
    }

    public boolean b(String str, String str2) {
        String strB = e.b(this.f12343b, str);
        i7.a aVar = (i7.a) this.f12342a.get(str);
        if (aVar == null || aVar.f() || !TextUtils.equals(str2, aVar.d())) {
            return false;
        }
        return TextUtils.equals(strB, aVar.b());
    }

    public boolean c() {
        if (TextUtils.isEmpty(this.f12344c)) {
            this.f12344c = k7.b.f(this.f12343b, "android");
        }
        return TextUtils.equals(this.f12344c, "72:8E:6B:5E:6D:3F:AA:00:E2:DE:12:CC:46:4D:02:7B:FF:E2:DD:87:32:99:67:F7:20:28:F2:FD:13:C1:22:E9");
    }

    public boolean d(String str) {
        if (TextUtils.isEmpty(this.f12344c)) {
            this.f12344c = k7.b.f(this.f12343b, "android");
        }
        return TextUtils.equals(this.f12344c, str);
    }

    public void e(String str, i7.a aVar, String str2) {
        aVar.e();
        aVar.h();
        aVar.g(str2);
        this.f12342a.put(str, aVar);
    }
}

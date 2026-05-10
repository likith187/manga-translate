package o7;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import java.util.Map;
import java.util.Objects;
import p7.r;
import s7.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayMap f14458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f14459c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14460d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f14461e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f14462f = "";

    public f(Context context) {
        Objects.requireNonNull(context, "TrackEvent: context is null");
        this.f14457a = context;
        this.f14458b = new ArrayMap();
        i(context);
    }

    private void i(Context context) {
        this.f14458b.put("dataType", Integer.valueOf(g()));
        this.f14458b.put("ssoid", s7.a.a(context));
        this.f14458b.put("statSId", r.e().c(context));
        String strC = s7.d.c(context);
        if (TextUtils.isEmpty(strC)) {
            s7.f.f("TrackEvent", new g() { // from class: o7.e
                @Override // s7.g
                public final Object get() {
                    return f.j();
                }
            });
        } else {
            k(strC);
        }
        m7.d dVarE = m7.d.e(strC);
        if (dVarE == null) {
            this.f14458b.put("appVersion", s7.d.f(context));
            this.f14458b.put("appPackage", s7.d.e(context));
            this.f14458b.put("appName", s7.d.d(context));
        } else {
            this.f14458b.put("headerFlag", Integer.valueOf(dVarE.f().c()));
            this.f14458b.put("appVersion", dVarE.f().e());
            this.f14458b.put("appPackage", dVarE.f().d());
            this.f14458b.put("appName", dVarE.f().a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j() {
        return "appId is empty";
    }

    void b(String str, int i10) {
        this.f14458b.put(str, Integer.valueOf(i10));
    }

    protected void c(String str, long j10) {
        this.f14458b.put(str, Long.valueOf(j10));
    }

    protected void d(String str, String str2) {
        this.f14458b.put(str, str2);
    }

    public String e() {
        return this.f14459c;
    }

    public Context f() {
        return this.f14457a;
    }

    public abstract int g();

    public Map h() {
        return new ArrayMap(this.f14458b);
    }

    public void k(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f14459c = str;
        d("appIdStr", str);
        if (TextUtils.isDigitsOnly(this.f14459c)) {
            b("appId", Integer.parseInt(this.f14459c));
        }
    }
}

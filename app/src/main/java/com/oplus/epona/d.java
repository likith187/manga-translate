package com.oplus.epona;

import android.app.Application;
import android.content.Context;
import com.oplus.epona.provider.ProviderInfo;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: n */
    private static d f11188n;

    /* JADX INFO: renamed from: h */
    private Application f11197h;

    /* JADX INFO: renamed from: j */
    private Context f11199j;

    /* JADX INFO: renamed from: k */
    public static final w6.d f11185k = new w6.a();

    /* JADX INFO: renamed from: l */
    private static final e f11186l = new g();

    /* JADX INFO: renamed from: m */
    private static final Object f11187m = new Object();

    /* JADX INFO: renamed from: o */
    private static AtomicBoolean f11189o = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a */
    private Map f11190a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    private final List f11191b = new ArrayList();

    /* JADX INFO: renamed from: c */
    private w6.d f11192c = f11185k;

    /* JADX INFO: renamed from: d */
    private e f11193d = f11186l;

    /* JADX INFO: renamed from: e */
    private f f11194e = new s6.d();

    /* JADX INFO: renamed from: g */
    private h f11196g = new u6.e();

    /* JADX INFO: renamed from: f */
    private k f11195f = new k();

    /* JADX INFO: renamed from: i */
    private u6.a f11198i = new u6.a();

    private d() {
    }

    public static boolean a(b bVar) {
        Map map = j().f11190a;
        if (bVar == null || map.containsKey(bVar.b())) {
            return false;
        }
        map.put(bVar.b(), bVar);
        return true;
    }

    private void b(Context context) {
        this.f11199j = context;
        if (context instanceof Application) {
            this.f11197h = (Application) context;
        } else {
            this.f11197h = (Application) context.getApplicationContext();
        }
        this.f11198i.c(this.f11197h);
    }

    private static void c() {
    }

    public static void d(PrintWriter printWriter) {
        j().f11196g.c(printWriter);
    }

    public static c e(String str) {
        j().f11196g.b(str);
        return null;
    }

    public static ProviderInfo f(String str) {
        return j().f11196g.a(str);
    }

    public static Context g() {
        return j().f11199j;
    }

    public static b h(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return (b) j().f11190a.get(str);
    }

    public static f i() {
        return j().f11194e;
    }

    private static d j() {
        synchronized (f11187m) {
            try {
                if (f11188n == null) {
                    f11188n = new d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f11188n;
    }

    public static List k() {
        return j().f11191b;
    }

    public static e l() {
        return j().f11193d;
    }

    public static w6.d m() {
        return j().f11192c;
    }

    public static void n(Context context) {
        if (f11189o.getAndSet(true)) {
            return;
        }
        j().b(context);
        a(x6.b.e());
        c8.a.g().h(context);
        c();
    }

    public static u6.f o(Request request) {
        return j().f11195f.i(request);
    }

    public static void p(f fVar) {
        j().f11194e = fVar;
    }

    public static void q(e eVar) {
        j().f11193d = eVar;
    }

    public static void r(w6.d dVar) {
        j().f11192c = dVar;
    }
}

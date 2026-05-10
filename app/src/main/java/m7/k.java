package m7;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import r7.f;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {

    /* JADX INFO: renamed from: a */
    private static final Pattern f13884a = Pattern.compile("^[a-zA-Z0-9\\_\\-]{1,64}$");

    /* JADX INFO: renamed from: b */
    private static final n7.g f13885b = new n7.g();

    /* JADX INFO: renamed from: c */
    private static final r7.f f13886c = new f.b(120, 120000).c();

    /* JADX INFO: renamed from: d */
    private static volatile m f13887d;

    public static void f(Context context, String str, b bVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            p7.a.a().b((Application) applicationContext);
        }
        if (TextUtils.isEmpty(str)) {
            s7.f.f("OplusTrack", new s7.g() { // from class: m7.e
                @Override // s7.g
                public final Object get() {
                    return k.g();
                }
            });
        }
        s7.d.i(context, str);
        d.d(str, context, bVar);
        if (bVar != null) {
            s7.f.d(bVar.b() == 1);
        }
        p(context);
    }

    public static /* synthetic */ String g() {
        return "AppCode is empty.";
    }

    public static /* synthetic */ String h(o7.c cVar, int i10) {
        return "onCommon logTag is " + cVar.o() + ",eventID:" + cVar.m() + ",flagSendTo:" + i10;
    }

    public static /* synthetic */ void i(o7.c cVar) {
        n7.e.c(cVar.f(), cVar);
    }

    public static /* synthetic */ void j(o7.c cVar) {
        n7.b.d(cVar.f(), cVar);
    }

    public static /* synthetic */ String k() {
        return "onError...";
    }

    public static boolean l(Context context, String str, String str2, String str3, Map map) {
        o7.c cVar = new o7.c(context);
        cVar.k(str);
        cVar.r(str2);
        cVar.p(str3);
        cVar.q(map);
        return n(cVar, 1);
    }

    public static boolean m(Context context, String str, String str2, Map map) {
        o7.c cVar = new o7.c(context);
        cVar.r(str);
        cVar.p(str2);
        cVar.q(map);
        return n(cVar, 1);
    }

    public static boolean n(final o7.c cVar, final int i10) {
        if (!f13886c.d(cVar.e() + "_" + cVar.o() + "_" + cVar.m())) {
            r7.d.e().j(cVar);
            return false;
        }
        try {
            s7.f.e("OplusTrack", new s7.g() { // from class: m7.f
                @Override // s7.g
                public final Object get() {
                    return k.h(cVar, i10);
                }
            });
            if ((i10 & 1) == 1) {
                r7.h.b(new Runnable() { // from class: m7.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.i(cVar);
                    }
                });
            }
            if ((i10 & 2) == 2) {
                r7.h.b(new Runnable() { // from class: m7.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.j(cVar);
                    }
                });
            }
            return true;
        } catch (Exception e10) {
            s7.f.b("OplusTrack", new i(e10));
            return false;
        }
    }

    public static boolean o(Context context, String str, String str2, String str3, List list, int i10) {
        o7.b bVar = new o7.b(context);
        bVar.k(str);
        bVar.r(str2);
        bVar.p(str3);
        bVar.s(list);
        return n(bVar, i10);
    }

    public static synchronized void p(Context context) {
        try {
            s7.f.a("OplusTrack", new s7.g() { // from class: m7.j
                @Override // s7.g
                public final Object get() {
                    return k.k();
                }
            });
            if (f13887d == null) {
                f13887d = new m(context);
                f13887d.d();
            }
        } catch (Exception e10) {
            s7.f.b("OplusTrack", new i(e10));
        }
    }
}

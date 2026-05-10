package f5;

import android.content.Context;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f11935b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static g f11936c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o4.m f11937a;

    private g() {
    }

    public static g c() {
        g gVar;
        synchronized (f11935b) {
            com.google.android.gms.common.internal.k.k(f11936c != null, "MlKitContext has not been initialized");
            gVar = (g) com.google.android.gms.common.internal.k.g(f11936c);
        }
        return gVar;
    }

    public static g d(Context context) {
        g gVarE;
        synchronized (f11935b) {
            gVarE = e(context, w3.k.f15989a);
        }
        return gVarE;
    }

    public static g e(Context context, Executor executor) {
        g gVar;
        synchronized (f11935b) {
            com.google.android.gms.common.internal.k.k(f11936c == null, "MlKitContext is already initialized");
            g gVar2 = new g();
            f11936c = gVar2;
            Context contextF = f(context);
            o4.m mVarC = o4.m.e(executor).b(o4.f.b(contextF, MlKitComponentDiscoveryService.class).a()).a(o4.c.l(contextF, Context.class, new Class[0])).a(o4.c.l(gVar2, g.class, new Class[0])).c();
            gVar2.f11937a = mVarC;
            mVarC.h(true);
            gVar = f11936c;
        }
        return gVar;
    }

    private static Context f(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    public Object a(Class cls) {
        com.google.android.gms.common.internal.k.k(f11936c == this, "MlKitContext has been deleted");
        com.google.android.gms.common.internal.k.g(this.f11937a);
        return this.f11937a.a(cls);
    }

    public Context b() {
        return (Context) a(Context.class);
    }
}

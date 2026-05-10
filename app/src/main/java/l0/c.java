package l0;

import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import androidx.lifecycle.w0;
import kotlin.jvm.internal.r;
import m0.f;
import m0.h;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a */
    private final w0 f13533a;

    /* JADX INFO: renamed from: b */
    private final u0.c f13534b;

    /* JADX INFO: renamed from: c */
    private final a f13535c;

    /* JADX INFO: renamed from: d */
    private final f f13536d;

    public c(w0 store, u0.c factory, a defaultExtras) {
        r.e(store, "store");
        r.e(factory, "factory");
        r.e(defaultExtras, "defaultExtras");
        this.f13533a = store;
        this.f13534b = factory;
        this.f13535c = defaultExtras;
        this.f13536d = new f();
    }

    public static /* synthetic */ s0 e(c cVar, c9.c cVar2, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = h.INSTANCE.c(cVar2);
        }
        return cVar.d(cVar2, str);
    }

    public final s0 d(c9.c modelClass, String key) {
        s0 s0VarB;
        r.e(modelClass, "modelClass");
        r.e(key, "key");
        synchronized (this.f13536d) {
            try {
                s0VarB = this.f13533a.b(key);
                if (modelClass.b(s0VarB)) {
                    if (this.f13534b instanceof u0.e) {
                        u0.e eVar = (u0.e) this.f13534b;
                        r.b(s0VarB);
                        eVar.d(s0VarB);
                    }
                    r.c(s0VarB, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
                } else {
                    b bVar = new b(this.f13535c);
                    bVar.c(u0.f2836c, key);
                    s0VarB = d.a(this.f13534b, modelClass, bVar);
                    this.f13533a.d(key, s0VarB);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return s0VarB;
    }
}

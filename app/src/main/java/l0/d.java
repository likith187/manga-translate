package l0;

import androidx.lifecycle.s0;
import androidx.lifecycle.u0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final s0 a(u0.c factory, c9.c modelClass, a extras) {
        r.e(factory, "factory");
        r.e(modelClass, "modelClass");
        r.e(extras, "extras");
        try {
            try {
                return factory.b(modelClass, extras);
            } catch (AbstractMethodError unused) {
                return factory.c(v8.a.a(modelClass), extras);
            }
        } catch (AbstractMethodError unused2) {
            return factory.a(v8.a.a(modelClass));
        }
    }
}

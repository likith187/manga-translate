package kotlinx.serialization.json.internal;

import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
public final class ArrayPoolsKt {
    private static final int MAX_CHARS_IN_POOL;

    static {
        Object objM59constructorimpl;
        try {
            r.a aVar = r.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            kotlin.jvm.internal.r.d(property, "getProperty(...)");
            objM59constructorimpl = r.m59constructorimpl(kotlin.text.r.m(property));
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        if (r.m65isFailureimpl(objM59constructorimpl)) {
            objM59constructorimpl = null;
        }
        Integer num = (Integer) objM59constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 2097152;
    }
}

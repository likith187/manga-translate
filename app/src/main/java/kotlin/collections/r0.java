package kotlin.collections;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
abstract class r0 {
    public static final Set a(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        kotlin.jvm.internal.r.d(setSingleton, "singleton(...)");
        return setSingleton;
    }
}

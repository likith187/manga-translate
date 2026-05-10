package kotlinx.coroutines.flow;

import kotlinx.coroutines.internal.g0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a */
    private static final g0 f13234a = new g0("NONE");

    /* JADX INFO: renamed from: b */
    private static final g0 f13235b = new g0("PENDING");

    public static final f a(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.f.f13243a;
        }
        return new h(obj);
    }
}

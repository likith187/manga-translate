package kotlinx.coroutines.internal;

import n8.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final StackTraceElement f13263a = new a.a().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f13264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f13265c;

    static {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(kotlin.coroutines.jvm.internal.a.class.getCanonicalName());
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            objM59constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f13264b = (String) objM59constructorimpl;
        try {
            objM59constructorimpl2 = n8.r.m59constructorimpl(f0.class.getCanonicalName());
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl2) != null) {
            objM59constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f13265c = (String) objM59constructorimpl2;
    }

    public static final Throwable a(Throwable th) {
        return th;
    }
}

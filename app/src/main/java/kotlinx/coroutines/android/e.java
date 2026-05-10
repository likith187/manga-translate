package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f13172a;
    private static volatile Choreographer choreographer;

    static {
        Object objM59constructorimpl;
        try {
            r.a aVar = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(new c(a(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        f13172a = (d) (r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
    }

    public static final Handler a(Looper looper, boolean z10) throws IllegalAccessException, InvocationTargetException {
        if (!z10) {
            return new Handler(looper);
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        kotlin.jvm.internal.r.c(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }
}

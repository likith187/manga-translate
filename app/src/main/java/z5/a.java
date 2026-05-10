package z5;

import com.google.gson.d;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final String a(Object obj) {
        Object objM59constructorimpl;
        if (obj == null) {
            return null;
        }
        try {
            r.a aVar = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(new d().v(obj));
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c.b("GsonUtils", "toJson exception: " + thM62exceptionOrNullimpl);
        }
        return (String) (r.m65isFailureimpl(objM59constructorimpl) ? null : objM59constructorimpl);
    }
}

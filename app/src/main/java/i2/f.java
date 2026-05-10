package i2;

import com.coloros.translate.repository.local.SimultaneousHistory;
import com.coloros.translate.utils.c0;
import java.util.List;
import kotlin.jvm.internal.b0;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static final f INSTANCE = new f();

    private f() {
    }

    public static final boolean a(List siSentence) {
        r.e(siSentence, "siSentence");
        try {
            r.a aVar = n8.r.Companion;
            a.INSTANCE.f().u().a(siSentence);
            c0.f7098a.d("SimultaneousHistoryDbHelper", "insertSentenceData");
            return true;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return false;
            }
            c0.f7098a.e("SimultaneousHistoryDbHelper", "insertSentenceData error " + thM62exceptionOrNullimpl.getMessage());
            return false;
        }
    }

    public static final long b(SimultaneousHistory siHistory) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(siHistory, "siHistory");
        b0 b0Var = new b0();
        try {
            r.a aVar = n8.r.Companion;
            long jF = a.INSTANCE.f().t().f(siHistory);
            c0.f7098a.d("SimultaneousHistoryDbHelper", "insertSiHistory:" + jF);
            b0Var.element = jF;
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SimultaneousHistoryDbHelper", "insertSiHistory error " + thM62exceptionOrNullimpl.getMessage());
        }
        return b0Var.element;
    }
}

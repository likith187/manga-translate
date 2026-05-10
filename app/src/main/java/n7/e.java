package n7;

import android.content.Context;
import p7.n;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e extends c {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String b(Throwable th) {
        return "recordCommon: addTrackEvent exception:" + th;
    }

    public static void c(Context context, o7.c cVar) {
        try {
            n.c().a(context, cVar);
        } catch (Throwable th) {
            s7.f.b("CommonAgent", new s7.g() { // from class: n7.d
                @Override // s7.g
                public final Object get() {
                    return e.b(th);
                }
            });
        }
    }
}

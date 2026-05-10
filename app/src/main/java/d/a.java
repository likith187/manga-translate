package d;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: d.a$a, reason: collision with other inner class name */
    public static final class C0131a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f11452a;

        public C0131a(Object obj) {
            this.f11452a = obj;
        }

        public final Object a() {
            return this.f11452a;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public C0131a b(Context context, Object obj) {
        r.e(context, "context");
        return null;
    }

    public abstract Object c(int i10, Intent intent);
}

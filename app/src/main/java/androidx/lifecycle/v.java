package androidx.lifecycle;

import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {
    public static final void a(s sVar, l.b current, l.b next) {
        kotlin.jvm.internal.r.e(current, "current");
        kotlin.jvm.internal.r.e(next, "next");
        if (current == l.b.INITIALIZED && next == l.b.DESTROYED) {
            throw new IllegalStateException(("State must be at least '" + l.b.CREATED + "' to be moved to '" + next + "' in component " + sVar).toString());
        }
        l.b bVar = l.b.DESTROYED;
        if (current != bVar || current == next) {
            return;
        }
        throw new IllegalStateException(("State is '" + bVar + "' and cannot be moved to `" + next + "` in component " + sVar).toString());
    }
}

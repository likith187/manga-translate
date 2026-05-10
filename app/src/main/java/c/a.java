package c;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f4276a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f4277b;

    public final void a(b listener) {
        r.e(listener, "listener");
        Context context = this.f4277b;
        if (context != null) {
            listener.a(context);
        }
        this.f4276a.add(listener);
    }

    public final void b() {
        this.f4277b = null;
    }

    public final void c(Context context) {
        r.e(context, "context");
        this.f4277b = context;
        Iterator it = this.f4276a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(context);
        }
    }

    public final Context d() {
        return this.f4277b;
    }

    public final void e(b listener) {
        r.e(listener, "listener");
        this.f4276a.remove(listener);
    }
}

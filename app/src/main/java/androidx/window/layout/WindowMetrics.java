package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowMetrics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bounds f4164a;

    public WindowMetrics(Bounds _bounds) {
        r.e(_bounds, "_bounds");
        this.f4164a = _bounds;
    }

    public final Rect a() {
        return this.f4164a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !r.a(WindowMetrics.class, obj.getClass())) {
            return false;
        }
        return r.a(this.f4164a, ((WindowMetrics) obj).f4164a);
    }

    public int hashCode() {
        return this.f4164a.hashCode();
    }

    public String toString() {
        return "WindowMetrics { bounds: " + a() + " }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WindowMetrics(Rect bounds) {
        this(new Bounds(bounds));
        r.e(bounds, "bounds");
    }
}

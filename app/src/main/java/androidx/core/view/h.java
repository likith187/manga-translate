package androidx.core.view;

import android.view.DisplayCutout;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DisplayCutout f2052a;

    static class a {
        static int a(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        static int b(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    private h(DisplayCutout displayCutout) {
        this.f2052a = displayCutout;
    }

    static h e(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new h(displayCutout);
    }

    public int a() {
        return a.a(this.f2052a);
    }

    public int b() {
        return a.b(this.f2052a);
    }

    public int c() {
        return a.c(this.f2052a);
    }

    public int d() {
        return a.d(this.f2052a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        return c0.c.a(this.f2052a, ((h) obj).f2052a);
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.f2052a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f2052a + "}";
    }
}

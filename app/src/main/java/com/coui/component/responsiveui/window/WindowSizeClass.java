package com.coui.component.responsiveui.window;

import com.coui.component.responsiveui.unit.Dp;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowSizeClass {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: a */
    private final WindowWidthSizeClass f7450a;

    /* JADX INFO: renamed from: b */
    private final WindowHeightSizeClass f7451b;

    /* JADX INFO: renamed from: c */
    private final WindowTotalSizeClass f7452c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WindowSizeClass calculateFromSize(Dp width, Dp height) {
            r.e(width, "width");
            r.e(height, "height");
            return new WindowSizeClass(WindowWidthSizeClass.Companion.fromWidth(width), WindowHeightSizeClass.Companion.fromHeight(height), WindowTotalSizeClass.Companion.fromWidthAndHeight(width, height), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ WindowSizeClass(WindowWidthSizeClass windowWidthSizeClass, WindowHeightSizeClass windowHeightSizeClass, WindowTotalSizeClass windowTotalSizeClass, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowWidthSizeClass, windowHeightSizeClass, windowTotalSizeClass);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WindowSizeClass.class != obj.getClass()) {
            return false;
        }
        WindowSizeClass windowSizeClass = (WindowSizeClass) obj;
        return r.a(this.f7450a, windowSizeClass.f7450a) && r.a(this.f7451b, windowSizeClass.f7451b) && r.a(this.f7452c, windowSizeClass.f7452c);
    }

    public final WindowHeightSizeClass getWindowHeightSizeClass() {
        return this.f7451b;
    }

    public final WindowTotalSizeClass getWindowTotalSizeClass() {
        return this.f7452c;
    }

    public final WindowWidthSizeClass getWindowWidthSizeClass() {
        return this.f7450a;
    }

    public int hashCode() {
        return (((this.f7450a.hashCode() * 31) + this.f7451b.hashCode()) * 31) + this.f7452c.hashCode();
    }

    public String toString() {
        return "WindowSizeClass(" + this.f7450a + ", " + this.f7451b + ", " + this.f7452c + ')';
    }

    private WindowSizeClass(WindowWidthSizeClass windowWidthSizeClass, WindowHeightSizeClass windowHeightSizeClass, WindowTotalSizeClass windowTotalSizeClass) {
        this.f7450a = windowWidthSizeClass;
        this.f7451b = windowHeightSizeClass;
        this.f7452c = windowTotalSizeClass;
    }
}

package com.coui.component.responsiveui.status;

import com.coui.component.responsiveui.window.LayoutGridWindowSize;
import com.coui.component.responsiveui.window.WindowSizeClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class WindowStatus implements IWindowStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowSizeClass f7441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutGridWindowSize f7442c;

    public WindowStatus(int i10, WindowSizeClass windowSizeClass, LayoutGridWindowSize layoutGridWindowSize) {
        r.e(windowSizeClass, "windowSizeClass");
        r.e(layoutGridWindowSize, "layoutGridWindowSize");
        this.f7440a = i10;
        this.f7441b = windowSizeClass;
        this.f7442c = layoutGridWindowSize;
    }

    public static /* synthetic */ WindowStatus copy$default(WindowStatus windowStatus, int i10, WindowSizeClass windowSizeClass, LayoutGridWindowSize layoutGridWindowSize, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = windowStatus.f7440a;
        }
        if ((i11 & 2) != 0) {
            windowSizeClass = windowStatus.f7441b;
        }
        if ((i11 & 4) != 0) {
            layoutGridWindowSize = windowStatus.f7442c;
        }
        return windowStatus.copy(i10, windowSizeClass, layoutGridWindowSize);
    }

    public final int component1() {
        return this.f7440a;
    }

    public final WindowSizeClass component2() {
        return this.f7441b;
    }

    public final LayoutGridWindowSize component3() {
        return this.f7442c;
    }

    public final WindowStatus copy(int i10, WindowSizeClass windowSizeClass, LayoutGridWindowSize layoutGridWindowSize) {
        r.e(windowSizeClass, "windowSizeClass");
        r.e(layoutGridWindowSize, "layoutGridWindowSize");
        return new WindowStatus(i10, windowSizeClass, layoutGridWindowSize);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowStatus)) {
            return false;
        }
        WindowStatus windowStatus = (WindowStatus) obj;
        return this.f7440a == windowStatus.f7440a && r.a(this.f7441b, windowStatus.f7441b) && r.a(this.f7442c, windowStatus.f7442c);
    }

    public final LayoutGridWindowSize getLayoutGridWindowSize() {
        return this.f7442c;
    }

    public final int getOrientation() {
        return this.f7440a;
    }

    public final WindowSizeClass getWindowSizeClass() {
        return this.f7441b;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.f7440a) * 31) + this.f7441b.hashCode()) * 31) + this.f7442c.hashCode();
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public LayoutGridWindowSize layoutGridWindowSize() {
        return this.f7442c;
    }

    public final void setLayoutGridWindowSize(LayoutGridWindowSize layoutGridWindowSize) {
        r.e(layoutGridWindowSize, "<set-?>");
        this.f7442c = layoutGridWindowSize;
    }

    public final void setOrientation(int i10) {
        this.f7440a = i10;
    }

    public final void setWindowSizeClass(WindowSizeClass windowSizeClass) {
        r.e(windowSizeClass, "<set-?>");
        this.f7441b = windowSizeClass;
    }

    public String toString() {
        return "WindowStatus { orientation = " + this.f7440a + ", windowSizeClass = " + this.f7441b + ", windowSize = " + this.f7442c + " }";
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public int windowOrientation() {
        return this.f7440a;
    }

    @Override // com.coui.component.responsiveui.status.IWindowStatus
    public WindowSizeClass windowSizeClass() {
        return this.f7441b;
    }

    public /* synthetic */ WindowStatus(int i10, WindowSizeClass windowSizeClass, LayoutGridWindowSize layoutGridWindowSize, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, windowSizeClass, layoutGridWindowSize);
    }
}

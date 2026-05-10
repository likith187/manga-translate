package com.coui.component.responsiveui.window;

import android.content.Context;
import com.coui.component.responsiveui.unit.Dp;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutGridWindowSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7447b;

    public LayoutGridWindowSize(int i10, int i11) {
        this.f7446a = i10;
        this.f7447b = i11;
    }

    public static /* synthetic */ LayoutGridWindowSize copy$default(LayoutGridWindowSize layoutGridWindowSize, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = layoutGridWindowSize.f7446a;
        }
        if ((i12 & 2) != 0) {
            i11 = layoutGridWindowSize.f7447b;
        }
        return layoutGridWindowSize.copy(i10, i11);
    }

    public final int component1() {
        return this.f7446a;
    }

    public final int component2() {
        return this.f7447b;
    }

    public final LayoutGridWindowSize copy(int i10, int i11) {
        return new LayoutGridWindowSize(i10, i11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LayoutGridWindowSize.class == obj.getClass()) {
            LayoutGridWindowSize layoutGridWindowSize = (LayoutGridWindowSize) obj;
            if (this.f7446a == layoutGridWindowSize.f7446a && this.f7447b == layoutGridWindowSize.f7447b) {
                return true;
            }
        }
        return false;
    }

    public final int getHeight() {
        return this.f7447b;
    }

    public final int getWidth() {
        return this.f7446a;
    }

    public int hashCode() {
        return (Integer.hashCode(this.f7446a) * 31) + Integer.hashCode(this.f7447b);
    }

    public final void setHeight(int i10) {
        this.f7447b = i10;
    }

    public final void setWidth(int i10) {
        this.f7446a = i10;
    }

    public String toString() {
        return "(width = " + this.f7446a + ", height = " + this.f7447b + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LayoutGridWindowSize(LayoutGridWindowSize windowSize) {
        this(windowSize.f7446a, windowSize.f7447b);
        r.e(windowSize, "windowSize");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LayoutGridWindowSize(Context context, Dp width, Dp height) {
        this((int) width.toPixel(context), (int) height.toPixel(context));
        r.e(context, "context");
        r.e(width, "width");
        r.e(height, "height");
    }
}

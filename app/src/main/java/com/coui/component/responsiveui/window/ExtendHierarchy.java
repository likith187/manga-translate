package com.coui.component.responsiveui.window;

import android.content.Context;
import com.coui.component.responsiveui.unit.Dp;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ExtendHierarchy {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Dp f7444a = new Dp(280);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Dp f7445b = new Dp(360);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float childWindowWidth(Context context, WindowWidthSizeClass windowWidthSizeClass, int i10) {
            r.e(context, "context");
            r.e(windowWidthSizeClass, "windowWidthSizeClass");
            return i10 - parentWindowWidth(context, windowWidthSizeClass, i10);
        }

        public final float parentWindowWidth(Context context, WindowWidthSizeClass windowWidthSizeClass, int i10) {
            r.e(context, "context");
            r.e(windowWidthSizeClass, "windowWidthSizeClass");
            return r.a(windowWidthSizeClass, WindowWidthSizeClass.Medium) ? ExtendHierarchy.f7444a.toPixel(context) : r.a(windowWidthSizeClass, WindowWidthSizeClass.Expanded) ? ExtendHierarchy.f7445b.toPixel(context) : i10;
        }

        private Companion() {
        }

        public final Dp childWindowWidth(WindowWidthSizeClass windowWidthSizeClass, Dp windowWidth) {
            r.e(windowWidthSizeClass, "windowWidthSizeClass");
            r.e(windowWidth, "windowWidth");
            return windowWidth.minus(parentWindowWidth(windowWidthSizeClass, windowWidth));
        }

        public final Dp parentWindowWidth(WindowWidthSizeClass windowWidthSizeClass, Dp windowWidth) {
            r.e(windowWidthSizeClass, "windowWidthSizeClass");
            r.e(windowWidth, "windowWidth");
            return r.a(windowWidthSizeClass, WindowWidthSizeClass.Medium) ? ExtendHierarchy.f7444a : r.a(windowWidthSizeClass, WindowWidthSizeClass.Expanded) ? ExtendHierarchy.f7445b : windowWidth;
        }
    }
}

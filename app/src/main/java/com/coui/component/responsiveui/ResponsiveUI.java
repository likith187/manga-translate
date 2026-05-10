package com.coui.component.responsiveui;

import android.content.Context;
import android.util.Log;
import com.coui.component.responsiveui.layoutgrid.LayoutGridSystem;
import com.coui.component.responsiveui.proxy.ResponsiveUIProxy;
import com.coui.component.responsiveui.status.WindowStatus;
import com.coui.component.responsiveui.unit.DpKt;
import com.coui.component.responsiveui.window.LayoutGridWindowSize;
import com.coui.component.responsiveui.window.WindowSizeClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ResponsiveUI {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f7398a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IResponsiveUI getInstance(Context context, LayoutGridWindowSize windowSize) {
            r.e(context, "context");
            r.e(windowSize, "windowSize");
            WindowStatus windowStatus = new WindowStatus(context.getResources().getConfiguration().orientation, WindowSizeClass.Companion.calculateFromSize(DpKt.pixel2Dp(windowSize.getWidth(), context), DpKt.pixel2Dp(windowSize.getHeight(), context)), new LayoutGridWindowSize(windowSize));
            LayoutGridSystem layoutGridSystem = new LayoutGridSystem(context, windowStatus.windowSizeClass(), windowSize.getWidth());
            if (ResponsiveUI.f7398a) {
                Log.d("ResponsiveUI", "[init]: " + windowStatus);
                Log.d("ResponsiveUI", "[init]: " + layoutGridSystem);
            }
            return new ResponsiveUIProxy(layoutGridSystem, windowStatus);
        }

        private Companion() {
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7398a = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("ResponsiveUI", 3);
    }
}

package com.coloros.translate.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class i1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f7126a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(Context context, float f10) {
            kotlin.jvm.internal.r.e(context, "context");
            return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
        }

        public final int b(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
            c0.f7098a.d("WindowParamUtils", "getNavigationBarHeight navigationBarHeight=" + dimensionPixelSize);
            return dimensionPixelSize;
        }

        public final int c(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
            c0.f7098a.d("WindowParamUtils", "getStatusBarHeight  = " + dimensionPixelSize);
            return dimensionPixelSize;
        }

        private a() {
        }
    }
}

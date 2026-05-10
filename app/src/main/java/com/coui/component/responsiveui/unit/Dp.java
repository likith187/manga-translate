package com.coui.component.responsiveui.unit;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class Dp {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f7443a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Dp pixel2Dp(Context context, int i10) {
            r.e(context, "context");
            return DpKt.pixel2Dp(i10, context);
        }

        private Companion() {
        }
    }

    public Dp(float f10) {
        this.f7443a = f10;
    }

    public final int compareTo(Dp other) {
        r.e(other, "other");
        return Float.compare(this.f7443a, other.f7443a);
    }

    public final Dp div(Dp other) {
        r.e(other, "other");
        return new Dp(this.f7443a / other.f7443a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Dp.class == obj.getClass() && Float.compare(this.f7443a, ((Dp) obj).f7443a) == 0;
    }

    public final float getValue() {
        return this.f7443a;
    }

    public int hashCode() {
        return Float.hashCode(this.f7443a);
    }

    public final Dp minus(Dp other) {
        r.e(other, "other");
        return new Dp(this.f7443a - other.f7443a);
    }

    public final Dp plus(Dp other) {
        r.e(other, "other");
        return new Dp(this.f7443a + other.f7443a);
    }

    public final float toPixel(Context context) {
        r.e(context, "context");
        return this.f7443a * context.getResources().getDisplayMetrics().density;
    }

    public String toString() {
        return this.f7443a + " dp";
    }
}

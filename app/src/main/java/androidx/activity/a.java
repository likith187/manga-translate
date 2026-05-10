package androidx.activity;

import android.window.BackEvent;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public final BackEvent a(float f10, float f11, float f12, int i10) {
        return new BackEvent(f10, f11, f12, i10);
    }

    public final float b(BackEvent backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int c(BackEvent backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    public final float d(BackEvent backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float e(BackEvent backEvent) {
        kotlin.jvm.internal.r.e(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}

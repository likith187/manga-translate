package androidx.core.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GestureDetector f2057a;

    public i(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean a(MotionEvent motionEvent) {
        return this.f2057a.onTouchEvent(motionEvent);
    }

    public i(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        this.f2057a = new GestureDetector(context, onGestureListener, handler);
    }
}

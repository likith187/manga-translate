package androidx.core.view;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map f2079a = Collections.synchronizedMap(new WeakHashMap());

    private static class a {
        static float a(VelocityTracker velocityTracker, int i10) {
            return velocityTracker.getAxisVelocity(i10);
        }
    }

    public static void a(VelocityTracker velocityTracker, MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            if (!f2079a.containsKey(velocityTracker)) {
                f2079a.put(velocityTracker, new k0());
            }
            ((k0) f2079a.get(velocityTracker)).a(motionEvent);
        }
    }

    public static void b(VelocityTracker velocityTracker, int i10) {
        c(velocityTracker, i10, Float.MAX_VALUE);
    }

    public static void c(VelocityTracker velocityTracker, int i10, float f10) {
        velocityTracker.computeCurrentVelocity(i10, f10);
        k0 k0VarE = e(velocityTracker);
        if (k0VarE != null) {
            k0VarE.c(i10, f10);
        }
    }

    public static float d(VelocityTracker velocityTracker, int i10) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.a(velocityTracker, i10);
        }
        if (i10 == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i10 == 1) {
            return velocityTracker.getYVelocity();
        }
        k0 k0VarE = e(velocityTracker);
        if (k0VarE != null) {
            return k0VarE.d(i10);
        }
        return 0.0f;
    }

    private static k0 e(VelocityTracker velocityTracker) {
        return (k0) f2079a.get(velocityTracker);
    }
}

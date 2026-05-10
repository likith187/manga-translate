package androidx.core.view;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    public static int a(MotionEvent motionEvent) {
        return motionEvent.getActionMasked();
    }

    public static boolean b(MotionEvent motionEvent, int i10) {
        return (motionEvent.getSource() & i10) == i10;
    }
}

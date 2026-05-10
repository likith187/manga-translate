package c4;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Dialog f4289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4291c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4292f;

    public a(Dialog dialog, Rect rect) {
        this.f4289a = dialog;
        this.f4290b = rect.left;
        this.f4291c = rect.top;
        this.f4292f = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f4290b + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, this.f4291c + viewFindViewById.getTop(), width, viewFindViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        view.performClick();
        return this.f4289a.onTouchEvent(motionEventObtain);
    }
}

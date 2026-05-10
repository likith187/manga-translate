package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionLayout.j {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1151m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1152n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f1153o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected View[] f1154p;

    public MotionHelper(Context context) {
        super(context);
        this.f1151m = false;
        this.f1152n = false;
    }

    public void A(MotionLayout motionLayout) {
    }

    public void B(Canvas canvas) {
    }

    public void C(Canvas canvas) {
    }

    public void D(MotionLayout motionLayout, HashMap map) {
    }

    public void E(View view, float f10) {
    }

    public void a(MotionLayout motionLayout, int i10, int i11, float f10) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.j
    public void b(MotionLayout motionLayout, int i10, int i11) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.j
    public void c(MotionLayout motionLayout, int i10, boolean z10, float f10) {
    }

    public void d(MotionLayout motionLayout, int i10) {
    }

    public float getProgress() {
        return this.f1153o;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionHelper_onShow) {
                    this.f1151m = typedArrayObtainStyledAttributes.getBoolean(index, this.f1151m);
                } else if (index == R$styleable.MotionHelper_onHide) {
                    this.f1152n = typedArrayObtainStyledAttributes.getBoolean(index, this.f1152n);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f10) {
        this.f1153o = f10;
        int i10 = 0;
        if (this.f1650b > 0) {
            this.f1154p = n((ConstraintLayout) getParent());
            while (i10 < this.f1650b) {
                E(this.f1154p[i10], f10);
                i10++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i10 < childCount) {
            View childAt = viewGroup.getChildAt(i10);
            if (!(childAt instanceof MotionHelper)) {
                E(childAt, f10);
            }
            i10++;
        }
    }

    public boolean x() {
        return false;
    }

    public boolean y() {
        return this.f1152n;
    }

    public boolean z() {
        return this.f1151m;
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1151m = false;
        this.f1152n = false;
        o(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1151m = false;
        this.f1152n = false;
        o(attributeSet);
    }
}

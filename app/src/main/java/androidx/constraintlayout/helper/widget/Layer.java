package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    private float A;
    private float B;
    private boolean C;
    private boolean D;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f1128m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f1129n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f1130o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ConstraintLayout f1131p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f1132q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f1133r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected float f1134s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f1135t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected float f1136u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected float f1137v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected float f1138w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected float f1139x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f1140y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    View[] f1141z;

    public Layer(Context context) {
        super(context);
        this.f1128m = Float.NaN;
        this.f1129n = Float.NaN;
        this.f1130o = Float.NaN;
        this.f1132q = 1.0f;
        this.f1133r = 1.0f;
        this.f1134s = Float.NaN;
        this.f1135t = Float.NaN;
        this.f1136u = Float.NaN;
        this.f1137v = Float.NaN;
        this.f1138w = Float.NaN;
        this.f1139x = Float.NaN;
        this.f1140y = true;
        this.f1141z = null;
        this.A = 0.0f;
        this.B = 0.0f;
    }

    private void y() {
        int i10;
        if (this.f1131p == null || (i10 = this.f1650b) == 0) {
            return;
        }
        View[] viewArr = this.f1141z;
        if (viewArr == null || viewArr.length != i10) {
            this.f1141z = new View[i10];
        }
        for (int i11 = 0; i11 < this.f1650b; i11++) {
            this.f1141z[i11] = this.f1131p.getViewById(this.f1649a[i11]);
        }
    }

    private void z() {
        if (this.f1131p == null) {
            return;
        }
        if (this.f1141z == null) {
            y();
        }
        x();
        double radians = Float.isNaN(this.f1130o) ? 0.0d : Math.toRadians(this.f1130o);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f10 = this.f1132q;
        float f11 = f10 * fCos;
        float f12 = this.f1133r;
        float f13 = (-f12) * fSin;
        float f14 = f10 * fSin;
        float f15 = f12 * fCos;
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            View view = this.f1141z[i10];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f16 = left - this.f1134s;
            float f17 = top - this.f1135t;
            float f18 = (((f11 * f16) + (f13 * f17)) - f16) + this.A;
            float f19 = (((f16 * f14) + (f15 * f17)) - f17) + this.B;
            view.setTranslationX(f18);
            view.setTranslationY(f19);
            view.setScaleY(this.f1133r);
            view.setScaleX(this.f1132q);
            if (!Float.isNaN(this.f1130o)) {
                view.setRotation(this.f1130o);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void j(ConstraintLayout constraintLayout) {
        i(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        this.f1653h = false;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.C = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.D = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1131p = (ConstraintLayout) getParent();
        if (this.C || this.D) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i10 = 0; i10 < this.f1650b; i10++) {
                View viewById = this.f1131p.getViewById(this.f1649a[i10]);
                if (viewById != null) {
                    if (this.C) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.D && elevation > 0.0f) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void r(ConstraintLayout constraintLayout) {
        y();
        this.f1134s = Float.NaN;
        this.f1135t = Float.NaN;
        e constraintWidget = ((ConstraintLayout.b) getLayoutParams()).getConstraintWidget();
        constraintWidget.p1(0);
        constraintWidget.Q0(0);
        x();
        layout(((int) this.f1138w) - getPaddingLeft(), ((int) this.f1139x) - getPaddingTop(), ((int) this.f1136u) + getPaddingRight(), ((int) this.f1137v) + getPaddingBottom());
        z();
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        h();
    }

    @Override // android.view.View
    public void setPivotX(float f10) {
        this.f1128m = f10;
        z();
    }

    @Override // android.view.View
    public void setPivotY(float f10) {
        this.f1129n = f10;
        z();
    }

    @Override // android.view.View
    public void setRotation(float f10) {
        this.f1130o = f10;
        z();
    }

    @Override // android.view.View
    public void setScaleX(float f10) {
        this.f1132q = f10;
        z();
    }

    @Override // android.view.View
    public void setScaleY(float f10) {
        this.f1133r = f10;
        z();
    }

    @Override // android.view.View
    public void setTranslationX(float f10) {
        this.A = f10;
        z();
    }

    @Override // android.view.View
    public void setTranslationY(float f10) {
        this.B = f10;
        z();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        h();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void t(ConstraintLayout constraintLayout) {
        this.f1131p = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f1130o = rotation;
        } else {
            if (Float.isNaN(this.f1130o)) {
                return;
            }
            this.f1130o = rotation;
        }
    }

    protected void x() {
        if (this.f1131p == null) {
            return;
        }
        if (this.f1140y || Float.isNaN(this.f1134s) || Float.isNaN(this.f1135t)) {
            if (!Float.isNaN(this.f1128m) && !Float.isNaN(this.f1129n)) {
                this.f1135t = this.f1129n;
                this.f1134s = this.f1128m;
                return;
            }
            View[] viewArrN = n(this.f1131p);
            int left = viewArrN[0].getLeft();
            int top = viewArrN[0].getTop();
            int right = viewArrN[0].getRight();
            int bottom = viewArrN[0].getBottom();
            for (int i10 = 0; i10 < this.f1650b; i10++) {
                View view = viewArrN[i10];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f1136u = right;
            this.f1137v = bottom;
            this.f1138w = left;
            this.f1139x = top;
            if (Float.isNaN(this.f1128m)) {
                this.f1134s = (left + right) / 2;
            } else {
                this.f1134s = this.f1128m;
            }
            if (Float.isNaN(this.f1129n)) {
                this.f1135t = (top + bottom) / 2;
            } else {
                this.f1135t = this.f1129n;
            }
        }
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1128m = Float.NaN;
        this.f1129n = Float.NaN;
        this.f1130o = Float.NaN;
        this.f1132q = 1.0f;
        this.f1133r = 1.0f;
        this.f1134s = Float.NaN;
        this.f1135t = Float.NaN;
        this.f1136u = Float.NaN;
        this.f1137v = Float.NaN;
        this.f1138w = Float.NaN;
        this.f1139x = Float.NaN;
        this.f1140y = true;
        this.f1141z = null;
        this.A = 0.0f;
        this.B = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1128m = Float.NaN;
        this.f1129n = Float.NaN;
        this.f1130o = Float.NaN;
        this.f1132q = 1.0f;
        this.f1133r = 1.0f;
        this.f1134s = Float.NaN;
        this.f1135t = Float.NaN;
        this.f1136u = Float.NaN;
        this.f1137v = Float.NaN;
        this.f1138w = Float.NaN;
        this.f1139x = Float.NaN;
        this.f1140y = true;
        this.f1141z = null;
        this.A = 0.0f;
        this.B = 0.0f;
    }
}

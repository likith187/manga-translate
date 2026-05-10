package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes.dex */
public class Constraints extends ViewGroup {

    /* JADX INFO: renamed from: a */
    c f1668a;

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void c() {
        Log.v("Constraints", " ################# init");
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public c getConstraintSet() {
        if (this.f1668a == null) {
            this.f1668a = new c();
        }
        this.f1668a.q(this);
        return this.f1668a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.b(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c();
        super.setVisibility(8);
    }

    public static class a extends ConstraintLayout.b {

        /* JADX INFO: renamed from: a */
        public float f1669a;

        /* JADX INFO: renamed from: b */
        public boolean f1670b;

        /* JADX INFO: renamed from: c */
        public float f1671c;

        /* JADX INFO: renamed from: d */
        public float f1672d;

        /* JADX INFO: renamed from: e */
        public float f1673e;

        /* JADX INFO: renamed from: f */
        public float f1674f;

        /* JADX INFO: renamed from: g */
        public float f1675g;

        /* JADX INFO: renamed from: h */
        public float f1676h;

        /* JADX INFO: renamed from: i */
        public float f1677i;

        /* JADX INFO: renamed from: j */
        public float f1678j;

        /* JADX INFO: renamed from: k */
        public float f1679k;

        /* JADX INFO: renamed from: l */
        public float f1680l;

        /* JADX INFO: renamed from: m */
        public float f1681m;

        public a(int i10, int i11) {
            super(i10, i11);
            this.f1669a = 1.0f;
            this.f1670b = false;
            this.f1671c = 0.0f;
            this.f1672d = 0.0f;
            this.f1673e = 0.0f;
            this.f1674f = 0.0f;
            this.f1675g = 1.0f;
            this.f1676h = 1.0f;
            this.f1677i = 0.0f;
            this.f1678j = 0.0f;
            this.f1679k = 0.0f;
            this.f1680l = 0.0f;
            this.f1681m = 0.0f;
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1669a = 1.0f;
            this.f1670b = false;
            this.f1671c = 0.0f;
            this.f1672d = 0.0f;
            this.f1673e = 0.0f;
            this.f1674f = 0.0f;
            this.f1675g = 1.0f;
            this.f1676h = 1.0f;
            this.f1677i = 0.0f;
            this.f1678j = 0.0f;
            this.f1679k = 0.0f;
            this.f1680l = 0.0f;
            this.f1681m = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintSet_android_alpha) {
                    this.f1669a = typedArrayObtainStyledAttributes.getFloat(index, this.f1669a);
                } else if (index == R$styleable.ConstraintSet_android_elevation) {
                    this.f1671c = typedArrayObtainStyledAttributes.getFloat(index, this.f1671c);
                    this.f1670b = true;
                } else if (index == R$styleable.ConstraintSet_android_rotationX) {
                    this.f1673e = typedArrayObtainStyledAttributes.getFloat(index, this.f1673e);
                } else if (index == R$styleable.ConstraintSet_android_rotationY) {
                    this.f1674f = typedArrayObtainStyledAttributes.getFloat(index, this.f1674f);
                } else if (index == R$styleable.ConstraintSet_android_rotation) {
                    this.f1672d = typedArrayObtainStyledAttributes.getFloat(index, this.f1672d);
                } else if (index == R$styleable.ConstraintSet_android_scaleX) {
                    this.f1675g = typedArrayObtainStyledAttributes.getFloat(index, this.f1675g);
                } else if (index == R$styleable.ConstraintSet_android_scaleY) {
                    this.f1676h = typedArrayObtainStyledAttributes.getFloat(index, this.f1676h);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotX) {
                    this.f1677i = typedArrayObtainStyledAttributes.getFloat(index, this.f1677i);
                } else if (index == R$styleable.ConstraintSet_android_transformPivotY) {
                    this.f1678j = typedArrayObtainStyledAttributes.getFloat(index, this.f1678j);
                } else if (index == R$styleable.ConstraintSet_android_translationX) {
                    this.f1679k = typedArrayObtainStyledAttributes.getFloat(index, this.f1679k);
                } else if (index == R$styleable.ConstraintSet_android_translationY) {
                    this.f1680l = typedArrayObtainStyledAttributes.getFloat(index, this.f1680l);
                } else if (index == R$styleable.ConstraintSet_android_translationZ) {
                    this.f1681m = typedArrayObtainStyledAttributes.getFloat(index, this.f1681m);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}

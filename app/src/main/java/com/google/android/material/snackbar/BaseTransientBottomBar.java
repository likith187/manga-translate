package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.app.t;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import i4.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseTransientBottomBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final TimeInterpolator f10252a = x3.a.f16369b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final TimeInterpolator f10253b = x3.a.f16368a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final TimeInterpolator f10254c = x3.a.f16371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f10256e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f10257f = {R$attr.snackbarStyle};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f10258g = BaseTransientBottomBar.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Handler f10255d = new Handler(Looper.getMainLooper(), new a());

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final b f10259n = new b(this);

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean b(View view) {
            return this.f10259n.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f10259n.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    protected static class SnackbarBaseLayout extends FrameLayout {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final View.OnTouchListener f10260n = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        n f10261a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f10262b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f10263c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f10264f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f10265h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f10266i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private ColorStateList f10267j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private PorterDuff.Mode f10268k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Rect f10269l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f10270m;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        protected SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        private Drawable a() {
            int iK = b4.a.k(this, R$attr.colorSurface, R$attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            n nVar = this.f10261a;
            Drawable drawableD = nVar != null ? BaseTransientBottomBar.d(iK, nVar) : BaseTransientBottomBar.c(iK, getResources());
            if (this.f10267j == null) {
                return v.a.r(drawableD);
            }
            Drawable drawableR = v.a.r(drawableD);
            v.a.o(drawableR, this.f10267j);
            return drawableR;
        }

        private void b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f10269l = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        private void setBaseTransientBottomBar(BaseTransientBottomBar baseTransientBottomBar) {
        }

        float getActionTextColorAlpha() {
            return this.f10264f;
        }

        int getAnimationMode() {
            return this.f10262b;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f10263c;
        }

        int getMaxInlineActionWidth() {
            return this.f10266i;
        }

        int getMaxWidth() {
            return this.f10265h;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            m0.f0(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (this.f10265h > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = this.f10265h;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        void setAnimationMode(int i10) {
            this.f10262b = i10;
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.f10267j != null) {
                drawable = v.a.r(drawable.mutate());
                v.a.o(drawable, this.f10267j);
                v.a.p(drawable, this.f10268k);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.f10267j = colorStateList;
            if (getBackground() != null) {
                Drawable drawableR = v.a.r(getBackground().mutate());
                v.a.o(drawableR, colorStateList);
                v.a.p(drawableR, this.f10268k);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f10268k = mode;
            if (getBackground() != null) {
                Drawable drawableR = v.a.r(getBackground().mutate());
                v.a.p(drawableR, mode);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f10270m || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            b((ViewGroup.MarginLayoutParams) layoutParams);
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f10260n);
            super.setOnClickListener(onClickListener);
        }

        protected SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(m4.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
                m0.r0(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_elevation, 0));
            }
            this.f10262b = typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_animationMode, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearance) || typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f10261a = n.e(context2, attributeSet, 0, 0).m();
            }
            this.f10263c = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(c.a(context2, typedArrayObtainStyledAttributes, R$styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f10264f = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f10265h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_android_maxWidth, -1);
            this.f10266i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f10260n);
            setFocusable(true);
            if (getBackground() == null) {
                m0.n0(this, a());
            }
        }
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                t.a(message.obj);
                throw null;
            }
            if (i10 != 1) {
                return false;
            }
            t.a(message.obj);
            throw null;
        }
    }

    public static class b {
        public b(SwipeDismissBehavior swipeDismissBehavior) {
            swipeDismissBehavior.h(0.1f);
            swipeDismissBehavior.g(0.6f);
            swipeDismissBehavior.i(0);
        }

        public boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.z(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.a.b().e(null);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.a.b().f(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GradientDrawable c(int i10, Resources resources) {
        float dimension = resources.getDimension(R$dimen.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(i10);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i d(int i10, n nVar) {
        i iVar = new i(nVar);
        iVar.setFillColor(ColorStateList.valueOf(i10));
        return iVar;
    }
}

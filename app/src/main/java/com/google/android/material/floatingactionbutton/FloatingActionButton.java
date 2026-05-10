package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.g;
import androidx.appcompat.widget.k;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.d;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import x3.h;

/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements e4.a, r, CoordinatorLayout.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f9584t = R$style.Widget_Design_FloatingActionButton;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ColorStateList f9585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PorterDuff.Mode f9586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f9587c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PorterDuff.Mode f9588f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f9589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f9590i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f9591j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9592k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f9593l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9594m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f9595n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Rect f9596o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f9597p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final k f9598q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final e4.b f9599r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.material.floatingactionbutton.d f9600s;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: a */
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: c */
        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: d */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i10) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i10);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
            super.onAttachedToLayoutParams(fVar);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    class a implements d.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f9604a;

        a(b bVar) {
            this.f9604a = bVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void a() {
            this.f9604a.b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void b() {
            this.f9604a.a(FloatingActionButton.this);
        }
    }

    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    private class c implements k4.b {
        c() {
        }

        @Override // k4.b
        public void a(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // k4.b
        public boolean b() {
            return FloatingActionButton.this.f9595n;
        }

        @Override // k4.b
        public void setShadowPadding(int i10, int i11, int i12, int i13) {
            FloatingActionButton.this.f9596o.set(i10, i11, i12, i13);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i10 + floatingActionButton.f9593l, i11 + FloatingActionButton.this.f9593l, i12 + FloatingActionButton.this.f9593l, i13 + FloatingActionButton.this.f9593l);
        }
    }

    class d implements d.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final x3.k f9607a;

        d(x3.k kVar) {
            this.f9607a = kVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public void a() {
            this.f9607a.a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.i
        public void b() {
            this.f9607a.b(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof d) && ((d) obj).f9607a.equals(this.f9607a);
        }

        public int hashCode() {
            return this.f9607a.hashCode();
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    private com.google.android.material.floatingactionbutton.d g() {
        return new e(this, new c());
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.f9600s == null) {
            this.f9600s = g();
        }
        return this.f9600s;
    }

    private int j(int i10) {
        int i11 = this.f9592k;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        return i10 != -1 ? i10 != 1 ? resources.getDimensionPixelSize(R$dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R$dimen.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? j(1) : j(0);
    }

    private void k(Rect rect) {
        i(rect);
        int i10 = -this.f9600s.v();
        rect.inset(i10, i10);
    }

    private void p(Rect rect) {
        int i10 = rect.left;
        Rect rect2 = this.f9596o;
        rect.left = i10 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private void q() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f9587c;
        if (colorStateList == null) {
            v.a.c(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f9588f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(g.e(colorForState, mode));
    }

    private d.j t(b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    @Override // e4.a
    public boolean a() {
        return this.f9599r.c();
    }

    public void d(Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().E(getDrawableState());
    }

    public void e(Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    public void f(x3.k kVar) {
        getImpl().g(new d(kVar));
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f9585a;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f9586b;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().m();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().p();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().s();
    }

    public Drawable getContentBackground() {
        return getImpl().l();
    }

    public int getCustomSize() {
        return this.f9592k;
    }

    public int getExpandedComponentIdHint() {
        return this.f9599r.b();
    }

    public h getHideMotionSpec() {
        return getImpl().o();
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f9589h;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f9589h;
    }

    public n getShapeAppearanceModel() {
        return (n) c0.h.e(getImpl().t());
    }

    public h getShowMotionSpec() {
        return getImpl().u();
    }

    public int getSize() {
        return this.f9591j;
    }

    int getSizeDimension() {
        return j(this.f9591j);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.f9587c;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f9588f;
    }

    public boolean getUseCompatPadding() {
        return this.f9595n;
    }

    public boolean h(Rect rect) {
        if (!m0.O(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        p(rect);
        return true;
    }

    public void i(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        p(rect);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().A();
    }

    public void l(b bVar) {
        m(bVar, true);
    }

    void m(b bVar, boolean z10) {
        getImpl().w(t(bVar), z10);
    }

    public boolean n() {
        return getImpl().y();
    }

    public boolean o() {
        return getImpl().z();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().D();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f9593l = (sizeDimension - this.f9594m) / 2;
        getImpl().f0();
        int iMin = Math.min(View.resolveSize(sizeDimension, i10), View.resolveSize(sizeDimension, i11));
        Rect rect = this.f9596o;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f9599r.d((Bundle) c0.h.e((Bundle) extendableSavedState.f10279a.get("expandableWidgetHelper")));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.f10279a.put("expandableWidgetHelper", this.f9599r.e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            k(this.f9597p);
            if (!this.f9597p.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void r(b bVar) {
        s(bVar, true);
    }

    void s(b bVar, boolean z10) {
        getImpl().c0(t(bVar), z10);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f9585a != colorStateList) {
            this.f9585a = colorStateList;
            getImpl().L(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f9586b != mode) {
            this.f9586b = mode;
            getImpl().M(mode);
        }
    }

    public void setCompatElevation(float f10) {
        getImpl().N(f10);
    }

    public void setCompatElevationResource(int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f10) {
        getImpl().Q(f10);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f10) {
        getImpl().U(f10);
    }

    public void setCompatPressedTranslationZResource(int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i10 != this.f9592k) {
            this.f9592k = i10;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        getImpl().g0(f10);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().n()) {
            getImpl().O(z10);
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i10) {
        this.f9599r.f(i10);
    }

    public void setHideMotionSpec(h hVar) {
        getImpl().P(hVar);
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(h.d(getContext(), i10));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().e0();
            if (this.f9587c != null) {
                q();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        this.f9598q.i(i10);
        q();
    }

    public void setMaxImageSize(int i10) {
        this.f9594m = i10;
        getImpl().S(i10);
    }

    public void setRippleColor(int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }

    @Override // android.view.View
    public void setScaleX(float f10) {
        super.setScaleX(f10);
        getImpl().I();
    }

    @Override // android.view.View
    public void setScaleY(float f10) {
        super.setScaleY(f10);
        getImpl().I();
    }

    public void setShadowPaddingEnabled(boolean z10) {
        getImpl().W(z10);
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        getImpl().X(nVar);
    }

    public void setShowMotionSpec(h hVar) {
        getImpl().Y(hVar);
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(h.d(getContext(), i10));
    }

    public void setSize(int i10) {
        this.f9592k = 0;
        if (i10 != this.f9591j) {
            this.f9591j = i10;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f9587c != colorStateList) {
            this.f9587c = colorStateList;
            q();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f9588f != mode) {
            this.f9588f = mode;
            q();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f10) {
        super.setTranslationX(f10);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationZ(float f10) {
        super.setTranslationZ(f10);
        getImpl().J();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f9595n != z10) {
            this.f9595n = z10;
            getImpl().C();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f9601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f9602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f9603c;

        public BaseBehavior() {
            this.f9603c = true;
        }

        private void b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f9596o;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i10 = 0;
            int i11 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) fVar).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) fVar).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) {
                i10 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) fVar).topMargin) {
                i10 = -rect.top;
            }
            if (i10 != 0) {
                m0.U(floatingActionButton, i10);
            }
            if (i11 != 0) {
                m0.T(floatingActionButton, i11);
            }
        }

        private boolean e(View view, FloatingActionButton floatingActionButton) {
            return this.f9603c && ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean f(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!e(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f9601a == null) {
                this.f9601a = new Rect();
            }
            Rect rect = this.f9601a;
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m(this.f9602b, false);
                return true;
            }
            floatingActionButton.s(this.f9602b, false);
            return true;
        }

        private boolean g(View view, FloatingActionButton floatingActionButton) {
            if (!e(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m(this.f9602b, false);
                return true;
            }
            floatingActionButton.s(this.f9602b, false);
            return true;
        }

        private static boolean isBottomSheet(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f9596o;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                f(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!isBottomSheet(view)) {
                return false;
            }
            g(view, floatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i10) {
            List listP = coordinatorLayout.p(floatingActionButton);
            int size = listP.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = (View) listP.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (isBottomSheet(view) && g(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (f(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.G(floatingActionButton, i10);
            b(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
            if (fVar.f1875h == 0) {
                fVar.f1875h = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.f9603c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.floatingActionButtonStyle);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f9589h != colorStateList) {
            this.f9589h = colorStateList;
            getImpl().V(this.f9589h);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9584t;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9596o = new Rect();
        this.f9597p = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.FloatingActionButton, i10, i11, new int[0]);
        this.f9585a = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.FloatingActionButton_backgroundTint);
        this.f9586b = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f9589h = i4.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.FloatingActionButton_rippleColor);
        this.f9591j = typedArrayObtainStyledAttributes.getInt(R$styleable.FloatingActionButton_fabSize, -1);
        this.f9592k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FloatingActionButton_fabCustomSize, 0);
        this.f9590i = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f9595n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.FloatingActionButton_maxImageSize, 0));
        h hVarC = h.c(context2, typedArrayObtainStyledAttributes, R$styleable.FloatingActionButton_showMotionSpec);
        h hVarC2 = h.c(context2, typedArrayObtainStyledAttributes, R$styleable.FloatingActionButton_hideMotionSpec);
        n nVarM = n.g(context2, attributeSet, i10, i11, n.f10075m).m();
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_android_enabled, true));
        typedArrayObtainStyledAttributes.recycle();
        k kVar = new k(this);
        this.f9598q = kVar;
        kVar.g(attributeSet, i10);
        this.f9599r = new e4.b(this);
        getImpl().X(nVarM);
        getImpl().x(this.f9585a, this.f9586b, this.f9589h, this.f9590i);
        getImpl().T(dimensionPixelSize);
        getImpl().N(dimension);
        getImpl().Q(dimension2);
        getImpl().U(dimension3);
        getImpl().Y(hVarC);
        getImpl().P(hVarC2);
        getImpl().O(z10);
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}

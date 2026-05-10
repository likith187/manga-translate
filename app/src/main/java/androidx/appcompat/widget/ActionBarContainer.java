package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f546c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f547f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Drawable f548h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Drawable f549i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Drawable f550j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f551k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f552l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f553m;

    private static class a {
        public static void a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f548h;
        if (drawable != null && drawable.isStateful()) {
            this.f548h.setState(getDrawableState());
        }
        Drawable drawable2 = this.f549i;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f549i.setState(getDrawableState());
        }
        Drawable drawable3 = this.f550j;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f550j.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f545b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f548h;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f549i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f550j;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f546c = findViewById(R$id.action_bar);
        this.f547f = findViewById(R$id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f544a || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[PHI: r0
      0x0048: PHI (r0v8 boolean) = (r0v1 boolean), (r0v1 boolean), (r0v0 boolean) binds: [B:31:0x00a5, B:33:0x00a9, B:15:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayout(boolean r5, int r6, int r7, int r8, int r9) {
        /*
            r4 = this;
            super.onLayout(r5, r6, r7, r8, r9)
            android.view.View r5 = r4.f545b
            r7 = 8
            r9 = 1
            r0 = 0
            if (r5 == 0) goto L13
            int r1 = r5.getVisibility()
            if (r1 == r7) goto L13
            r1 = r9
            goto L14
        L13:
            r1 = r0
        L14:
            if (r5 == 0) goto L33
            int r2 = r5.getVisibility()
            if (r2 == r7) goto L33
            int r7 = r4.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r2 = r5.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r2 = (android.widget.FrameLayout.LayoutParams) r2
            int r3 = r5.getMeasuredHeight()
            int r3 = r7 - r3
            int r2 = r2.bottomMargin
            int r3 = r3 - r2
            int r7 = r7 - r2
            r5.layout(r6, r3, r8, r7)
        L33:
            boolean r6 = r4.f551k
            if (r6 == 0) goto L4b
            android.graphics.drawable.Drawable r5 = r4.f550j
            if (r5 == 0) goto L48
            int r6 = r4.getMeasuredWidth()
            int r7 = r4.getMeasuredHeight()
            r5.setBounds(r0, r0, r6, r7)
            goto Lbe
        L48:
            r9 = r0
            goto Lbe
        L4b:
            android.graphics.drawable.Drawable r6 = r4.f548h
            if (r6 == 0) goto La3
            android.view.View r6 = r4.f546c
            int r6 = r6.getVisibility()
            if (r6 != 0) goto L75
            android.graphics.drawable.Drawable r6 = r4.f548h
            android.view.View r7 = r4.f546c
            int r7 = r7.getLeft()
            android.view.View r8 = r4.f546c
            int r8 = r8.getTop()
            android.view.View r0 = r4.f546c
            int r0 = r0.getRight()
            android.view.View r2 = r4.f546c
            int r2 = r2.getBottom()
            r6.setBounds(r7, r8, r0, r2)
            goto La2
        L75:
            android.view.View r6 = r4.f547f
            if (r6 == 0) goto L9d
            int r6 = r6.getVisibility()
            if (r6 != 0) goto L9d
            android.graphics.drawable.Drawable r6 = r4.f548h
            android.view.View r7 = r4.f547f
            int r7 = r7.getLeft()
            android.view.View r8 = r4.f547f
            int r8 = r8.getTop()
            android.view.View r0 = r4.f547f
            int r0 = r0.getRight()
            android.view.View r2 = r4.f547f
            int r2 = r2.getBottom()
            r6.setBounds(r7, r8, r0, r2)
            goto La2
        L9d:
            android.graphics.drawable.Drawable r6 = r4.f548h
            r6.setBounds(r0, r0, r0, r0)
        La2:
            r0 = r9
        La3:
            r4.f552l = r1
            if (r1 == 0) goto L48
            android.graphics.drawable.Drawable r6 = r4.f549i
            if (r6 == 0) goto L48
            int r7 = r5.getLeft()
            int r8 = r5.getTop()
            int r0 = r5.getRight()
            int r5 = r5.getBottom()
            r6.setBounds(r7, r8, r0, r5)
        Lbe:
            if (r9 == 0) goto Lc3
            r4.invalidate()
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        if (this.f546c == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f553m) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f546c == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.f545b;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!b(this.f546c) ? a(this.f546c) : !b(this.f547f) ? a(this.f547f) : 0) + a(this.f545b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i11) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f548h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f548h);
        }
        this.f548h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f546c;
            if (view != null) {
                this.f548h.setBounds(view.getLeft(), this.f546c.getTop(), this.f546c.getRight(), this.f546c.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f551k ? !(this.f548h != null || this.f549i != null) : this.f550j == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f550j;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f550j);
        }
        this.f550j = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f551k && (drawable2 = this.f550j) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f551k ? !(this.f548h != null || this.f549i != null) : this.f550j == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f549i;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f549i);
        }
        this.f549i = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f552l && (drawable2 = this.f549i) != null) {
                drawable2.setBounds(this.f545b.getLeft(), this.f545b.getTop(), this.f545b.getRight(), this.f545b.getBottom());
            }
        }
        boolean z10 = false;
        if (!this.f551k ? !(this.f548h != null || this.f549i != null) : this.f550j == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        a.a(this);
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f545b;
        if (view != null) {
            removeView(view);
        }
        this.f545b = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f544a = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f548h;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f549i;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f550j;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f548h && !this.f551k) || (drawable == this.f549i && this.f552l) || ((drawable == this.f550j && this.f551k) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBar);
        this.f548h = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_background);
        this.f549i = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundStacked);
        this.f553m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_height, -1);
        boolean z10 = true;
        if (getId() == R$id.split_action_bar) {
            this.f551k = true;
            this.f550j = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f551k ? this.f548h != null || this.f549i != null : this.f550j != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }
}

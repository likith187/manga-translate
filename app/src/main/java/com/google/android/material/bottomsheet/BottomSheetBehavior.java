package com.google.android.material.bottomsheet;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.c;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import d0.h;
import d0.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c implements g4.b {
    private static final int CORNER_ANIMATION_DURATION = 500;
    static final int DEFAULT_SIGNIFICANT_VEL_THRESHOLD = 500;
    private static final int DEF_STYLE_RES = R$style.Widget_Design_BottomSheet_Modal;
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    private static final int INVALID_POSITION = -1;
    private static final int NO_MAX_SIZE = -1;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "BottomSheetBehavior";
    static final int VIEW_INDEX_ACCESSIBILITY_DELEGATE_VIEW = 1;
    private static final int VIEW_INDEX_BOTTOM_SHEET = 0;
    WeakReference<View> accessibilityDelegateViewRef;
    int activePointerId;
    private ColorStateList backgroundTint;
    g4.e bottomContainerBackHelper;
    private final ArrayList<g> callbacks;
    private int childHeight;
    int collapsedOffset;
    private final c.AbstractC0020c dragCallback;
    private boolean draggable;
    float elevation;
    final SparseIntArray expandHalfwayActionIds;
    private boolean expandedCornersRemoved;
    int expandedOffset;
    private boolean fitToContents;
    int fitToContentsOffset;
    private int gestureInsetBottom;
    private boolean gestureInsetBottomIgnored;
    int halfExpandedOffset;
    float halfExpandedRatio;
    private float hideFriction;
    boolean hideable;
    private boolean ignoreEvents;
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialY;
    private int insetBottom;
    private int insetTop;
    private ValueAnimator interpolatorAnimator;
    private int lastNestedScrollDy;
    int lastStableState;
    private boolean marginLeftSystemWindowInsets;
    private boolean marginRightSystemWindowInsets;
    private boolean marginTopSystemWindowInsets;
    private i materialShapeDrawable;
    private int maxHeight;
    private int maxWidth;
    private float maximumVelocity;
    private boolean nestedScrolled;
    WeakReference<View> nestedScrollingChildRef;
    private boolean paddingBottomSystemWindowInsets;
    private boolean paddingLeftSystemWindowInsets;
    private boolean paddingRightSystemWindowInsets;
    private boolean paddingTopSystemWindowInsets;
    int parentHeight;
    int parentWidth;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightGestureInsetBuffer;
    private int peekHeightMin;
    private int saveFlags;
    private n shapeAppearanceModelDefault;
    private boolean shouldRemoveExpandedCorners;
    private int significantVelocityThreshold;
    private boolean skipCollapsed;
    int state;
    private final BottomSheetBehavior<V>.h stateSettlingTracker;
    boolean touchingScrollingChild;
    private boolean updateImportantForAccessibilityOnSiblings;
    private VelocityTracker velocityTracker;
    androidx.customview.widget.c viewDragHelper;
    WeakReference<V> viewRef;

    class a implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f9037a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f9038b;

        a(View view, int i10) {
            this.f9037a = view;
            this.f9038b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.s(this.f9037a, this.f9038b, false);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomSheetBehavior.this.setStateInternal(5);
            WeakReference<V> weakReference = BottomSheetBehavior.this.viewRef;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            BottomSheetBehavior.this.viewRef.get().requestLayout();
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.materialShapeDrawable != null) {
                BottomSheetBehavior.this.materialShapeDrawable.setInterpolation(fFloatValue);
            }
        }
    }

    class d implements ViewUtils.OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f9042a;

        d(boolean z10) {
            this.f9042a = z10;
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00a3  */
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public androidx.core.view.a1 onApplyWindowInsets(android.view.View r11, androidx.core.view.a1 r12, com.google.android.material.internal.ViewUtils.RelativePadding r13) {
            /*
                Method dump skipped, instruction units count: 205
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.d.onApplyWindowInsets(android.view.View, androidx.core.view.a1, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.a1");
        }
    }

    class e extends c.AbstractC0020c {

        /* JADX INFO: renamed from: a */
        private long f9044a;

        e() {
        }

        private boolean releasedLow(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.parentHeight + bottomSheetBehavior.getExpandedOffset()) / 2;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return x.a.b(i10, BottomSheetBehavior.this.getExpandedOffset(), getViewVerticalDragRange(view));
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public int getViewVerticalDragRange(View view) {
            return BottomSheetBehavior.this.e() ? BottomSheetBehavior.this.parentHeight : BottomSheetBehavior.this.collapsedOffset;
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && BottomSheetBehavior.this.draggable) {
                BottomSheetBehavior.this.setStateInternal(1);
            }
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            BottomSheetBehavior.this.dispatchOnSlide(i11);
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0010  */
        @Override // androidx.customview.widget.c.AbstractC0020c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onViewReleased(android.view.View r8, float r9, float r10) {
            /*
                Method dump skipped, instruction units count: 308
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.e.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.c.AbstractC0020c
        public boolean tryCaptureView(View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.state;
            if (i11 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.activePointerId == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.nestedScrollingChildRef;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f9044a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.viewRef;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class f implements k {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f9046a;

        f(int i10) {
            this.f9046a = i10;
        }

        @Override // d0.k
        public boolean perform(View view, k.a aVar) {
            BottomSheetBehavior.this.setState(this.f9046a);
            return true;
        }
    }

    public static abstract class g {
        void onLayout(View view) {
        }

        public abstract void onSlide(View view, float f10);

        public abstract void onStateChanged(View view, int i10);
    }

    public BottomSheetBehavior() {
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new h(this, null);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.hideFriction = 0.1f;
        this.callbacks = new ArrayList<>();
        this.initialY = -1;
        this.expandHalfwayActionIds = new SparseIntArray();
        this.dragCallback = new e();
    }

    private int a(View view, int i10, int i11) {
        return m0.b(view, view.getResources().getString(i10), g(i11));
    }

    private float b(float f10, RoundedCorner roundedCorner) {
        if (roundedCorner != null) {
            float radius = roundedCorner.getRadius();
            if (radius > 0.0f && f10 > 0.0f) {
                return radius / f10;
            }
        }
        return 0.0f;
    }

    private float c() {
        WeakReference<V> weakReference;
        WindowInsets rootWindowInsets;
        if (this.materialShapeDrawable == null || (weakReference = this.viewRef) == null || weakReference.get() == null) {
            return 0.0f;
        }
        V v10 = this.viewRef.get();
        if (!k() || (rootWindowInsets = v10.getRootWindowInsets()) == null) {
            return 0.0f;
        }
        return Math.max(b(this.materialShapeDrawable.getTopLeftCornerResolvedSize(), rootWindowInsets.getRoundedCorner(0)), b(this.materialShapeDrawable.getTopRightCornerResolvedSize(), rootWindowInsets.getRoundedCorner(1)));
    }

    private void calculateCollapsedOffset() {
        int iCalculatePeekHeight = calculatePeekHeight();
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - iCalculatePeekHeight, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - iCalculatePeekHeight;
        }
    }

    private void calculateHalfExpandedOffset() {
        this.halfExpandedOffset = (int) (this.parentHeight * (1.0f - this.halfExpandedRatio));
    }

    private int calculatePeekHeight() {
        int iMin;
        int i10;
        int i11;
        if (this.peekHeightAuto) {
            iMin = Math.min(Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)), this.childHeight);
            i10 = this.insetBottom;
        } else {
            if (!this.gestureInsetBottomIgnored && !this.paddingBottomSystemWindowInsets && (i11 = this.gestureInsetBottom) > 0) {
                return Math.max(this.peekHeight, i11 + this.peekHeightGestureInsetBuffer);
            }
            iMin = this.peekHeight;
            i10 = this.insetBottom;
        }
        return iMin + i10;
    }

    private void createShapeValueAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(c(), 1.0f);
        this.interpolatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new c());
    }

    private float d(int i10) {
        float f10;
        float expandedOffset;
        int i11 = this.collapsedOffset;
        if (i10 > i11 || i11 == getExpandedOffset()) {
            int i12 = this.collapsedOffset;
            f10 = i12 - i10;
            expandedOffset = this.parentHeight - i12;
        } else {
            int i13 = this.collapsedOffset;
            f10 = i13 - i10;
            expandedOffset = i13 - getExpandedOffset();
        }
        return f10 / expandedOffset;
    }

    public boolean e() {
        return isHideable() && isHideableWhenDragging();
    }

    private void f(View view, int i10) {
        if (view == null) {
            return;
        }
        m0.c0(view, 524288);
        m0.c0(view, 262144);
        m0.c0(view, 1048576);
        int i11 = this.expandHalfwayActionIds.get(i10, -1);
        if (i11 != -1) {
            m0.c0(view, i11);
            this.expandHalfwayActionIds.delete(i10);
        }
    }

    public static <V extends View> BottomSheetBehavior<V> from(V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
        if (cVarF instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) cVarF;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private k g(int i10) {
        return new f(i10);
    }

    private float getYVelocity() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private void h(Context context) {
        if (this.shapeAppearanceModelDefault == null) {
            return;
        }
        i iVar = new i(this.shapeAppearanceModelDefault);
        this.materialShapeDrawable = iVar;
        iVar.initializeElevationOverlay(context);
        ColorStateList colorStateList = this.backgroundTint;
        if (colorStateList != null) {
            this.materialShapeDrawable.setFillColor(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.materialShapeDrawable.setTint(typedValue.data);
    }

    private int i(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    private int j(int i10) {
        if (i10 == 3) {
            return getExpandedOffset();
        }
        if (i10 == 4) {
            return this.collapsedOffset;
        }
        if (i10 == 5) {
            return this.parentHeight;
        }
        if (i10 == 6) {
            return this.halfExpandedOffset;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i10);
    }

    private boolean k() {
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        this.viewRef.get().getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    private boolean l() {
        return this.state == 3 && (this.shouldRemoveExpandedCorners || k());
    }

    private boolean m(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && m0.N(view);
    }

    private void n(View view, h.a aVar, int i10) {
        m0.e0(view, aVar, null, g(i10));
    }

    private void o(SavedState savedState) {
        int i10 = this.saveFlags;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.peekHeight = savedState.f9033b;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.fitToContents = savedState.f9034c;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.hideable = savedState.f9035f;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.skipCollapsed = savedState.f9036h;
        }
    }

    private void p(View view, Runnable runnable) {
        if (m(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void q(View view) {
        boolean z10 = (isGestureInsetBottomIgnored() || this.peekHeightAuto) ? false : true;
        if (this.paddingBottomSystemWindowInsets || this.paddingLeftSystemWindowInsets || this.paddingRightSystemWindowInsets || this.marginLeftSystemWindowInsets || this.marginRightSystemWindowInsets || this.marginTopSystemWindowInsets || z10) {
            ViewUtils.doOnApplyWindowInsets(view, new d(z10));
        }
    }

    private boolean r() {
        return this.viewDragHelper != null && (this.draggable || this.state == 1);
    }

    private void reset() {
        this.activePointerId = -1;
        this.initialY = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    public void s(View view, int i10, boolean z10) {
        int iJ = j(i10);
        androidx.customview.widget.c cVar = this.viewDragHelper;
        if (cVar == null || (!z10 ? cVar.Q(view, view.getLeft(), iJ) : cVar.O(view.getLeft(), iJ))) {
            setStateInternal(i10);
            return;
        }
        setStateInternal(2);
        u(i10, true);
        this.stateSettlingTracker.c(i10);
    }

    private void t(View view, int i10) {
        if (view == null) {
            return;
        }
        f(view, i10);
        if (!this.fitToContents && this.state != 6) {
            this.expandHalfwayActionIds.put(i10, a(view, R$string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.hideable && isHideableWhenDragging() && this.state != 5) {
            n(view, h.a.f11482y, 5);
        }
        int i11 = this.state;
        if (i11 == 3) {
            n(view, h.a.f11481x, this.fitToContents ? 4 : 6);
            return;
        }
        if (i11 == 4) {
            n(view, h.a.f11480w, this.fitToContents ? 3 : 6);
        } else {
            if (i11 != 6) {
                return;
            }
            n(view, h.a.f11481x, 4);
            n(view, h.a.f11480w, 3);
        }
    }

    private void u(int i10, boolean z10) {
        boolean zL;
        ValueAnimator valueAnimator;
        if (i10 == 2 || this.expandedCornersRemoved == (zL = l()) || this.materialShapeDrawable == null) {
            return;
        }
        this.expandedCornersRemoved = zL;
        if (!z10 || (valueAnimator = this.interpolatorAnimator) == null) {
            ValueAnimator valueAnimator2 = this.interpolatorAnimator;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.interpolatorAnimator.cancel();
            }
            this.materialShapeDrawable.setInterpolation(this.expandedCornersRemoved ? c() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.interpolatorAnimator.reverse();
        } else {
            this.interpolatorAnimator.setFloatValues(this.materialShapeDrawable.getInterpolation(), zL ? c() : 1.0f);
            this.interpolatorAnimator.start();
        }
    }

    private void updateAccessibilityActions() {
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference != null) {
            t(weakReference.get(), 0);
        }
        WeakReference<View> weakReference2 = this.accessibilityDelegateViewRef;
        if (weakReference2 != null) {
            t(weakReference2.get(), 1);
        }
    }

    private void updateImportantForAccessibility(boolean z10) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.viewRef.get()) {
                    if (z10) {
                        this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.updateImportantForAccessibilityOnSiblings) {
                            m0.t0(childAt, 4);
                        }
                    } else if (this.updateImportantForAccessibilityOnSiblings && (map = this.importantForAccessibilityMap) != null && map.containsKey(childAt)) {
                        m0.t0(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                }
            }
            if (!z10) {
                this.importantForAccessibilityMap = null;
            } else if (this.updateImportantForAccessibilityOnSiblings) {
                this.viewRef.get().sendAccessibilityEvent(8);
            }
        }
    }

    public void v(boolean z10) {
        V v10;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
            if (this.state != 4 || (v10 = this.viewRef.get()) == null) {
                return;
            }
            if (z10) {
                setState(4);
            } else {
                v10.requestLayout();
            }
        }
    }

    public void addBottomSheetCallback(g gVar) {
        if (this.callbacks.contains(gVar)) {
            return;
        }
        this.callbacks.add(gVar);
    }

    public float calculateSlideOffset() {
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            return -1.0f;
        }
        return d(this.viewRef.get().getTop());
    }

    @Override // g4.b
    public void cancelBackProgress() {
        g4.e eVar = this.bottomContainerBackHelper;
        if (eVar == null) {
            return;
        }
        eVar.f();
    }

    void dispatchOnSlide(int i10) {
        V v10 = this.viewRef.get();
        if (v10 == null || this.callbacks.isEmpty()) {
            return;
        }
        float fD = d(i10);
        for (int i11 = 0; i11 < this.callbacks.size(); i11++) {
            this.callbacks.get(i11).onSlide(v10, fD);
        }
    }

    View findScrollingChild(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (m0.P(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View viewFindScrollingChild = findScrollingChild(viewGroup.getChildAt(i10));
                if (viewFindScrollingChild != null) {
                    return viewFindScrollingChild;
                }
            }
        }
        return null;
    }

    g4.e getBackHelper() {
        return this.bottomContainerBackHelper;
    }

    public int getExpandedOffset() {
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        return Math.max(this.expandedOffset, this.paddingTopSystemWindowInsets ? 0 : this.insetTop);
    }

    public float getHalfExpandedRatio() {
        return this.halfExpandedRatio;
    }

    public float getHideFriction() {
        return this.hideFriction;
    }

    public int getLastStableState() {
        return this.lastStableState;
    }

    i getMaterialShapeDrawable() {
        return this.materialShapeDrawable;
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public int getSignificantVelocityThreshold() {
        return this.significantVelocityThreshold;
    }

    public int getState() {
        return this.state;
    }

    @Override // g4.b
    public void handleBackInvoked() {
        g4.e eVar = this.bottomContainerBackHelper;
        if (eVar == null) {
            return;
        }
        androidx.activity.b bVarC = eVar.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            setState(this.hideable ? 5 : 4);
        } else if (this.hideable) {
            this.bottomContainerBackHelper.h(bVarC, new b());
        } else {
            this.bottomContainerBackHelper.i(bVarC, null);
            setState(4);
        }
    }

    public boolean isFitToContents() {
        return this.fitToContents;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.gestureInsetBottomIgnored;
    }

    public boolean isHideable() {
        return this.hideable;
    }

    public boolean isHideableWhenDragging() {
        return true;
    }

    public boolean isNestedScrollingCheckEnabled() {
        return true;
    }

    public boolean isShouldRemoveExpandedCorners() {
        return this.shouldRemoveExpandedCorners;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onAttachedToLayoutParams(CoordinatorLayout.f fVar) {
        super.onAttachedToLayoutParams(fVar);
        this.viewRef = null;
        this.viewDragHelper = null;
        this.bottomContainerBackHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.viewRef = null;
        this.viewDragHelper = null;
        this.bottomContainerBackHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i10;
        androidx.customview.widget.c cVar;
        if (!view.isShown() || !this.draggable) {
            this.ignoreEvents = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.initialY = (int) motionEvent.getY();
            if (this.state != 2) {
                WeakReference<View> weakReference = this.nestedScrollingChildRef;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && coordinatorLayout.z(view2, x10, this.initialY)) {
                    this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.touchingScrollingChild = true;
                }
            }
            this.ignoreEvents = this.activePointerId == -1 && !coordinatorLayout.z(view, x10, this.initialY);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.touchingScrollingChild = false;
            this.activePointerId = -1;
            if (this.ignoreEvents) {
                this.ignoreEvents = false;
                return false;
            }
        }
        if (!this.ignoreEvents && (cVar = this.viewDragHelper) != null && cVar.P(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
        View view3 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.ignoreEvents || this.state == 1 || coordinatorLayout.z(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.viewDragHelper == null || (i10 = this.initialY) == -1 || Math.abs(((float) i10) - motionEvent.getY()) <= ((float) this.viewDragHelper.z())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        if (m0.s(coordinatorLayout) && !m0.s(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            q(view);
            m0.F0(view, new com.google.android.material.bottomsheet.d(view));
            this.viewRef = new WeakReference<>(view);
            this.bottomContainerBackHelper = new g4.e(view);
            i iVar = this.materialShapeDrawable;
            if (iVar != null) {
                m0.n0(view, iVar);
                i iVar2 = this.materialShapeDrawable;
                float fR = this.elevation;
                if (fR == -1.0f) {
                    fR = m0.r(view);
                }
                iVar2.setElevation(fR);
            } else {
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    m0.o0(view, colorStateList);
                }
            }
            updateAccessibilityActions();
            if (m0.t(view) == 0) {
                m0.t0(view, 1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = androidx.customview.widget.c.o(coordinatorLayout, this.dragCallback);
        }
        int top = view.getTop();
        coordinatorLayout.G(view, i10);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.childHeight = height;
        int iMin = this.parentHeight;
        int i11 = iMin - height;
        int i12 = this.insetTop;
        if (i11 < i12) {
            if (this.paddingTopSystemWindowInsets) {
                int i13 = this.maxHeight;
                if (i13 != -1) {
                    iMin = Math.min(iMin, i13);
                }
                this.childHeight = iMin;
            } else {
                int iMin2 = iMin - i12;
                int i14 = this.maxHeight;
                if (i14 != -1) {
                    iMin2 = Math.min(iMin2, i14);
                }
                this.childHeight = iMin2;
            }
        }
        this.fitToContentsOffset = Math.max(0, this.parentHeight - this.childHeight);
        calculateHalfExpandedOffset();
        calculateCollapsedOffset();
        int i15 = this.state;
        if (i15 == 3) {
            m0.U(view, getExpandedOffset());
        } else if (i15 == 6) {
            m0.U(view, this.halfExpandedOffset);
        } else if (this.hideable && i15 == 5) {
            m0.U(view, this.parentHeight);
        } else if (i15 == 4) {
            m0.U(view, this.collapsedOffset);
        } else if (i15 == 1 || i15 == 2) {
            m0.U(view, top - view.getTop());
        }
        u(this.state, false);
        this.nestedScrollingChildRef = new WeakReference<>(findScrollingChild(view));
        for (int i16 = 0; i16 < this.callbacks.size(); i16++) {
            this.callbacks.get(i16).onLayout(view);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v10, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v10.getLayoutParams();
        v10.measure(i(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.maxWidth, marginLayoutParams.width), i(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, this.maxHeight, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, View view, View view2, float f10, float f11) {
        WeakReference<View> weakReference;
        if (isNestedScrollingCheckEnabled() && (weakReference = this.nestedScrollingChildRef) != null && view2 == weakReference.get()) {
            return this.state != 3 || super.onNestedPreFling(coordinatorLayout, view, view2, f10, f11);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        View view3 = weakReference != null ? weakReference.get() : null;
        if (!isNestedScrollingCheckEnabled() || view2 == view3) {
            int top = view.getTop();
            int i13 = top - i11;
            if (i11 > 0) {
                if (i13 < getExpandedOffset()) {
                    int expandedOffset = top - getExpandedOffset();
                    iArr[1] = expandedOffset;
                    m0.U(view, -expandedOffset);
                    setStateInternal(3);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i11;
                    m0.U(view, -i11);
                    setStateInternal(1);
                }
            } else if (i11 < 0 && !view2.canScrollVertically(-1)) {
                if (i13 > this.collapsedOffset && !e()) {
                    int i14 = top - this.collapsedOffset;
                    iArr[1] = i14;
                    m0.U(view, -i14);
                    setStateInternal(4);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i11;
                    m0.U(view, -i11);
                    setStateInternal(1);
                }
            }
            dispatchOnSlide(view.getTop());
            this.lastNestedScrollDy = i11;
            this.nestedScrolled = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, view, savedState.getSuperState());
        o(savedState);
        int i10 = savedState.f9032a;
        if (i10 == 1 || i10 == 2) {
            this.state = 4;
            this.lastStableState = 4;
        } else {
            this.state = i10;
            this.lastStableState = i10;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, view), this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i10 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00a9  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.getExpandedOffset()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.setStateInternal(r0)
            return
        Lf:
            boolean r3 = r2.isNestedScrollingCheckEnabled()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference<android.view.View> r3 = r2.nestedScrollingChildRef
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.nestedScrolled
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.lastNestedScrollDy
            r5 = 6
            if (r3 <= 0) goto L39
            boolean r3 = r2.fitToContents
            if (r3 == 0) goto L2f
            goto Laa
        L2f:
            int r3 = r4.getTop()
            int r6 = r2.halfExpandedOffset
            if (r3 <= r6) goto Laa
            goto La9
        L39:
            boolean r3 = r2.hideable
            if (r3 == 0) goto L49
            float r3 = r2.getYVelocity()
            boolean r3 = r2.shouldHide(r4, r3)
            if (r3 == 0) goto L49
            r0 = 5
            goto Laa
        L49:
            int r3 = r2.lastNestedScrollDy
            r6 = 4
            if (r3 != 0) goto L8e
            int r3 = r4.getTop()
            boolean r1 = r2.fitToContents
            if (r1 == 0) goto L68
            int r5 = r2.fitToContentsOffset
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L92
            goto Laa
        L68:
            int r1 = r2.halfExpandedOffset
            if (r3 >= r1) goto L7e
            int r1 = r2.collapsedOffset
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L77
            goto Laa
        L77:
            boolean r3 = r2.shouldSkipHalfExpandedStateWhenDragging()
            if (r3 == 0) goto La9
            goto L92
        L7e:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
            goto La9
        L8e:
            boolean r3 = r2.fitToContents
            if (r3 == 0) goto L94
        L92:
            r0 = r6
            goto Laa
        L94:
            int r3 = r4.getTop()
            int r0 = r2.halfExpandedOffset
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.collapsedOffset
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
        La9:
            r0 = r5
        Laa:
            r3 = 0
            r2.s(r4, r0, r3)
            r2.nestedScrolled = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        if (r()) {
            this.viewDragHelper.F(motionEvent);
        }
        if (actionMasked == 0) {
            reset();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (r() && actionMasked == 2 && !this.ignoreEvents && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.z()) {
            this.viewDragHelper.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.ignoreEvents;
    }

    public void removeBottomSheetCallback(g gVar) {
        this.callbacks.remove(gVar);
    }

    void setAccessibilityDelegateView(View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.accessibilityDelegateViewRef) == null) {
            this.accessibilityDelegateViewRef = new WeakReference<>(view);
            t(view, 1);
        } else {
            f(weakReference.get(), 1);
            this.accessibilityDelegateViewRef = null;
        }
    }

    @Deprecated
    public void setBottomSheetCallback(g gVar) {
        Log.w(TAG, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        this.callbacks.clear();
        if (gVar != null) {
            this.callbacks.add(gVar);
        }
    }

    public void setDraggable(boolean z10) {
        this.draggable = z10;
    }

    public void setExpandedOffset(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.expandedOffset = i10;
        u(this.state, true);
    }

    public void setFitToContents(boolean z10) {
        if (this.fitToContents == z10) {
            return;
        }
        this.fitToContents = z10;
        if (this.viewRef != null) {
            calculateCollapsedOffset();
        }
        setStateInternal((this.fitToContents && this.state == 6) ? 3 : this.state);
        u(this.state, true);
        updateAccessibilityActions();
    }

    public void setGestureInsetBottomIgnored(boolean z10) {
        this.gestureInsetBottomIgnored = z10;
    }

    public void setHalfExpandedRatio(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.halfExpandedRatio = f10;
        if (this.viewRef != null) {
            calculateHalfExpandedOffset();
        }
    }

    public void setHideFriction(float f10) {
        this.hideFriction = f10;
    }

    public void setHideable(boolean z10) {
        if (this.hideable != z10) {
            this.hideable = z10;
            if (!z10 && this.state == 5) {
                setState(4);
            }
            updateAccessibilityActions();
        }
    }

    public void setHideableInternal(boolean z10) {
        this.hideable = z10;
    }

    public void setMaxHeight(int i10) {
        this.maxHeight = i10;
    }

    public void setMaxWidth(int i10) {
        this.maxWidth = i10;
    }

    public void setPeekHeight(int i10) {
        setPeekHeight(i10, false);
    }

    public void setSaveFlags(int i10) {
        this.saveFlags = i10;
    }

    public void setShouldRemoveExpandedCorners(boolean z10) {
        if (this.shouldRemoveExpandedCorners != z10) {
            this.shouldRemoveExpandedCorners = z10;
            u(getState(), true);
        }
    }

    public void setSignificantVelocityThreshold(int i10) {
        this.significantVelocityThreshold = i10;
    }

    public void setSkipCollapsed(boolean z10) {
        this.skipCollapsed = z10;
    }

    public void setState(int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.hideable && i10 == 5) {
            Log.w(TAG, "Cannot set state: " + i10);
            return;
        }
        int i11 = (i10 == 6 && this.fitToContents && j(i10) <= this.fitToContentsOffset) ? 3 : i10;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            setStateInternal(i10);
        } else {
            V v10 = this.viewRef.get();
            p(v10, new a(v10, i11));
        }
    }

    void setStateInternal(int i10) {
        V v10;
        if (this.state == i10) {
            return;
        }
        this.state = i10;
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.hideable && i10 == 5)) {
            this.lastStableState = i10;
        }
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            updateImportantForAccessibility(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            updateImportantForAccessibility(false);
        }
        u(i10, true);
        for (int i11 = 0; i11 < this.callbacks.size(); i11++) {
            this.callbacks.get(i11).onStateChanged(v10, i10);
        }
        updateAccessibilityActions();
    }

    public boolean shouldExpandOnUpwardDrag(long j10, float f10) {
        return false;
    }

    boolean shouldHide(View view, float f10) {
        if (this.skipCollapsed) {
            return true;
        }
        if (isHideableWhenDragging() && view.getTop() >= this.collapsedOffset) {
            return Math.abs((((float) view.getTop()) + (f10 * this.hideFriction)) - ((float) this.collapsedOffset)) / ((float) calculatePeekHeight()) > 0.5f;
        }
        return false;
    }

    public boolean shouldSkipHalfExpandedStateWhenDragging() {
        return false;
    }

    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // g4.b
    public void startBackProgress(androidx.activity.b bVar) {
        g4.e eVar = this.bottomContainerBackHelper;
        if (eVar == null) {
            return;
        }
        eVar.j(bVar);
    }

    @Override // g4.b
    public void updateBackProgress(androidx.activity.b bVar) {
        g4.e eVar = this.bottomContainerBackHelper;
        if (eVar == null) {
            return;
        }
        eVar.l(bVar);
    }

    private class h {

        /* JADX INFO: renamed from: a */
        private int f9048a;

        /* JADX INFO: renamed from: b */
        private boolean f9049b;

        /* JADX INFO: renamed from: c */
        private final Runnable f9050c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.f9049b = false;
                androidx.customview.widget.c cVar = BottomSheetBehavior.this.viewDragHelper;
                if (cVar != null && cVar.m(true)) {
                    h hVar = h.this;
                    hVar.c(hVar.f9048a);
                    return;
                }
                h hVar2 = h.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.state == 2) {
                    bottomSheetBehavior.setStateInternal(hVar2.f9048a);
                }
            }
        }

        private h() {
            this.f9050c = new a();
        }

        void c(int i10) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.viewRef;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f9048a = i10;
            if (this.f9049b) {
                return;
            }
            m0.a0(BottomSheetBehavior.this.viewRef.get(), this.f9050c);
            this.f9049b = true;
        }

        /* synthetic */ h(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }
    }

    public final void setPeekHeight(int i10, boolean z10) {
        if (i10 == -1) {
            if (this.peekHeightAuto) {
                return;
            } else {
                this.peekHeightAuto = true;
            }
        } else {
            if (!this.peekHeightAuto && this.peekHeight == i10) {
                return;
            }
            this.peekHeightAuto = false;
            this.peekHeight = Math.max(0, i10);
        }
        v(z10);
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        final int f9032a;

        /* JADX INFO: renamed from: b */
        int f9033b;

        /* JADX INFO: renamed from: c */
        boolean f9034c;

        /* JADX INFO: renamed from: f */
        boolean f9035f;

        /* JADX INFO: renamed from: h */
        boolean f9036h;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f9032a = parcel.readInt();
            this.f9033b = parcel.readInt();
            this.f9034c = parcel.readInt() == 1;
            this.f9035f = parcel.readInt() == 1;
            this.f9036h = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f9032a);
            parcel.writeInt(this.f9033b);
            parcel.writeInt(this.f9034c ? 1 : 0);
            parcel.writeInt(this.f9035f ? 1 : 0);
            parcel.writeInt(this.f9036h ? 1 : 0);
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior bottomSheetBehavior) {
            super(parcelable);
            this.f9032a = bottomSheetBehavior.state;
            this.f9033b = bottomSheetBehavior.peekHeight;
            this.f9034c = bottomSheetBehavior.fitToContents;
            this.f9035f = bottomSheetBehavior.hideable;
            this.f9036h = bottomSheetBehavior.skipCollapsed;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new h(this, null);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.hideFriction = 0.1f;
        this.callbacks = new ArrayList<>();
        this.initialY = -1;
        this.expandHalfwayActionIds = new SparseIntArray();
        this.dragCallback = new e();
        this.peekHeightGestureInsetBuffer = context.getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.backgroundTint = i4.c.a(context, typedArrayObtainStyledAttributes, R$styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.shapeAppearanceModelDefault = n.e(context, attributeSet, R$attr.bottomSheetStyle, DEF_STYLE_RES).m();
        }
        h(context);
        createShapeValueAnimator();
        this.elevation = typedArrayObtainStyledAttributes.getDimension(R$styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_android_maxHeight, -1));
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            setPeekHeight(i10);
        } else {
            setPeekHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        setHideable(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        setHalfExpandedRatio(typedArrayObtainStyledAttributes.getFloat(R$styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            setExpandedOffset(typedValuePeekValue2.data);
        } else {
            setExpandedOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        setSignificantVelocityThreshold(typedArrayObtainStyledAttributes.getInt(R$styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500));
        this.paddingBottomSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.paddingLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.paddingRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.paddingTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.marginLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.marginRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.marginTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        this.shouldRemoveExpandedCorners = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
        typedArrayObtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}

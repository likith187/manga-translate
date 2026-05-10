package com.coui.appcompat.scrollview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import com.coui.appcompat.animation.COUIPhysicalAnimationUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.scroll.COUIIOverScroller;
import com.coui.appcompat.scroll.SpringOverScroller;
import com.coui.appcompat.version.COUIVersionUtil;
import com.coui.appcompat.view.ViewNative;
import com.support.scrollview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIHorizontalScrollView extends HorizontalScrollView {
    static final int ANIMATED_SCROLL_GAP = 250;
    private static final float DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE = 20.0f;
    private static final int DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD = 2500;
    private static final double DEGREE_TO_ARC_CONSTANT = 0.017453292519943295d;
    private static final int FLING_SCROLL_THRESHOLD = 1500;
    private static final float HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE = 3.2f;
    private static final int INVALID_POINTER = -1;
    private static final int OVER_SCROLL_TOUCH_DURATION_THRESHOLD = 100;
    private static final int OVER_SCROLL_TOUCH_OFFSET_THRESHOLD = 10;
    private static final int SLOW_SCROLL_THRESHOLD = 250;
    private static final String TAG = "COUIHorScrollView";
    private float mAbortVelocityX;
    private int mActivePointerId;
    private boolean mAvoidAccidentalTouch;
    private View mChildToScrollTo;
    private int mDispatchEventVelocityThreshold;
    private boolean mEnableDispatchEventWhileOverScrolling;
    private boolean mEnableDispatchEventWhileScrolling;
    private boolean mEnableOptimizedScroll;
    private boolean mEnableVibrator;
    private float mEventFilterAngle;
    private float mFastFlingVelocity;
    private boolean mFillViewport;
    private boolean mFlingStrictSpan;
    private float mFlingVelocityX;
    private float mHorizontalScrollFactor;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private boolean mIsBeingDragged;
    private Boolean mIsColorDevice;
    private boolean mIsLayoutDirty;
    private boolean mIsTouchDownWhileOverScrolling;
    private boolean mIsTouchDownWhileSlowScrolling;
    private boolean mItemClickableWhileOverScrolling;
    private boolean mItemClickableWhileSlowScrolling;
    private int mLastMotionX;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private COUIIOverScroller mOverScroller;
    private int mOverflingDistance;
    private int mOverscrollDistance;
    private int mScreenWidth;
    private boolean mScrollStrictSpan;
    private boolean mSmoothScrollingEnabled;
    private SpringOverScroller mSpringOverScroller;
    private final Rect mTempRect;
    private int mTouchSlop;
    private long mTouchTime;
    private VelocityTracker mVelocityTracker;

    static class COUISavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<COUISavedState> CREATOR = new Parcelable.Creator<COUISavedState>() { // from class: com.coui.appcompat.scrollview.COUIHorizontalScrollView.COUISavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public COUISavedState createFromParcel(Parcel parcel) {
                return new COUISavedState(parcel, COUISavedState.class.getClassLoader());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public COUISavedState[] newArray(int i10) {
                return new COUISavedState[i10];
            }
        };
        public int scrollOffsetFromStart;

        COUISavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollOffsetFromStart + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.scrollOffsetFromStart);
        }

        public COUISavedState(Parcel parcel) {
            super(parcel);
            this.scrollOffsetFromStart = parcel.readInt();
        }

        public COUISavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.scrollOffsetFromStart = parcel.readInt();
        }
    }

    public COUIHorizontalScrollView(Context context) {
        this(context, null);
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getWidth() < (childAt.getWidth() + getPaddingLeft()) + getPaddingRight();
        }
        return false;
    }

    private boolean dispatchClickEvent(View view, MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = true;
        int[] iArr = {0, 1};
        for (int i10 = 0; i10 < 2; i10++) {
            motionEvent.setAction(iArr[i10]);
            zDispatchTouchEvent &= view.dispatchTouchEvent(motionEvent);
        }
        return zDispatchTouchEvent;
    }

    private void doScrollX(int i10) {
        if (i10 != 0) {
            if (this.mSmoothScrollingEnabled) {
                smoothCOUIScrollBy(i10, 0);
            } else {
                scrollBy(i10, 0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.view.View findFocusableViewInBounds(boolean r12, int r13, int r14) {
        /*
            r11 = this;
            r0 = 2
            java.util.ArrayList r11 = r11.getFocusables(r0)
            int r0 = r11.size()
            r1 = 0
            r2 = 0
            r3 = r2
            r4 = r3
        Ld:
            if (r3 >= r0) goto L53
            java.lang.Object r5 = r11.get(r3)
            android.view.View r5 = (android.view.View) r5
            int r6 = r5.getLeft()
            int r7 = r5.getRight()
            if (r13 >= r7) goto L50
            if (r6 >= r14) goto L50
            r8 = 1
            if (r13 >= r6) goto L28
            if (r7 >= r14) goto L28
            r9 = r8
            goto L29
        L28:
            r9 = r2
        L29:
            if (r1 != 0) goto L2e
            r1 = r5
            r4 = r9
            goto L50
        L2e:
            if (r12 == 0) goto L36
            int r10 = r1.getLeft()
            if (r6 < r10) goto L3e
        L36:
            if (r12 != 0) goto L40
            int r6 = r1.getRight()
            if (r7 <= r6) goto L40
        L3e:
            r6 = r8
            goto L41
        L40:
            r6 = r2
        L41:
            if (r4 == 0) goto L48
            if (r9 == 0) goto L50
            if (r6 == 0) goto L50
            goto L4f
        L48:
            if (r9 == 0) goto L4d
            r1 = r5
            r4 = r8
            goto L50
        L4d:
            if (r6 == 0) goto L50
        L4f:
            r1 = r5
        L50:
            int r3 = r3 + 1
            goto Ld
        L53:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.scrollview.COUIHorizontalScrollView.findFocusableViewInBounds(boolean, int, int):android.view.View");
    }

    private View findFocusableViewInMyBounds(boolean z10, int i10, View view) {
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength() / 2;
        int i11 = i10 + horizontalFadingEdgeLength;
        int width = (i10 + getWidth()) - horizontalFadingEdgeLength;
        return (view == null || view.getLeft() >= width || view.getRight() <= i11) ? findFocusableViewInBounds(z10, i11, width) : view;
    }

    private View findViewToDispatchClickEvent(MotionEvent motionEvent) {
        View view = null;
        if (!isClickEvent(motionEvent)) {
            return null;
        }
        Rect rect = new Rect();
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0 || childAt.getAnimation() != null) {
                childAt.getHitRect(rect);
                boolean zContains = rect.contains(((int) motionEvent.getX()) + getScrollX(), ((int) motionEvent.getY()) + getScrollY());
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.offsetLocation(getScrollX() - childAt.getLeft(), getScrollY() - childAt.getTop());
                if (zContains && dispatchClickEvent(childAt, motionEventObtain)) {
                    view = childAt;
                }
                motionEventObtain.recycle();
            }
        }
        return view;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getWidth() - ((getWidth() - getPaddingLeft()) - getPaddingRight()));
        }
        return 0;
    }

    private float getVelocityAlongScrollableDirection() {
        if (this.mOverScroller == null || (getNestedScrollAxes() & 2) != 0) {
            return 0.0f;
        }
        return this.mOverScroller.getCurrVelocityX();
    }

    private boolean hookIfNeedInterceptMoveEvent(float f10, float f11) {
        return !(this.mEnableDispatchEventWhileScrolling || (this.mEnableDispatchEventWhileOverScrolling && isOverScrolling())) || f11 == 0.0f || ((double) Math.abs(f10 / f11)) > Math.tan(((double) this.mEventFilterAngle) * DEGREE_TO_ARC_CONSTANT);
    }

    private boolean inChild(int i10, int i11) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollX = getScrollX();
        View childAt = getChildAt(0);
        return i11 >= childAt.getTop() && i11 < childAt.getBottom() && i10 >= childAt.getLeft() - scrollX && i10 < childAt.getRight() - scrollX;
    }

    private void initCOUIHorizontalScrollView(Context context) {
        if (this.mOverScroller == null) {
            SpringOverScroller springOverScroller = new SpringOverScroller(context);
            this.mSpringOverScroller = springOverScroller;
            springOverScroller.setSpringBackTensionMultiple(HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE);
            this.mSpringOverScroller.setIsScrollView(true);
            this.mOverScroller = this.mSpringOverScroller;
            setEnableFlingSpeedIncrease(true);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        int i10 = displayMetrics.widthPixels;
        this.mOverscrollDistance = i10;
        this.mOverflingDistance = i10;
        this.mScreenWidth = i10;
        this.mHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
        setOverScrollMode(0);
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private boolean isClickEvent(MotionEvent motionEvent) {
        int x10 = (int) (motionEvent.getX() - this.mInitialTouchX);
        return System.currentTimeMillis() - this.mTouchTime < 100 && ((int) Math.sqrt((double) (x10 * x10))) < 10;
    }

    private Boolean isColorDevice() {
        if (this.mIsColorDevice == null) {
            this.mIsColorDevice = Boolean.valueOf(COUIVersionUtil.isColorOS());
        }
        return this.mIsColorDevice;
    }

    private boolean isFastFling(float f10, float f11) {
        return !this.mAvoidAccidentalTouch || Math.abs(f10) > this.mFastFlingVelocity || Math.abs(f11) > this.mFastFlingVelocity;
    }

    private boolean isOffScreen(View view) {
        return !isWithinDeltaOfScreen(view, 0);
    }

    private boolean isOverScrolling() {
        return getScrollX() < 0 || getScrollX() > getScrollRange();
    }

    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    private boolean isWithinDeltaOfScreen(View view, int i10) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        return this.mTempRect.right + i10 >= getScrollX() && this.mTempRect.left - i10 <= getScrollX() + getWidth();
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i10 = action == 0 ? 1 : 0;
            int x10 = (int) motionEvent.getX(i10);
            this.mLastMotionX = x10;
            this.mInitialTouchX = x10;
            this.mInitialTouchY = (int) motionEvent.getY(i10);
            this.mActivePointerId = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void performFeedback() {
        if (this.mEnableVibrator) {
            performHapticFeedback(COUIHapticFeedbackConstants.EDGE_LIST_VIBRATE);
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private boolean scrollAndFocus(int i10, int i11, int i12) {
        int width = getWidth();
        int scrollX = getScrollX();
        int i13 = width + scrollX;
        boolean z10 = false;
        boolean z11 = i10 == 17;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z11, i11, i12);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if (i11 < scrollX || i12 > i13) {
            doScrollX(z11 ? i11 - scrollX : i12 - i13);
            z10 = true;
        }
        if (viewFindFocusableViewInBounds != findFocus()) {
            viewFindFocusableViewInBounds.requestFocus(i10);
        }
        return z10;
    }

    private void scrollToChild(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (iComputeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean z10) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z11 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z11) {
            if (z10) {
                scrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
            } else {
                smoothCOUIScrollBy(iComputeScrollDeltaToGetChildRectOnScreen, 0);
            }
        }
        return z11;
    }

    @Override // android.widget.HorizontalScrollView
    public boolean arrowScroll(int i10) {
        int right;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !isWithinDeltaOfScreen(viewFindNextFocus, maxScrollAmount)) {
            if (i10 == 17 && getScrollX() < maxScrollAmount) {
                maxScrollAmount = getScrollX();
            } else if (i10 == 66 && getChildCount() > 0 && (right = getChildAt(0).getRight() - (getScrollX() + getWidth())) < maxScrollAmount) {
                maxScrollAmount = right;
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 66) {
                maxScrollAmount = -maxScrollAmount;
            }
            doScrollX(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScrollX(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            viewFindNextFocus.requestFocus(i10);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || !isOffScreen(viewFindFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void computeScroll() {
        COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
        if (cOUIIOverScroller == null || !cOUIIOverScroller.computeScrollOffset()) {
            if (this.mFlingStrictSpan) {
                this.mFlingStrictSpan = false;
                return;
            }
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int cOUICurrX = this.mOverScroller.getCOUICurrX();
        int cOUICurrY = this.mOverScroller.getCOUICurrY();
        if (scrollX != cOUICurrX || scrollY != cOUICurrY) {
            overScrollBy(cOUICurrX - scrollX, cOUICurrY - scrollY, scrollX, scrollY, getScrollRange(), 0, this.mOverflingDistance, 0, false);
            onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
        }
        if (awakenScrollBars()) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        COUIIOverScroller cOUIIOverScroller;
        if (this.mEnableDispatchEventWhileScrolling || (this.mEnableDispatchEventWhileOverScrolling && isOverScrolling())) {
            float velocityAlongScrollableDirection = getVelocityAlongScrollableDirection();
            if (motionEvent.getActionMasked() == 0 && this.mDispatchEventVelocityThreshold >= Math.abs(velocityAlongScrollableDirection)) {
                COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
                float f10 = 0.0f;
                if (cOUIIOverScroller2 != null && cOUIIOverScroller2.getCurrVelocityX() != 0.0f) {
                    f10 = this.mFlingVelocityX;
                }
                this.mAbortVelocityX = f10;
                COUIIOverScroller cOUIIOverScroller3 = this.mOverScroller;
                if (cOUIIOverScroller3 != null) {
                    cOUIIOverScroller3.abortAnimation();
                }
                stopNestedScroll();
            }
            if ((motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) && (cOUIIOverScroller = this.mOverScroller) != null && cOUIIOverScroller.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                postInvalidateOnAnimation();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView
    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused()) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 66);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(66)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 21) {
            return !keyEvent.isAltPressed() ? arrowScroll(17) : fullScroll(17);
        }
        if (keyCode == 22) {
            return !keyEvent.isAltPressed() ? arrowScroll(66) : fullScroll(66);
        }
        if (keyCode != 62) {
            return false;
        }
        pageScroll(keyEvent.isShiftPressed() ? 17 : 66);
        return false;
    }

    @Override // android.widget.HorizontalScrollView
    public void fling(int i10) {
        this.mFlingVelocityX = i10;
        if (getChildCount() > 0) {
            int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
            int iMax = Math.max(0, (getChildAt(0).getRight() - getPaddingLeft()) - width);
            COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
            if (cOUIIOverScroller != null) {
                cOUIIOverScroller.fling(getScrollX(), getScrollY(), i10, 0, 0, iMax, 0, 0, width / 2, 0);
            }
            if (!this.mFlingStrictSpan) {
                this.mFlingStrictSpan = true;
            }
            boolean z10 = i10 > 0;
            View viewFindFocus = findFocus();
            COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
            View viewFindFocusableViewInMyBounds = findFocusableViewInMyBounds(z10, cOUIIOverScroller2 != null ? cOUIIOverScroller2.getCOUIFinalX() : 0, viewFindFocus);
            if (viewFindFocusableViewInMyBounds == null) {
                viewFindFocusableViewInMyBounds = this;
            }
            if (viewFindFocusableViewInMyBounds != viewFindFocus) {
                viewFindFocusableViewInMyBounds.requestFocus(z10 ? 66 : 17);
            }
            postInvalidateOnAnimation();
        }
    }

    @Override // android.widget.HorizontalScrollView
    public boolean fullScroll(int i10) {
        boolean z10 = i10 == 66;
        int width = getWidth();
        Rect rect = this.mTempRect;
        rect.left = 0;
        rect.right = width;
        if (z10 && getChildCount() > 0) {
            this.mTempRect.right = getChildAt(0).getRight();
            Rect rect2 = this.mTempRect;
            rect2.left = rect2.right - width;
        }
        Rect rect3 = this.mTempRect;
        return scrollAndFocus(i10, rect3.left, rect3.right);
    }

    public int getScrollableRange() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    protected void invalidateParentIfNeeded() {
        if (isHardwareAccelerated() && (getParent() instanceof View)) {
            ((View) getParent()).invalidate();
        }
    }

    public boolean isEnableFlingSpeedIncrease() {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            return springOverScroller.isEnableFlingSpeedIncrease();
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView
    public boolean isFillViewport() {
        return this.mFillViewport;
    }

    @Override // android.widget.HorizontalScrollView
    public boolean isSmoothScrollingEnabled() {
        return this.mSmoothScrollingEnabled;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mScrollStrictSpan) {
            this.mScrollStrictSpan = false;
        }
        if (this.mFlingStrictSpan) {
            this.mFlingStrictSpan = false;
        }
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.cancelCallback();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 8 && !this.mIsBeingDragged) {
            int iRound = Math.round((motionEvent.isFromSource(2) ? (motionEvent.getMetaState() & 1) != 0 ? -motionEvent.getAxisValue(9) : motionEvent.getAxisValue(10) : motionEvent.isFromSource(4194304) ? motionEvent.getAxisValue(26) : 0.0f) * this.mHorizontalScrollFactor);
            if (iRound != 0) {
                int scrollRange = getScrollRange();
                int scrollX = getScrollX();
                int i10 = iRound + scrollX;
                if (i10 < 0) {
                    scrollRange = 0;
                } else if (i10 <= scrollRange) {
                    scrollRange = i10;
                }
                if (scrollRange != scrollX) {
                    super.scrollTo(scrollRange, getScrollY());
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2  */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.scrollview.COUIHorizontalScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mFillViewport && View.MeasureSpec.getMode(i10) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int paddingLeft = getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin;
            int paddingTop = getPaddingTop() + getPaddingBottom() + layoutParams.topMargin + layoutParams.bottomMargin;
            int measuredWidth = getMeasuredWidth() - paddingLeft;
            if (childAt.getMeasuredWidth() < measuredWidth) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), ViewGroup.getChildMeasureSpec(i11, paddingTop, layoutParams.height));
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        if (getScrollY() == i11 && getScrollX() == i10) {
            return;
        }
        if ((i10 < 0 || i10 > getScrollRange()) && this.mFlingStrictSpan) {
            int scrollRange = i10 >= getScrollRange() ? getScrollRange() : 0;
            i10 = COUIPhysicalAnimationUtil.calcOverFlingDecelerateDist(scrollRange, i10 - scrollRange, this.mScreenWidth);
        }
        if (getOverScrollMode() == 2 || (getOverScrollMode() == 1 && getChildAt(0).getWidth() <= getScrollableRange())) {
            i10 = Math.min(Math.max(i10, 0), getScrollRange());
        }
        if (getScrollX() >= 0 && i10 < 0 && this.mFlingStrictSpan) {
            performFeedback();
            SpringOverScroller springOverScroller = this.mSpringOverScroller;
            if (springOverScroller != null) {
                springOverScroller.notifyHorizontalEdgeReached(i10, 0, this.mOverflingDistance);
            }
        }
        if (getScrollX() <= getScrollRange() && i10 > getScrollRange() && this.mFlingStrictSpan) {
            performFeedback();
            SpringOverScroller springOverScroller2 = this.mSpringOverScroller;
            if (springOverScroller2 != null) {
                springOverScroller2.notifyHorizontalEdgeReached(i10, getScrollRange(), this.mOverflingDistance);
            }
        }
        if (isColorDevice().booleanValue()) {
            ViewNative.setScrollX(this, i10);
            ViewNative.setScrollY(this, i11);
        } else {
            super.scrollTo(i10, i11);
        }
        invalidateParentIfNeeded();
        awakenScrollBars();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (i10 == 2) {
            i10 = 66;
        } else if (i10 == 1) {
            i10 = 17;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i10) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        if (viewFindNextFocus == null || isOffScreen(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i10, rect);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        int i14 = getContext().getResources().getDisplayMetrics().widthPixels;
        this.mOverscrollDistance = i14;
        this.mOverflingDistance = i14;
        this.mScreenWidth = i14;
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !isWithinDeltaOfScreen(viewFindFocus, getRight() - getLeft())) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScrollX(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        initVelocityTrackerIfNotExists();
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action == 1) {
                boolean zIsOverScrolling = isOverScrolling();
                boolean z10 = this.mItemClickableWhileSlowScrolling && this.mIsTouchDownWhileSlowScrolling;
                boolean z11 = this.mItemClickableWhileOverScrolling && this.mIsTouchDownWhileOverScrolling && zIsOverScrolling;
                if (z10 || z11) {
                    findViewToDispatchClickEvent(motionEvent);
                }
                if (this.mIsBeingDragged) {
                    initVelocityTrackerIfNotExists();
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
                    if (Math.abs(xVelocity) <= this.mMinimumVelocity) {
                        COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
                        if (cOUIIOverScroller != null && cOUIIOverScroller.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                            postInvalidateOnAnimation();
                        }
                    } else if (getScrollX() < 0) {
                        if (xVelocity > -1500) {
                            COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
                            if (cOUIIOverScroller2 != null) {
                                cOUIIOverScroller2.setCurrVelocityX(-xVelocity);
                            }
                            COUIIOverScroller cOUIIOverScroller3 = this.mOverScroller;
                            if (cOUIIOverScroller3 != null && cOUIIOverScroller3.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                                postInvalidateOnAnimation();
                            }
                        } else {
                            fling(-xVelocity);
                        }
                    } else if (getScrollX() <= getScrollRange() || xVelocity >= FLING_SCROLL_THRESHOLD) {
                        fling(-xVelocity);
                    } else {
                        COUIIOverScroller cOUIIOverScroller4 = this.mOverScroller;
                        if (cOUIIOverScroller4 != null) {
                            cOUIIOverScroller4.setCurrVelocityX(-xVelocity);
                        }
                        COUIIOverScroller cOUIIOverScroller5 = this.mOverScroller;
                        if (cOUIIOverScroller5 != null && cOUIIOverScroller5.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                            postInvalidateOnAnimation();
                        }
                    }
                    if (getScrollX() < 0 || getScrollX() > getScrollRange()) {
                        performFeedback();
                    }
                    this.mActivePointerId = -1;
                    this.mIsBeingDragged = false;
                    recycleVelocityTracker();
                } else {
                    COUIIOverScroller cOUIIOverScroller6 = this.mOverScroller;
                    if (cOUIIOverScroller6 != null && cOUIIOverScroller6.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                        postInvalidateOnAnimation();
                    }
                }
            } else if (action == 2) {
                COUIIOverScroller cOUIIOverScroller7 = this.mOverScroller;
                if ((cOUIIOverScroller7 instanceof SpringOverScroller) && this.mEnableOptimizedScroll) {
                    ((SpringOverScroller) cOUIIOverScroller7).triggerCallback();
                }
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    Log.e(TAG, "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent");
                } else {
                    int x10 = (int) motionEvent.getX(iFindPointerIndex);
                    int iCalcRealOverScrollDist = this.mLastMotionX - x10;
                    if (!this.mIsBeingDragged && Math.abs(iCalcRealOverScrollDist) > this.mTouchSlop) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.mIsBeingDragged = true;
                        iCalcRealOverScrollDist = iCalcRealOverScrollDist > 0 ? iCalcRealOverScrollDist - this.mTouchSlop : iCalcRealOverScrollDist + this.mTouchSlop;
                    }
                    if (this.mIsBeingDragged) {
                        this.mLastMotionX = x10;
                        int scrollRange = getScrollRange();
                        if (getScrollX() < 0) {
                            iCalcRealOverScrollDist = COUIPhysicalAnimationUtil.calcRealOverScrollDist(iCalcRealOverScrollDist, getScrollX(), this.mOverscrollDistance);
                        } else if (getScrollX() > getScrollRange()) {
                            iCalcRealOverScrollDist = COUIPhysicalAnimationUtil.calcRealOverScrollDist(iCalcRealOverScrollDist, getScrollX() - getScrollRange(), this.mOverscrollDistance);
                        }
                        if (overScrollBy(iCalcRealOverScrollDist, 0, getScrollX(), 0, scrollRange, 0, this.mOverscrollDistance, 0, true) && !hasNestedScrollingParent()) {
                            this.mVelocityTracker.clear();
                        }
                    }
                }
            } else if (action != 3) {
                if (action == 6) {
                    onSecondaryPointerUp(motionEvent);
                }
            } else if (this.mIsBeingDragged && getChildCount() > 0) {
                COUIIOverScroller cOUIIOverScroller8 = this.mOverScroller;
                if (cOUIIOverScroller8 != null && cOUIIOverScroller8.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0)) {
                    postInvalidateOnAnimation();
                }
                this.mActivePointerId = -1;
                this.mIsBeingDragged = false;
                recycleVelocityTracker();
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            COUIIOverScroller cOUIIOverScroller9 = this.mOverScroller;
            if (cOUIIOverScroller9 != null && !cOUIIOverScroller9.isCOUIFinished() && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            COUIIOverScroller cOUIIOverScroller10 = this.mOverScroller;
            if (cOUIIOverScroller10 != null && !cOUIIOverScroller10.isCOUIFinished()) {
                this.mAbortVelocityX = this.mOverScroller.getCurrVelocityX() != 0.0f ? this.mFlingVelocityX : 0.0f;
                this.mOverScroller.abortAnimation();
                if (this.mFlingStrictSpan) {
                    this.mFlingStrictSpan = false;
                }
            }
            int x11 = (int) motionEvent.getX();
            this.mLastMotionX = x11;
            this.mInitialTouchX = x11;
            this.mInitialTouchY = (int) motionEvent.getY();
            this.mActivePointerId = motionEvent.getPointerId(0);
        }
        return true;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        SpringOverScroller springOverScroller;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0 || (springOverScroller = this.mSpringOverScroller) == null) {
            return;
        }
        springOverScroller.abortAnimation();
        this.mSpringOverScroller.cancelCallback();
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        onOverScrolled(i12 + i10, i13 + i11, false, false);
        return false;
    }

    @Override // android.widget.HorizontalScrollView
    public boolean pageScroll(int i10) {
        boolean z10 = i10 == 66;
        int width = getWidth();
        if (z10) {
            this.mTempRect.left = getScrollX() + width;
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                if (this.mTempRect.left + width > childAt.getRight()) {
                    this.mTempRect.left = childAt.getRight() - width;
                }
            }
        } else {
            this.mTempRect.left = getScrollX() - width;
            Rect rect = this.mTempRect;
            if (rect.left < 0) {
                rect.left = 0;
            }
        }
        Rect rect2 = this.mTempRect;
        int i11 = rect2.left;
        int i12 = width + i11;
        rect2.right = i12;
        return scrollAndFocus(i10, i11, i12);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (view2 != null && view2.getRevealOnFocusHint()) {
            if (this.mIsLayoutDirty) {
                this.mChildToScrollTo = view2;
            } else {
                scrollToChild(view2);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return scrollToChildRect(rect, z10);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    public void setAvoidAccidentalTouch(boolean z10) {
        this.mAvoidAccidentalTouch = z10;
    }

    public void setDispatchEventWhileOverScrolling(boolean z10) {
        this.mEnableDispatchEventWhileOverScrolling = z10;
    }

    public void setDispatchEventWhileScrolling(boolean z10) {
        this.mEnableDispatchEventWhileScrolling = z10;
    }

    public void setDispatchEventWhileScrollingThreshold(int i10) {
        this.mDispatchEventVelocityThreshold = i10;
    }

    public void setEnableFlingSpeedIncrease(boolean z10) {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.setEnableFlingSpeedIncrease(z10);
        }
    }

    public void setEventFilterTangent(float f10) {
        this.mEventFilterAngle = f10;
    }

    public void setFastFlingThreshold(float f10) {
        this.mFastFlingVelocity = Math.max(f10, 0.0f);
    }

    @Override // android.widget.HorizontalScrollView
    public void setFillViewport(boolean z10) {
        if (z10 != this.mFillViewport) {
            this.mFillViewport = z10;
            requestLayout();
        }
    }

    public void setIsUseOptimizedScroll(boolean z10) {
        this.mEnableOptimizedScroll = z10;
    }

    public void setItemClickableWhileOverScrolling(boolean z10) {
        this.mItemClickableWhileOverScrolling = z10;
    }

    public void setItemClickableWhileSlowScrolling(boolean z10) {
        this.mItemClickableWhileSlowScrolling = z10;
    }

    @Override // android.widget.HorizontalScrollView
    public void setSmoothScrollingEnabled(boolean z10) {
        this.mSmoothScrollingEnabled = z10;
    }

    public void setSpringOverScrollerDebug(boolean z10) {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.setDebug(z10);
        }
    }

    public final void smoothCOUIScrollBy(int i10, int i11) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
            int iMax = Math.max(0, getChildAt(0).getWidth() - ((getWidth() - getPaddingRight()) - getPaddingLeft()));
            int scrollX = getScrollX();
            int iMax2 = Math.max(0, Math.min(i10 + scrollX, iMax)) - scrollX;
            COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
            if (cOUIIOverScroller != null) {
                cOUIIOverScroller.startScroll(scrollX, getScrollY(), iMax2, 0);
            }
            postInvalidateOnAnimation();
        } else {
            COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
            if (cOUIIOverScroller2 != null && !cOUIIOverScroller2.isCOUIFinished()) {
                this.mAbortVelocityX = this.mOverScroller.getCurrVelocityX() != 0.0f ? this.mFlingVelocityX : 0.0f;
                this.mOverScroller.abortAnimation();
                if (this.mFlingStrictSpan) {
                    this.mFlingStrictSpan = false;
                }
            }
            scrollBy(i10, i11);
        }
        this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
    }

    public final void smoothCOUIScrollTo(int i10, int i11) {
        smoothCOUIScrollBy(i10 - getScrollX(), i11 - getScrollY());
    }

    public COUIHorizontalScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIHorizontalScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mScreenWidth = 0;
        this.mTempRect = new Rect();
        this.mOverScroller = null;
        this.mSpringOverScroller = null;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        this.mItemClickableWhileSlowScrolling = true;
        this.mItemClickableWhileOverScrolling = true;
        this.mEnableDispatchEventWhileScrolling = false;
        this.mEnableDispatchEventWhileOverScrolling = false;
        this.mDispatchEventVelocityThreshold = DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mFastFlingVelocity = 1500.0f;
        this.mAvoidAccidentalTouch = true;
        this.mScrollStrictSpan = false;
        this.mFlingStrictSpan = false;
        this.mEnableOptimizedScroll = true;
        this.mEnableVibrator = true;
        this.mIsColorDevice = null;
        initCOUIHorizontalScrollView(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIScrollView, i10, 0);
        this.mEnableVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIScrollView_couiScrollViewEnableVibrator, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public COUIHorizontalScrollView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mScreenWidth = 0;
        this.mTempRect = new Rect();
        this.mOverScroller = null;
        this.mSpringOverScroller = null;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        this.mItemClickableWhileSlowScrolling = true;
        this.mItemClickableWhileOverScrolling = true;
        this.mEnableDispatchEventWhileScrolling = false;
        this.mEnableDispatchEventWhileOverScrolling = false;
        this.mDispatchEventVelocityThreshold = DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mFastFlingVelocity = 1500.0f;
        this.mAvoidAccidentalTouch = true;
        this.mScrollStrictSpan = false;
        this.mFlingStrictSpan = false;
        this.mEnableOptimizedScroll = true;
        this.mEnableVibrator = true;
        this.mIsColorDevice = null;
        initCOUIHorizontalScrollView(context);
    }
}

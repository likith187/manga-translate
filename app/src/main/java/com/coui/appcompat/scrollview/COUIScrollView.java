package com.coui.appcompat.scrollview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
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
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.coui.appcompat.animation.COUIPhysicalAnimationUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.scroll.COUIIOverScroller;
import com.coui.appcompat.scroll.SpringOverScroller;
import com.coui.appcompat.version.COUIVersionUtil;
import com.coui.appcompat.view.ViewNative;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.support.scrollview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIScrollView extends ScrollView {
    static final int ANIMATED_SCROLL_GAP = 250;
    private static final boolean DEBUG = false;
    private static final int DEBUG_PAINT_TEXT_OFFSET_Y = 50;
    private static final int DEBUG_PAINT_TEXT_SIZE = 30;
    private static final float DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE = 20.0f;
    private static final int DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD = 2500;
    private static final double DEGREE_TO_ARC_CONSTANT = 0.017453292519943295d;
    private static final int FLING_SCROLL_THRESHOLD = 1500;
    private static final int INVALID_POINTER = -1;
    private static final int OVER_SCROLL_TOUCH_DURATION_THRESHOLD = 100;
    private static final int OVER_SCROLL_TOUCH_OFFSET_THRESHOLD = 10;
    private static final int SLOW_SCROLL_THRESHOLD = 250;
    private static final String TAG = "COUIScrollView";
    private static final float VERTICAL_SPRING_BACK_TENSION_MULTIPLE = 2.15f;
    private float mAbortVelocityY;
    private int mActivePointerId;
    private boolean mAvoidAccidentalTouch;
    private View mChildToScrollTo;
    private float mCustomOverScrollFactor;
    private Paint mDebugPaint;
    private int mDispatchEventVelocityThreshold;
    private boolean mEnableDispatchEventWhileOverScrolling;
    private boolean mEnableDispatchEventWhileScrolling;
    private boolean mEnableOptimizedScroll;
    private boolean mEnableVibrator;
    private float mEventFilterAngle;
    private float mFastFlingVelocity;
    private boolean mFillViewport;
    private boolean mFlingStrictSpan;
    private float mFlingVelocityY;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private boolean mIsBeingDragged;
    private Boolean mIsColorDevice;
    private boolean mIsLayoutDirty;
    private boolean mIsTouchDownWhileOverScrolling;
    private boolean mIsTouchDownWhileSlowScrolling;
    private boolean mItemClickableWhileOverScrolling;
    private boolean mItemClickableWhileSlowScrolling;
    private int mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mNestedYOffset;
    private int mOriginalOverScroll;
    private COUIIOverScroller mOverScroller;
    private int mOverflingDistance;
    private int mOverscrollDistance;
    private COUISavedState mSavedState;
    private int mScreenHeight;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;
    private boolean mScrollStrictSpan;
    private boolean mSmoothScrollingEnabled;
    private SpringOverScroller mSpringOverScroller;
    private final Rect mTempRect;
    private int mTouchSlop;
    private long mTouchTime;
    private VelocityTracker mVelocityTracker;
    private float mVerticalScrollFactor;

    static class COUISavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<COUISavedState> CREATOR = new Parcelable.Creator<COUISavedState>() { // from class: com.coui.appcompat.scrollview.COUIScrollView.COUISavedState.1
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
        public int scrollPosition;

        COUISavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "ScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.scrollPosition);
        }

        public COUISavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        public COUISavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.scrollPosition = parcel.readInt();
        }
    }

    public COUIScrollView(Context context) {
        super(context);
        this.mScreenHeight = 0;
        this.mTempRect = new Rect();
        this.mOverScroller = null;
        this.mSpringOverScroller = null;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mCustomOverScrollFactor = 1.0f;
        this.mActivePointerId = -1;
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mScrollStrictSpan = false;
        this.mFlingStrictSpan = false;
        this.mItemClickableWhileSlowScrolling = true;
        this.mItemClickableWhileOverScrolling = true;
        this.mDebugPaint = new Paint();
        this.mEnableDispatchEventWhileScrolling = false;
        this.mEnableDispatchEventWhileOverScrolling = false;
        this.mDispatchEventVelocityThreshold = DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mFastFlingVelocity = 1500.0f;
        this.mAvoidAccidentalTouch = true;
        this.mEnableOptimizedScroll = true;
        this.mEnableVibrator = true;
        this.mIsColorDevice = null;
        initCOUIScrollView(context);
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom();
        }
        return false;
    }

    private static int clamp(int i10, int i11, int i12) {
        if (i11 >= i12 || i10 < 0) {
            return 0;
        }
        return i11 + i10 > i12 ? i12 - i11 : i10;
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

    private void doScrollY(int i10) {
        if (i10 != 0) {
            if (this.mSmoothScrollingEnabled) {
                smoothCOUIScrollBy(0, i10);
            } else {
                scrollBy(0, i10);
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        recycleVelocityTracker();
        if (this.mScrollStrictSpan) {
            this.mScrollStrictSpan = false;
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
            int r6 = r5.getTop()
            int r7 = r5.getBottom()
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
            int r10 = r1.getTop()
            if (r6 < r10) goto L3e
        L36:
            if (r12 != 0) goto L40
            int r6 = r1.getBottom()
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
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.scrollview.COUIScrollView.findFocusableViewInBounds(boolean, int, int):android.view.View");
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
        Log.d(TAG, "findViewToDispatchClickEvent: target: " + view);
        return view;
    }

    private void flingWithNestedDispatch(int i10) {
        boolean z10 = (getScrollY() > 0 || i10 > 0) && (getScrollY() < getScrollRange() || i10 < 0);
        float f10 = i10;
        if (dispatchNestedPreFling(0.0f, f10)) {
            return;
        }
        dispatchNestedFling(0.0f, f10, z10);
        if (z10) {
            fling(i10);
        }
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private float getVelocityAlongScrollableDirection() {
        if (this.mOverScroller == null || (getNestedScrollAxes() & 2) != 0) {
            return 0.0f;
        }
        return this.mOverScroller.getCurrVelocityY();
    }

    private boolean hookIfNeedInterceptMoveEvent(float f10, float f11) {
        return !(this.mEnableDispatchEventWhileScrolling || (this.mEnableDispatchEventWhileOverScrolling && isOverScrolling())) || f10 == 0.0f || ((double) Math.abs(f11 / f10)) > Math.tan(((double) this.mEventFilterAngle) * DEGREE_TO_ARC_CONSTANT);
    }

    private boolean inChild(int i10, int i11) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i11 >= childAt.getTop() - scrollY && i11 < childAt.getBottom() - scrollY && i10 >= childAt.getLeft() && i10 < childAt.getRight();
    }

    private void initCOUIScrollView(Context context) {
        if (this.mOverScroller == null) {
            SpringOverScroller springOverScroller = new SpringOverScroller(context);
            this.mSpringOverScroller = springOverScroller;
            springOverScroller.setSpringBackTensionMultiple(VERTICAL_SPRING_BACK_TENSION_MULTIPLE);
            this.mSpringOverScroller.setIsScrollView(true);
            this.mOverScroller = this.mSpringOverScroller;
            setEnableFlingSpeedIncrease(true);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        int i10 = displayMetrics.heightPixels;
        this.mOriginalOverScroll = i10;
        this.mOverscrollDistance = i10;
        this.mOverflingDistance = i10;
        this.mVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
        this.mScreenHeight = displayMetrics.heightPixels;
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
        int y10 = (int) (motionEvent.getY() - this.mInitialTouchY);
        return System.currentTimeMillis() - this.mTouchTime < 100 && ((int) Math.sqrt((double) (y10 * y10))) < 10;
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
        return !isWithinDeltaOfScreen(view, 0, getHeight());
    }

    private boolean isOverScrolling() {
        return getScrollY() < 0 || getScrollY() > getScrollRange();
    }

    private static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    private boolean isWithinDeltaOfScreen(View view, int i10, int i11) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        return this.mTempRect.bottom + i10 >= getScrollY() && this.mTempRect.top - i10 <= getScrollY() + i11;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i10 = action == 0 ? 1 : 0;
            this.mInitialTouchX = (int) motionEvent.getX(i10);
            int y10 = (int) motionEvent.getY(i10);
            this.mLastMotionY = y10;
            this.mInitialTouchY = y10;
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
        int height = getHeight();
        int scrollY = getScrollY();
        int i13 = height + scrollY;
        boolean z10 = false;
        boolean z11 = i10 == 33;
        View viewFindFocusableViewInBounds = findFocusableViewInBounds(z11, i11, i12);
        if (viewFindFocusableViewInBounds == null) {
            viewFindFocusableViewInBounds = this;
        }
        if (i11 < scrollY || i12 > i13) {
            doScrollY(z11 ? i11 - scrollY : i12 - i13);
            z10 = true;
        }
        if (viewFindFocusableViewInBounds != findFocus()) {
            viewFindFocusableViewInBounds.requestFocus(i10);
        }
        return z10;
    }

    private boolean scrollToChildRect(Rect rect, boolean z10) {
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z11 = iComputeScrollDeltaToGetChildRectOnScreen != 0;
        if (z11) {
            if (z10) {
                scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothCOUIScrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z11;
    }

    private void scrollToWithClamp(int i10, int i11) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int iClamp = clamp(i10, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int iClamp2 = clamp(i11, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (iClamp == getScrollX() && iClamp2 == getScrollY()) {
                return;
            }
            scrollTo(iClamp, iClamp2);
        }
    }

    @Override // android.widget.ScrollView
    public boolean arrowScroll(int i10) {
        int bottom;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !isWithinDeltaOfScreen(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i10 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i10 == 130 && getChildCount() > 0 && (bottom = getChildAt(0).getBottom() - ((getScrollY() + getHeight()) - getPaddingBottom())) < maxScrollAmount) {
                maxScrollAmount = bottom;
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            doScrollY(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.mTempRect);
            doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
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

    @Override // android.widget.ScrollView, android.view.View
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
            overScrollBy(cOUICurrX - scrollX, cOUICurrY - scrollY, scrollX, scrollY, 0, getScrollRange(), 0, this.mOverflingDistance, false);
        }
        if (awakenScrollBars()) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
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
                if (cOUIIOverScroller2 != null && cOUIIOverScroller2.getCurrVelocityY() != 0.0f) {
                    f10 = this.mFlingVelocityY;
                }
                this.mAbortVelocityY = f10;
                COUIIOverScroller cOUIIOverScroller3 = this.mOverScroller;
                if (cOUIIOverScroller3 != null) {
                    cOUIIOverScroller3.abortAnimation();
                }
                stopNestedScroll();
            }
            if ((motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) && (cOUIIOverScroller = this.mOverScroller) != null && cOUIIOverScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView
    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.mTempRect.setEmpty();
        boolean zCanScroll = canScroll();
        int i10 = AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD;
        if (!zCanScroll) {
            if (!isFocused() || keyEvent.getKeyCode() == 4 || keyEvent.getKeyCode() == 111) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return !keyEvent.isAltPressed() ? arrowScroll(33) : fullScroll(33);
        }
        if (keyCode == 20) {
            return !keyEvent.isAltPressed() ? arrowScroll(AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD) : fullScroll(AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD);
        }
        if (keyCode != 62) {
            return false;
        }
        if (keyEvent.isShiftPressed()) {
            i10 = 33;
        }
        pageScroll(i10);
        return false;
    }

    @Override // android.widget.ScrollView
    public void fling(int i10) {
        this.mFlingVelocityY = i10;
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            int height2 = getChildAt(0).getHeight();
            COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
            if (cOUIIOverScroller != null) {
                cOUIIOverScroller.fling(getScrollX(), getScrollY(), 0, i10, 0, 0, 0, Math.max(0, height2 - height), 0, height / 2);
            }
            if (!this.mFlingStrictSpan) {
                this.mFlingStrictSpan = true;
            }
            postInvalidateOnAnimation();
        }
    }

    @Override // android.widget.ScrollView
    public boolean fullScroll(int i10) {
        int childCount;
        boolean z10 = i10 == 130;
        int height = getHeight();
        Rect rect = this.mTempRect;
        rect.top = 0;
        rect.bottom = height;
        if (z10 && (childCount = getChildCount()) > 0) {
            this.mTempRect.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            Rect rect2 = this.mTempRect;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.mTempRect;
        return scrollAndFocus(i10, rect3.top, rect3.bottom);
    }

    public int getScrollableRange() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
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

    @Override // android.widget.ScrollView
    public boolean isFillViewport() {
        return this.mFillViewport;
    }

    @Override // android.widget.ScrollView
    public boolean isSmoothScrollingEnabled() {
        return this.mSmoothScrollingEnabled;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
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

    @Override // android.widget.ScrollView, android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 8) {
            int iRound = Math.round((motionEvent.isFromSource(2) ? motionEvent.getAxisValue(9) : motionEvent.isFromSource(4194304) ? motionEvent.getAxisValue(26) : 0.0f) * this.mVerticalScrollFactor);
            if (iRound != 0) {
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i10 = scrollY - iRound;
                if (i10 < 0) {
                    scrollRange = 0;
                } else if (i10 <= scrollRange) {
                    scrollRange = i10;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b6  */
    @Override // android.widget.ScrollView, android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instruction units count: 359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.scrollview.COUIScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.mIsLayoutDirty = false;
        View view = this.mChildToScrollTo;
        if (view != null && isViewDescendantOf(view, this)) {
            scrollToDescendant(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (!isLaidOut()) {
            COUISavedState cOUISavedState = this.mSavedState;
            if (cOUISavedState != null) {
                ViewNative.setScrollY(this, cOUISavedState.scrollPosition);
                this.mSavedState = null;
            }
            int iMax = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i13 - i11) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > iMax) {
                ViewNative.setScrollY(this, iMax);
            } else if (getScrollY() < 0) {
                ViewNative.setScrollY(this, 0);
            }
        }
        scrollToWithClamp(getScrollX(), getScrollY());
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mFillViewport && View.MeasureSpec.getMode(i11) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int paddingLeft = getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin;
            int measuredHeight = getMeasuredHeight() - (((getPaddingTop() + getPaddingBottom()) + layoutParams.topMargin) + layoutParams.bottomMargin);
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i10, paddingLeft, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (z10) {
            return false;
        }
        flingWithNestedDispatch((int) f11);
        return true;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        if (getScrollY() == i11 && getScrollX() == i10) {
            return;
        }
        if ((i11 < 0 || i11 > getScrollRange()) && this.mFlingStrictSpan) {
            int scrollRange = i11 >= getScrollRange() ? getScrollRange() : 0;
            i11 = COUIPhysicalAnimationUtil.calcOverFlingDecelerateDist(scrollRange, i11 - scrollRange, this.mScreenHeight);
        }
        if (getOverScrollMode() == 2 || (getOverScrollMode() == 1 && getChildAt(0).getHeight() <= getScrollableRange())) {
            i11 = Math.min(Math.max(i11, 0), getScrollRange());
        }
        if (getScrollY() >= 0 && i11 < 0 && this.mFlingStrictSpan) {
            performFeedback();
            SpringOverScroller springOverScroller = this.mSpringOverScroller;
            if (springOverScroller != null) {
                springOverScroller.notifyVerticalEdgeReached(i11, 0, this.mOverflingDistance);
            }
        }
        if (getScrollY() <= getScrollRange() && i11 > getScrollRange() && this.mFlingStrictSpan) {
            performFeedback();
            SpringOverScroller springOverScroller2 = this.mSpringOverScroller;
            if (springOverScroller2 != null) {
                springOverScroller2.notifyVerticalEdgeReached(i11, getScrollRange(), this.mOverflingDistance);
            }
        }
        scrollTo(i10, i11);
        invalidateParentIfNeeded();
        awakenScrollBars();
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (i10 == 2) {
            i10 = AIProtocol.PROTOCOL_VERSION_AIGC_CLOUD;
        } else if (i10 == 1) {
            i10 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i10) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        if (viewFindNextFocus == null || isOffScreen(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i10, rect);
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        COUISavedState cOUISavedState = (COUISavedState) parcelable;
        super.onRestoreInstanceState(cOUISavedState.getSuperState());
        this.mSavedState = cOUISavedState;
        requestLayout();
    }

    @Override // android.widget.ScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        COUISavedState cOUISavedState = new COUISavedState(super.onSaveInstanceState());
        cOUISavedState.scrollPosition = getScrollY();
        return cOUISavedState;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mScreenHeight = getContext().getResources().getDisplayMetrics().heightPixels;
        COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
        if (cOUIIOverScroller != null) {
            cOUIIOverScroller.abortAnimation();
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !isWithinDeltaOfScreen(viewFindFocus, 0, i13)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(viewFindFocus, this.mTempRect);
        doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01a0  */
    @Override // android.widget.ScrollView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r22) {
        /*
            Method dump skipped, instruction units count: 815
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.scrollview.COUIScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller == null || i10 == 0) {
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

    @Override // android.widget.ScrollView
    public boolean pageScroll(int i10) {
        boolean z10 = i10 == 130;
        int height = getHeight();
        if (z10) {
            this.mTempRect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.mTempRect.top + height > childAt.getBottom()) {
                    this.mTempRect.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.mTempRect.top = getScrollY() - height;
            Rect rect = this.mTempRect;
            if (rect.top < 0) {
                rect.top = 0;
            }
        }
        Rect rect2 = this.mTempRect;
        int i11 = rect2.top;
        int i12 = height + i11;
        rect2.bottom = i12;
        return scrollAndFocus(i10, i11, i12);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (view2 != null && view2.getRevealOnFocusHint()) {
            if (this.mIsLayoutDirty) {
                this.mChildToScrollTo = view2;
            } else {
                scrollToDescendant(view2);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return scrollToChildRect(rect, z10);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.widget.ScrollView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.widget.ScrollView, android.view.View
    public void scrollTo(int i10, int i11) {
        if (getChildCount() > 0) {
            if (getScrollX() == i10 && getScrollY() == i11) {
                return;
            }
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            if (isColorDevice().booleanValue()) {
                ViewNative.setScrollX(this, i10);
                ViewNative.setScrollY(this, i11);
                onScrollChanged(i10, i11, scrollX, scrollY);
            } else {
                super.scrollTo(i10, i11);
            }
            if (awakenScrollBars()) {
                return;
            }
            postInvalidateOnAnimation();
        }
    }

    @Override // android.widget.ScrollView
    public void scrollToDescendant(View view) {
        if (this.mIsLayoutDirty) {
            this.mChildToScrollTo = view;
            return;
        }
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int iComputeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (iComputeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, iComputeScrollDeltaToGetChildRectOnScreen);
        }
    }

    public void setAvoidAccidentalTouch(boolean z10) {
        this.mAvoidAccidentalTouch = z10;
    }

    public void setCustomOverScrollDistFactor(float f10) {
        int i10 = (int) (this.mOriginalOverScroll * f10);
        this.mOverscrollDistance = i10;
        this.mOverflingDistance = i10;
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

    public void setEnableVibrator(boolean z10) {
        this.mEnableVibrator = z10;
    }

    public void setEventFilterTangent(float f10) {
        this.mEventFilterAngle = f10;
    }

    public void setFastFlingThreshold(float f10) {
        this.mFastFlingVelocity = Math.max(f10, 0.0f);
    }

    @Override // android.widget.ScrollView
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

    @Override // android.widget.ScrollView
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
            int iMax = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
            int scrollY = getScrollY();
            int iMax2 = Math.max(0, Math.min(i11 + scrollY, iMax)) - scrollY;
            COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
            if (cOUIIOverScroller != null) {
                cOUIIOverScroller.startScroll(getScrollX(), scrollY, 0, iMax2);
            }
            postInvalidateOnAnimation();
        } else {
            COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
            if (cOUIIOverScroller2 != null && !cOUIIOverScroller2.isCOUIFinished()) {
                this.mAbortVelocityY = this.mOverScroller.getCurrVelocityY() != 0.0f ? this.mFlingVelocityY : 0.0f;
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

    public COUIScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public COUIScrollView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public COUIScrollView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mScreenHeight = 0;
        this.mTempRect = new Rect();
        this.mOverScroller = null;
        this.mSpringOverScroller = null;
        this.mIsLayoutDirty = true;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mCustomOverScrollFactor = 1.0f;
        this.mActivePointerId = -1;
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mScrollStrictSpan = false;
        this.mFlingStrictSpan = false;
        this.mItemClickableWhileSlowScrolling = true;
        this.mItemClickableWhileOverScrolling = true;
        this.mDebugPaint = new Paint();
        this.mEnableDispatchEventWhileScrolling = false;
        this.mEnableDispatchEventWhileOverScrolling = false;
        this.mDispatchEventVelocityThreshold = DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mFastFlingVelocity = 1500.0f;
        this.mAvoidAccidentalTouch = true;
        this.mEnableOptimizedScroll = true;
        this.mEnableVibrator = true;
        this.mIsColorDevice = null;
        initCOUIScrollView(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIScrollView, i10, 0);
        this.mEnableVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIScrollView_couiScrollViewEnableVibrator, true);
        typedArrayObtainStyledAttributes.recycle();
    }
}

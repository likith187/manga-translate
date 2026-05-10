package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.core.view.m0;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.animation.COUIPhysicalAnimationUtil;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.scroll.COUIFlingLocateHelper;
import com.coui.appcompat.scroll.COUIIOverScroller;
import com.coui.appcompat.scroll.COUILocateOverScroller;
import com.coui.appcompat.scroll.SpringOverScroller;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.coui.appcompat.view.ViewNative;
import com.oplus.aiunit.core.ConfigPackage;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$dimen;
import com.support.recyclerview.R$styleable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class COUIRecyclerView extends RecyclerView implements COUIScrollBar.COUIScrollable {
    public static final int CENTER_ALIGN = 2;
    private static final boolean COUI_DEBUG;
    private static final int CUSTOM_TOUCH_SLOP = 2;
    private static final int DEBUG_PAINT_TEXT_OFFSET_Y = 50;
    private static final int DEBUG_PAINT_TEXT_SIZE = 30;
    private static final float DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE = 20.0f;
    private static final int DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD = 2500;
    private static final double DEGREE_TO_ARC_CONSTANT = 0.017453292519943295d;
    private static final int FLING_SCROLL_THRESHOLD = 1000;
    private static final int FLING_SCROLL_THRESHOLD_WHILE_OVER_SCROLLING = 6000;
    private static final float HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE = 3.2f;
    private static final int INVALID_POINTER = -1;
    private static final int OVER_SCROLL_TOUCH_DURATION_THRESHOLD;
    private static final int OVER_SCROLL_TOUCH_OFFSET_THRESHOLD = 10;
    private static final int SLOW_SCROLL_THRESHOLD = 2500;
    public static final int START_ALIGN = 1;
    static final String TAG = "COUIRecyclerView";
    private static final float VERTICAL_SPRING_BACK_TENSION_MULTIPLE = 2.15f;
    final int FLING;
    final int OVER_FLING;
    final int OVER_SCROLLING;
    private final int SCROLLBARS_NONE;
    private final int SCROLLBARS_VERTICAL;
    final int SCROLLING;
    private float mAbortVelocityX;
    private float mAbortVelocityY;
    private boolean mAvoidAccidentalTouch;
    private COUILocateOverScroller mCOUILocateOverScroller;
    private g mCOUIRecyclerDividerManager;
    private COUIScrollBar mCOUIScrollBar;
    private float mClickVelocityX;
    private float mClickVelocityY;
    private float mDebugAbortVelocityX;
    private float mDebugAbortVelocityY;
    private Paint mDebugPaint;
    private int mDispatchEventVelocityThreshold;
    private boolean mEnableDispatchEventWhileOverScrolling;
    private boolean mEnableDispatchEventWhileScrolling;
    private boolean mEnableFlingSpeedIncrease;
    private boolean mEnableOptimizedScroll;
    private boolean mEnablePointerDown;
    private boolean mEnableVibrator;
    private float mEventFilterAngle;
    private float mFastFlingVelocity;
    private boolean mFixScrollTypeForOverScrolling;
    private float mFlingRatio;
    private float mFlingVelocityX;
    private float mFlingVelocityY;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private RecyclerView.t mInterceptingOnItemTouchListener;
    private boolean mIsOverScrollingReverseFling;
    private boolean mIsTouchDownWhileOverScrolling;
    private boolean mIsTouchDownWhileSlowScrolling;
    private boolean mIsUseNativeOverScroll;
    private boolean mItemClickableWhileOverScrolling;
    private boolean mItemClickableWhileSlowScrolling;
    private int mLastTouchX;
    private int mLastTouchY;
    private COUIFlingLocateHelper mLocateHelper;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mNestedOffsets;
    private RecyclerView.s mOnFlingListener;
    private ArrayList<RecyclerView.t> mOnItemTouchListeners;
    boolean mOverScrollEnable;
    private COUIIOverScroller mOverScroller;
    private int mOverflingDistance;
    private int mOverscrollDistance;
    private int mScreenHeight;
    private int mScreenWidth;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private int mScrollType;
    private Drawable mScrollbarThumbVertical;
    private int mScrollbars;
    private int mScrollbarsSize;
    private int mSlowScrollThreshold;
    private boolean mSmoothScrollFlag;
    private SpringOverScroller mSpringOverScroller;
    private int mStyle;
    private int mTouchSlop;
    private long mTouchTime;
    private VelocityTracker mVelocityTracker;
    private float mVerticalSpringOverTension;
    private c mViewFlinger;

    public static class a extends RecyclerView.o {
        private Drawable mDivider;
        private int mDividerColor;
        private int mDividerStrokeWidth;
        private int mOriginAlpha;
        private Paint mPaint;
        private int mPressDividerAlpha;
        private int mPressDividerPos;
        private int mPrevTop;

        public a(Context context) {
            d(context);
        }

        private void d(Context context) {
            this.mDividerColor = COUIContextUtil.getAttrColor(context, R$attr.couiColorDivider);
            this.mDividerStrokeWidth = context.getResources().getDimensionPixelOffset(R$dimen.coui_list_divider_height);
            Paint paint = new Paint(1);
            this.mPaint = paint;
            paint.setColor(this.mDividerColor);
            int alpha = this.mPaint.getAlpha();
            this.mOriginAlpha = alpha;
            this.mPressDividerAlpha = alpha;
        }

        public void drawDividerOuterBackground(Canvas canvas, RecyclerView recyclerView, View view) {
        }

        public void drawExpandableDivider(Canvas canvas, RecyclerView.d0 d0Var) {
            View view = d0Var.itemView;
            boolean z10 = view.getLayoutDirection() == 1;
            int measuredHeight = view.getMeasuredHeight() - Math.max(1, this.mDividerStrokeWidth);
            int measuredHeight2 = view.getMeasuredHeight();
            int x10 = (int) (view.getX() + (z10 ? getDividerInsetEnd(d0Var) : getDividerInsetStart(d0Var)));
            int x11 = (int) ((view.getX() + view.getWidth()) - (z10 ? getDividerInsetStart(d0Var) : getDividerInsetEnd(d0Var)));
            Drawable drawable = this.mDivider;
            if (drawable == null) {
                canvas.drawRect(x10, measuredHeight, x11, measuredHeight2, this.mPaint);
            } else {
                drawable.setBounds(x10, measuredHeight, x11, measuredHeight2);
                this.mDivider.draw(canvas);
            }
        }

        public Drawable getDivider() {
            return this.mDivider;
        }

        public int getDividerColor() {
            return this.mDividerColor;
        }

        protected int getDividerInsetEnd(RecyclerView.d0 d0Var) {
            return 0;
        }

        protected int getDividerInsetStart(RecyclerView.d0 d0Var) {
            return 0;
        }

        public int getDividerStrokeWidth() {
            return this.mDividerStrokeWidth;
        }

        public Paint getPaint() {
            return this.mPaint;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            int childCount = recyclerView.getChildCount();
            this.mPrevTop = -1;
            int i10 = 0;
            while (i10 < childCount) {
                View childAt = recyclerView.getChildAt(i10);
                if (shouldDrawDivider(recyclerView, i10)) {
                    drawDividerOuterBackground(canvas, recyclerView, childAt);
                    boolean z10 = childAt.getLayoutDirection() == 1;
                    int y10 = (int) (childAt.getY() + childAt.getHeight());
                    if (this.mPrevTop != y10) {
                        this.mPrevTop = y10;
                        int iMax = Math.max(1, this.mDividerStrokeWidth) + y10;
                        int x10 = (int) (childAt.getX() + (z10 ? getDividerInsetEnd(recyclerView, i10) : getDividerInsetStart(recyclerView, i10)));
                        int x11 = (int) ((childAt.getX() + childAt.getWidth()) - (z10 ? getDividerInsetStart(recyclerView, i10) : getDividerInsetEnd(recyclerView, i10)));
                        int i11 = this.mPressDividerPos;
                        int i12 = (i11 == i10 || i11 + (-1) == i10) ? this.mPressDividerAlpha : this.mOriginAlpha;
                        Drawable drawable = this.mDivider;
                        if (drawable == null) {
                            this.mPaint.setAlpha(i12);
                            canvas.drawRect(x10, y10, x11, iMax, this.mPaint);
                        } else {
                            drawable.setAlpha(i12);
                            this.mDivider.setBounds(x10, y10, x11, iMax);
                            this.mDivider.draw(canvas);
                        }
                    }
                }
                i10++;
            }
        }

        public void setDivider(RecyclerView recyclerView, Drawable drawable) {
            this.mDivider = drawable;
            if (recyclerView != null) {
                recyclerView.invalidateItemDecorations();
            }
        }

        public void setDividerColor(RecyclerView recyclerView, int i10) {
            this.mDividerColor = i10;
            this.mPaint.setColor(i10);
            if (recyclerView != null) {
                recyclerView.invalidateItemDecorations();
            }
        }

        public void setDividerStrokeWidth(RecyclerView recyclerView, int i10) {
            this.mDividerStrokeWidth = i10;
            this.mPaint.setStrokeWidth(i10);
            if (recyclerView != null) {
                recyclerView.invalidateItemDecorations();
            }
        }

        public void setPressDividerAlpha(int i10) {
            this.mPressDividerAlpha = i10;
        }

        public void setPressDividerPos(int i10) {
            this.mPressDividerPos = i10;
        }

        public abstract boolean shouldDrawDivider(RecyclerView recyclerView, int i10);

        public int getDividerInsetEnd(RecyclerView recyclerView, int i10) {
            return 0;
        }

        public int getDividerInsetStart(RecyclerView recyclerView, int i10) {
            return 0;
        }
    }

    public interface b {
        boolean drawDivider();

        default View getDividerEndAlignView() {
            return null;
        }

        int getDividerEndInset();

        View getDividerStartAlignView();

        int getDividerStartInset();
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a */
        private int f3073a;

        /* JADX INFO: renamed from: b */
        private int f3074b;

        /* JADX INFO: renamed from: c */
        Interpolator f3075c = RecyclerView.sQuinticInterpolator;

        /* JADX INFO: renamed from: f */
        private boolean f3076f = false;

        /* JADX INFO: renamed from: h */
        private boolean f3077h = false;

        c() {
        }

        private int a(int i10, int i11, int i12, int i13) {
            int iRound;
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z10 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i12 * i12) + (i13 * i13));
            int iSqrt2 = (int) Math.sqrt((i10 * i10) + (i11 * i11));
            COUIRecyclerView cOUIRecyclerView = COUIRecyclerView.this;
            int width = z10 ? cOUIRecyclerView.getWidth() : cOUIRecyclerView.getHeight();
            int i14 = width / 2;
            float f10 = width;
            float f11 = i14;
            float fB = f11 + (b(Math.min(1.0f, (iSqrt2 * 1.0f) / f10)) * f11);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fB / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z10) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f10) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, VibrateUtils.STRENGTH_MAX_STEP);
        }

        private float b(float f10) {
            return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
        }

        private void d() {
            COUIRecyclerView.this.removeCallbacks(this);
            m0.a0(COUIRecyclerView.this, this);
        }

        public void c(int i10, int i11) {
            COUIRecyclerView.this.mFlingVelocityX = i10;
            COUIRecyclerView.this.mFlingVelocityY = i11;
            COUIRecyclerView.this.setScrollState(2);
            this.f3074b = 0;
            this.f3073a = 0;
            Interpolator interpolator = this.f3075c;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.f3075c = interpolator2;
                if (COUIRecyclerView.this.mOverScroller != null) {
                    COUIRecyclerView.this.mOverScroller.setInterpolator(interpolator2);
                }
            }
            if (COUIRecyclerView.this.mOverScroller != null) {
                COUIRecyclerView.this.mOverScroller.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                COUIRecyclerView.this.mOverScroller.setFinalX(COUIRecyclerView.this.mLocateHelper.getTargetViewDistance(COUIRecyclerView.this.mOverScroller.getCOUIFinalX()));
            }
            e();
        }

        void e() {
            if (this.f3076f) {
                this.f3077h = true;
            } else {
                d();
            }
        }

        public void f(int i10, int i11, int i12, Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                i12 = a(i10, i11, 0, 0);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.f3075c != interpolator) {
                this.f3075c = interpolator;
                if (COUIRecyclerView.this.mOverScroller != null) {
                    COUIRecyclerView.this.mOverScroller.setInterpolator(interpolator);
                }
            }
            this.f3074b = 0;
            this.f3073a = 0;
            COUIRecyclerView.this.setScrollState(2);
            if (COUIRecyclerView.this.mOverScroller != null) {
                COUIRecyclerView.this.mOverScroller.startScroll(0, 0, i10, i11, i13);
            }
            e();
        }

        public void g() {
            COUIRecyclerView.this.removeCallbacks(this);
            COUIRecyclerView cOUIRecyclerView = COUIRecyclerView.this;
            cOUIRecyclerView.Q(cOUIRecyclerView.getContext());
            COUIRecyclerView cOUIRecyclerView2 = COUIRecyclerView.this;
            float f10 = 0.0f;
            cOUIRecyclerView2.mAbortVelocityX = (cOUIRecyclerView2.mOverScroller == null || COUIRecyclerView.this.mOverScroller.getCurrVelocityX() == 0.0f) ? 0.0f : COUIRecyclerView.this.mFlingVelocityX;
            COUIRecyclerView cOUIRecyclerView3 = COUIRecyclerView.this;
            if (cOUIRecyclerView3.mOverScroller != null && COUIRecyclerView.this.mOverScroller.getCurrVelocityY() != 0.0f) {
                f10 = COUIRecyclerView.this.mFlingVelocityY;
            }
            cOUIRecyclerView3.mAbortVelocityY = f10;
            if (COUIRecyclerView.this.mOverScroller != null) {
                COUIRecyclerView.this.mOverScroller.abortAnimation();
            }
            if (COUIRecyclerView.this.mSpringOverScroller != null) {
                COUIRecyclerView.this.mSpringOverScroller.abortAnimation();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            int i12;
            COUIRecyclerView cOUIRecyclerView = COUIRecyclerView.this;
            if (cOUIRecyclerView.mLayout == null) {
                g();
                return;
            }
            this.f3077h = false;
            this.f3076f = true;
            cOUIRecyclerView.consumePendingUpdateOperations();
            COUIIOverScroller cOUIIOverScroller = COUIRecyclerView.this.mOverScroller;
            if (cOUIIOverScroller != null && cOUIIOverScroller.computeScrollOffset()) {
                int cOUICurrX = cOUIIOverScroller.getCOUICurrX();
                int cOUICurrY = cOUIIOverScroller.getCOUICurrY();
                int i13 = cOUICurrX - this.f3073a;
                int i14 = cOUICurrY - this.f3074b;
                this.f3073a = cOUICurrX;
                this.f3074b = cOUICurrY;
                COUIRecyclerView cOUIRecyclerView2 = COUIRecyclerView.this;
                int[] iArr = cOUIRecyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (cOUIRecyclerView2.dispatchNestedPreScroll(i13, i14, iArr, null, 1)) {
                    int[] iArr2 = COUIRecyclerView.this.mReusableIntPair;
                    i13 -= iArr2[0];
                    i14 -= iArr2[1];
                }
                COUIRecyclerView cOUIRecyclerView3 = COUIRecyclerView.this;
                if (cOUIRecyclerView3.mAdapter != null) {
                    int[] iArr3 = cOUIRecyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    cOUIRecyclerView3.scrollStep(i13, i14, iArr3);
                    COUIRecyclerView cOUIRecyclerView4 = COUIRecyclerView.this;
                    int[] iArr4 = cOUIRecyclerView4.mReusableIntPair;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    i13 -= i11;
                    i14 -= i10;
                    RecyclerView.z zVar = cOUIRecyclerView4.mLayout.mSmoothScroller;
                    if (zVar != null && !zVar.isPendingInitialRun() && zVar.isRunning()) {
                        int iB = COUIRecyclerView.this.mState.b();
                        if (iB == 0) {
                            zVar.stop();
                        } else if (zVar.getTargetPosition() >= iB) {
                            zVar.setTargetPosition(iB - 1);
                            zVar.onAnimation(i11, i10);
                        } else {
                            zVar.onAnimation(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!COUIRecyclerView.this.mItemDecorations.isEmpty()) {
                    COUIRecyclerView.this.invalidate();
                }
                COUIRecyclerView cOUIRecyclerView5 = COUIRecyclerView.this;
                int[] iArr5 = cOUIRecyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                cOUIRecyclerView5.dispatchNestedScroll(i11, i10, i13, i14, null, 1, iArr5);
                COUIRecyclerView cOUIRecyclerView6 = COUIRecyclerView.this;
                int[] iArr6 = cOUIRecyclerView6.mReusableIntPair;
                int i15 = i13 - iArr6[0];
                int i16 = i14 - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    cOUIRecyclerView6.dispatchOnScrolled(i11, i10);
                }
                if (!COUIRecyclerView.this.mSmoothScrollFlag || (i15 == 0 && i16 == 0)) {
                    i12 = i16;
                } else {
                    cOUIIOverScroller.abortAnimation();
                    COUIRecyclerView.this.mSmoothScrollFlag = false;
                    i12 = 0;
                    i15 = 0;
                }
                if (i12 != 0) {
                    COUIRecyclerView cOUIRecyclerView7 = COUIRecyclerView.this;
                    if (cOUIRecyclerView7.mOverScrollEnable) {
                        cOUIRecyclerView7.mScrollType = 3;
                        COUIRecyclerView.this.b0();
                        COUIRecyclerView cOUIRecyclerView8 = COUIRecyclerView.this;
                        cOUIRecyclerView8.overScrollBy(0, i12, 0, cOUIRecyclerView8.getScrollY(), 0, 0, 0, COUIRecyclerView.this.mOverflingDistance, false);
                        if (COUIRecyclerView.this.mIsUseNativeOverScroll) {
                            if (COUIRecyclerView.this.mSpringOverScroller != null) {
                                COUIRecyclerView.this.mSpringOverScroller.setCurrVelocityY(cOUIIOverScroller.getCurrVelocityY());
                                COUIRecyclerView.this.mSpringOverScroller.notifyVerticalEdgeReached(i12, 0, COUIRecyclerView.this.mOverflingDistance);
                            }
                        } else if (COUIRecyclerView.this.mOverScroller != null) {
                            COUIRecyclerView.this.mOverScroller.notifyVerticalEdgeReached(i12, 0, COUIRecyclerView.this.mOverflingDistance);
                        }
                    }
                }
                if (i15 != 0) {
                    COUIRecyclerView cOUIRecyclerView9 = COUIRecyclerView.this;
                    if (cOUIRecyclerView9.mOverScrollEnable) {
                        cOUIRecyclerView9.mScrollType = 3;
                        COUIRecyclerView.this.b0();
                        COUIRecyclerView cOUIRecyclerView10 = COUIRecyclerView.this;
                        cOUIRecyclerView10.overScrollBy(i15, 0, cOUIRecyclerView10.getScrollX(), 0, 0, 0, COUIRecyclerView.this.mOverflingDistance, 0, false);
                        if (COUIRecyclerView.this.mIsUseNativeOverScroll) {
                            if (COUIRecyclerView.this.mSpringOverScroller != null) {
                                COUIRecyclerView.this.mSpringOverScroller.setCurrVelocityX(cOUIIOverScroller.getCurrVelocityX());
                                COUIRecyclerView.this.mSpringOverScroller.notifyHorizontalEdgeReached(i15, 0, COUIRecyclerView.this.mOverflingDistance);
                            }
                        } else if (COUIRecyclerView.this.mOverScroller != null) {
                            COUIRecyclerView.this.mOverScroller.notifyHorizontalEdgeReached(i15, 0, COUIRecyclerView.this.mOverflingDistance);
                        }
                    }
                }
                if (!COUIRecyclerView.this.awakenScrollBars()) {
                    COUIRecyclerView.this.invalidate();
                }
                boolean z10 = cOUIIOverScroller.isCOUIFinished() || (((cOUIIOverScroller.getCOUICurrX() == cOUIIOverScroller.getCOUIFinalX()) || i15 != 0) && ((cOUIIOverScroller.getCOUICurrY() == cOUIIOverScroller.getCOUIFinalY()) || i12 != 0));
                RecyclerView.z zVar2 = COUIRecyclerView.this.mLayout.mSmoothScroller;
                if ((zVar2 != null && zVar2.isPendingInitialRun()) || !z10) {
                    e();
                    COUIRecyclerView cOUIRecyclerView11 = COUIRecyclerView.this;
                    m mVar = cOUIRecyclerView11.mGapWorker;
                    if (mVar != null) {
                        mVar.f(cOUIRecyclerView11, i11, i10);
                    }
                } else if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    COUIRecyclerView.this.mPrefetchRegistry.b();
                }
            }
            RecyclerView.z zVar3 = COUIRecyclerView.this.mLayout.mSmoothScroller;
            if (zVar3 != null && zVar3.isPendingInitialRun()) {
                zVar3.onAnimation(0, 0);
            }
            this.f3076f = false;
            if (this.f3077h) {
                d();
            } else {
                if (COUIRecyclerView.this.mScrollType == 3 && COUIRecyclerView.this.mOverScrollEnable) {
                    return;
                }
                COUIRecyclerView.this.setScrollState(0);
                COUIRecyclerView.this.stopNestedScroll(1);
            }
        }
    }

    static {
        COUI_DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
        OVER_SCROLL_TOUCH_DURATION_THRESHOLD = ViewConfiguration.getLongPressTimeout();
    }

    public COUIRecyclerView(Context context) {
        this(context, null);
    }

    private void D() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
    }

    private void G() {
        S();
        this.mViewFlinger.g();
        RecyclerView.p pVar = this.mLayout;
        if (pVar != null) {
            pVar.stopSmoothScroller();
        }
    }

    private void I() {
        D();
        setScrollState(0);
    }

    private void J() {
        if (this.mScrollState != 0) {
            this.mScrollState = 0;
            dispatchOnScrollStateChanged(0);
        }
    }

    private void K(Context context) {
        this.mCOUIScrollBar = new COUIScrollBar.Builder(this).build();
    }

    private boolean L(View view, MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = true;
        int[] iArr = {0, 1};
        for (int i10 = 0; i10 < 2; i10++) {
            motionEvent.setAction(iArr[i10]);
            zDispatchTouchEvent &= view.dispatchTouchEvent(motionEvent);
        }
        return zDispatchTouchEvent;
    }

    private View M(MotionEvent motionEvent) {
        if (!T(motionEvent)) {
            return null;
        }
        Rect rect = new Rect();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0 || childAt.getAnimation() != null) {
                childAt.getHitRect(rect);
                boolean zContains = rect.contains(((int) motionEvent.getX()) + getScrollX(), ((int) motionEvent.getY()) + getScrollY());
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.offsetLocation(getScrollX() - childAt.getLeft(), getScrollY() - childAt.getTop());
                if (zContains && L(childAt, motionEventObtain)) {
                    view = childAt;
                }
                motionEventObtain.recycle();
                if (COUI_DEBUG) {
                    childAt.setBackground(childAt == view ? new ColorDrawable(Color.parseColor("#80FF0000")) : null);
                }
            }
        }
        return view;
    }

    private boolean N(float f10, float f11) {
        return !(this.mEnableDispatchEventWhileScrolling || (this.mEnableDispatchEventWhileOverScrolling && W())) || f10 == 0.0f || ((double) Math.abs(f11 / f10)) > Math.tan(((double) this.mEventFilterAngle) * DEGREE_TO_ARC_CONSTANT);
    }

    private void O(Context context, AttributeSet attributeSet, int i10) {
        if (attributeSet == null || attributeSet.getStyleAttribute() == 0) {
            this.mStyle = i10;
        } else {
            this.mStyle = attributeSet.getStyleAttribute();
        }
        if (context != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIRecyclerView, i10, 0);
            this.mScrollbars = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIRecyclerView_couiScrollbars, 0);
            this.mScrollbarsSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIRecyclerView_couiScrollbarSize, 0);
            this.mScrollbarThumbVertical = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIRecyclerView_couiScrollbarThumbVertical);
            this.mEnableVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIRecyclerView_couiRecyclerViewEnableVibrator, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void P() {
        if (this.mOnItemTouchListeners == null) {
            this.mOnItemTouchListeners = new ArrayList<>();
        }
    }

    public void Q(Context context) {
        if (this.mOverScroller == null) {
            this.mVerticalSpringOverTension = VERTICAL_SPRING_BACK_TENSION_MULTIPLE;
            this.mSpringOverScroller = new SpringOverScroller(context);
            this.mCOUILocateOverScroller = new COUILocateOverScroller(context);
            enableFrameRate(true);
            setIsUseNativeOverScroll(false);
            setEnableFlingSpeedIncrease(this.mEnableFlingSpeedIncrease);
        }
    }

    private void R(Context context) {
        int i10 = context.getResources().getDisplayMetrics().heightPixels;
        this.mOverscrollDistance = i10;
        this.mOverflingDistance = i10;
    }

    private void S() {
        if (this.mViewFlinger == null) {
            this.mViewFlinger = new c();
        }
    }

    private boolean T(MotionEvent motionEvent) {
        int x10 = (int) (motionEvent.getX() - this.mInitialTouchX);
        int y10 = (int) (motionEvent.getY() - this.mInitialTouchY);
        int iSqrt = (int) Math.sqrt((x10 * x10) + (y10 * y10));
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mTouchTime;
        if (COUI_DEBUG) {
            Log.d(TAG, "onTouchEvent: ACTION_UP. touchDuration = " + jCurrentTimeMillis + ", offset = " + iSqrt);
        }
        return jCurrentTimeMillis < ((long) OVER_SCROLL_TOUCH_DURATION_THRESHOLD) && iSqrt < 10;
    }

    public boolean U(View view, int i10) {
        return this.mCOUIRecyclerDividerManager.i(view, i10);
    }

    private boolean V(float f10, float f11) {
        return !this.mAvoidAccidentalTouch || Math.abs(f10) > this.mFastFlingVelocity || Math.abs(f11) > this.mFastFlingVelocity;
    }

    private boolean W() {
        int i10;
        return this.mOverScrollEnable && ((i10 = this.mScrollType) == 2 || i10 == 3) && X();
    }

    private boolean X() {
        RecyclerView.p pVar = this.mLayout;
        if (pVar == null) {
            return false;
        }
        return (pVar.canScrollVertically() && this.mLayout.canScrollHorizontally()) ? (getScrollY() == 0 || getScrollX() == 0) ? false : true : this.mLayout.canScrollVertically() ? getScrollY() != 0 : this.mLayout.canScrollHorizontally() && getScrollX() != 0;
    }

    public /* synthetic */ void Y() {
        this.mLocateHelper.trySnapToTargetExistingView();
    }

    private boolean Z() {
        return getLayoutManager() != null && (getLayoutManager() instanceof LinearLayoutManager) && ((LinearLayoutManager) getLayoutManager()).getOrientation() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a0(MotionEvent motionEvent) {
        boolean z10;
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null && cOUIScrollBar.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (k(motionEvent)) {
            c();
            return true;
        }
        RecyclerView.p pVar = this.mLayout;
        if (pVar == null) {
            return false;
        }
        boolean zCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int adjustmentPointerIndex = UIUtil.getAdjustmentPointerIndex(motionEvent, motionEvent.getActionIndex());
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
            float currVelocityX = cOUIIOverScroller != null ? cOUIIOverScroller.getCurrVelocityX() : 0.0f;
            COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
            float currVelocityY = cOUIIOverScroller2 != null ? cOUIIOverScroller2.getCurrVelocityY() : 0.0f;
            boolean zV = V(this.mFlingVelocityX, this.mAbortVelocityX);
            boolean zV2 = V(this.mFlingVelocityY, this.mAbortVelocityY);
            this.mIsTouchDownWhileSlowScrolling = (Math.abs(currVelocityX) > 0.0f && Math.abs(currVelocityX) < ((float) this.mSlowScrollThreshold) && zV) || (Math.abs(currVelocityY) > 0.0f && Math.abs(currVelocityY) < ((float) this.mSlowScrollThreshold) && zV2);
            this.mIsTouchDownWhileOverScrolling = W();
            this.mTouchTime = System.currentTimeMillis();
            if (COUI_DEBUG) {
                this.mClickVelocityX = currVelocityX;
                this.mClickVelocityY = currVelocityY;
                this.mDebugAbortVelocityX = this.mAbortVelocityX;
                this.mDebugAbortVelocityY = this.mAbortVelocityY;
                Log.d(TAG, "onInterceptTouchEvent: ACTION_DOWN, isOverScrolling=:" + this.mIsTouchDownWhileOverScrolling + ", scrollVelocityX=:" + Math.abs(currVelocityX) + ", isFastFlingX=:" + zV + ", mFlingVelocityX=:" + this.mFlingVelocityX + ", mAbortVelocityX=:" + this.mAbortVelocityX + ", scrollVelocityY=:" + Math.abs(currVelocityY) + ", isFastFlingY=:" + zV2 + ", mFlingVelocityY=:" + this.mFlingVelocityY + ", mAbortVelocityY=:" + this.mAbortVelocityY);
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
            this.mSmoothScrollFlag = false;
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i11 = x11 - this.mInitialTouchX;
                int i12 = y11 - this.mInitialTouchY;
                if (zCanScrollHorizontally && Math.abs(i11) > this.mTouchSlop && N(i12, i11)) {
                    this.mLastTouchX = x11;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (zCanScrollVertically && Math.abs(i12) > this.mTouchSlop && N(i11, i12)) {
                    this.mLastTouchY = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            I();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(adjustmentPointerIndex);
            int x12 = (int) (motionEvent.getX(adjustmentPointerIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y12 = (int) (motionEvent.getY(adjustmentPointerIndex) + 0.5f);
            this.mLastTouchY = y12;
            this.mInitialTouchY = y12;
            if (!this.mEnablePointerDown) {
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 6) {
            v(motionEvent);
        }
        return this.mScrollState == 1;
    }

    public void b0() {
        if (this.mEnableVibrator) {
            performHapticFeedback(COUIHapticFeedbackConstants.EDGE_LIST_VIBRATE);
        }
    }

    private void c() {
        D();
        setScrollState(0);
        ViewNative.setScrollX(this, 0);
        ViewNative.setScrollY(this, 0);
        this.mScrollType = 0;
    }

    private void c0(float f10, float f11) {
        this.mIsOverScrollingReverseFling = true;
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.fling(getScrollX(), getScrollY(), (int) f10, (int) f11);
        }
        J();
    }

    private void d0() {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller == null || !springOverScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, 0)) {
            return;
        }
        J();
    }

    private float getVelocityAlongScrollableDirection() {
        COUIIOverScroller cOUIIOverScroller;
        COUIIOverScroller cOUIIOverScroller2;
        RecyclerView.p layoutManager = getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return 0.0f;
        }
        if (layoutManager.canScrollHorizontally() && (cOUIIOverScroller2 = this.mOverScroller) != null) {
            return cOUIIOverScroller2.getCurrVelocityX();
        }
        if (!layoutManager.canScrollVertically() || (cOUIIOverScroller = this.mOverScroller) == null) {
            return 0.0f;
        }
        return cOUIIOverScroller.getCurrVelocityY();
    }

    private boolean j(MotionEvent motionEvent) {
        RecyclerView.t tVar = this.mInterceptingOnItemTouchListener;
        if (tVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return k(motionEvent);
        }
        tVar.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.mInterceptingOnItemTouchListener = null;
        }
        return true;
    }

    private boolean k(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView.t tVar = this.mOnItemTouchListeners.get(i10);
            if (tVar.a(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = tVar;
                return true;
            }
        }
        return false;
    }

    private void v(MotionEvent motionEvent) {
        int adjustmentPointerIndex = UIUtil.getAdjustmentPointerIndex(motionEvent, motionEvent.getActionIndex());
        if (motionEvent.getPointerId(adjustmentPointerIndex) == this.mScrollPointerId) {
            int i10 = adjustmentPointerIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.mLastTouchY = y10;
            this.mInitialTouchY = y10;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void addOnItemTouchListener(RecyclerView.t tVar) {
        P();
        this.mOnItemTouchListeners.add(tVar);
    }

    @Override // android.view.View
    protected boolean awakenScrollBars() {
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        return cOUIScrollBar != null ? cOUIScrollBar.awakenScrollBars() : super.awakenScrollBars();
    }

    public void cancelHorizontalItemAlign() {
        this.mLocateHelper.cancelHorizontalItemAlign();
    }

    @Override // android.view.View
    public void computeScroll() {
        SpringOverScroller springOverScroller;
        if (this.mIsOverScrollingReverseFling) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            if (scrollX == 0 && scrollY == 0) {
                overScrollBy(-scrollX, -scrollY, scrollX, scrollY, 0, 0, 0, 0, false);
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
                this.mIsOverScrollingReverseFling = false;
                SpringOverScroller springOverScroller2 = this.mSpringOverScroller;
                int currVelocityX = springOverScroller2 != null ? (int) springOverScroller2.getCurrVelocityX() : 0;
                SpringOverScroller springOverScroller3 = this.mSpringOverScroller;
                int currVelocityY = springOverScroller3 != null ? (int) springOverScroller3.getCurrVelocityY() : 0;
                SpringOverScroller springOverScroller4 = this.mSpringOverScroller;
                if (springOverScroller4 != null) {
                    springOverScroller4.abortAnimation();
                }
                setScrollState(0);
                fling(currVelocityX, currVelocityY);
                return;
            }
        }
        if (this.mOverScrollEnable) {
            int i10 = this.mScrollType;
            if ((i10 == 2 || i10 == 3) && (springOverScroller = this.mSpringOverScroller) != null && springOverScroller.computeScrollOffset()) {
                int scrollX2 = getScrollX();
                int scrollY2 = getScrollY();
                int cOUICurrX = springOverScroller.getCOUICurrX();
                int cOUICurrY = springOverScroller.getCOUICurrY();
                if (scrollX2 != cOUICurrX || scrollY2 != cOUICurrY) {
                    int i11 = this.mOverflingDistance;
                    overScrollBy(cOUICurrX - scrollX2, cOUICurrY - scrollY2, scrollX2, scrollY2, 0, 0, i11, i11, false);
                    onScrollChanged(getScrollX(), getScrollY(), scrollX2, scrollY2);
                }
                if (springOverScroller.isCOUIFinished()) {
                    setScrollState(0);
                } else {
                    setScrollState(2);
                }
                if (awakenScrollBars()) {
                    return;
                }
                postInvalidateOnAnimation();
            }
        }
    }

    protected boolean disallowInterceptWhenIsOverScrolling() {
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (COUI_DEBUG) {
            this.mDebugPaint.setTextSize(30.0f);
            this.mDebugPaint.setColor(-65536);
            canvas.drawText("isOverScrolling: " + W(), getWidth() / 2.0f, (getHeight() / 2.0f) - 50.0f, this.mDebugPaint);
            canvas.drawText("X: FlingVX: " + this.mFlingVelocityX + ", ClickVX: " + this.mClickVelocityX, getWidth() / 2.0f, getHeight() / 2.0f, this.mDebugPaint);
            canvas.drawText("Y: FlingVY: " + this.mFlingVelocityY + ", ClickVY: " + this.mClickVelocityY, getWidth() / 2.0f, (getHeight() / 2.0f) + 50.0f, this.mDebugPaint);
            canvas.drawText("AbortVX:" + this.mDebugAbortVelocityX + ", AbortVY:" + this.mDebugAbortVelocityY, getWidth() / 2.0f, (getHeight() / 2.0f) + 100.0f, this.mDebugPaint);
        }
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.dispatchDrawOver(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.mCOUIRecyclerDividerManager.c(motionEvent);
        if (motionEvent.getActionMasked() == 1 && W() && this.mScrollType == 3) {
            this.mScrollType = 2;
        }
        if (this.mEnableDispatchEventWhileScrolling || (this.mEnableDispatchEventWhileOverScrolling && W())) {
            float velocityAlongScrollableDirection = getVelocityAlongScrollableDirection();
            if (motionEvent.getActionMasked() == 0 && this.mDispatchEventVelocityThreshold >= Math.abs(velocityAlongScrollableDirection)) {
                COUIIOverScroller cOUIIOverScroller = this.mOverScroller;
                float f10 = 0.0f;
                this.mAbortVelocityX = (cOUIIOverScroller == null || cOUIIOverScroller.getCurrVelocityX() == 0.0f) ? 0.0f : this.mFlingVelocityX;
                COUIIOverScroller cOUIIOverScroller2 = this.mOverScroller;
                if (cOUIIOverScroller2 != null && cOUIIOverScroller2.getCurrVelocityY() != 0.0f) {
                    f10 = this.mFlingVelocityY;
                }
                this.mAbortVelocityY = f10;
                COUIIOverScroller cOUIIOverScroller3 = this.mOverScroller;
                if (cOUIIOverScroller3 != null) {
                    cOUIIOverScroller3.abortAnimation();
                }
                stopScroll();
            }
        }
        if (W() && (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3)) {
            d0();
            if (!T(motionEvent)) {
                b0();
            }
            postInvalidateOnAnimation();
        }
        if (motionEvent.getActionMasked() != 5 || this.mEnablePointerDown) {
            return super.dispatchTouchEvent(motionEvent);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return true;
    }

    public void enableFrameRate(boolean z10) {
        this.mSpringOverScroller.enableFrameRate(z10);
        this.mCOUILocateOverScroller.enableFrameRate(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i10, int i11) {
        RecyclerView.p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutSuppressed) {
            return false;
        }
        int iCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (iCanScrollHorizontally == 0 || Math.abs(i10) < this.mMinFlingVelocity) {
            i10 = 0;
        }
        if (!zCanScrollVertically || Math.abs(i11) < this.mMinFlingVelocity) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        float f10 = i10;
        float f11 = i11;
        if (!dispatchNestedPreFling(f10, f11)) {
            this.mScrollType = 1;
            boolean z10 = iCanScrollHorizontally != 0 || zCanScrollVertically;
            dispatchNestedFling(f10, f11, z10);
            RecyclerView.s sVar = this.mOnFlingListener;
            if (sVar != null && sVar.onFling(i10, i11)) {
                return true;
            }
            if (z10) {
                if (zCanScrollVertically) {
                    iCanScrollHorizontally = (iCanScrollHorizontally == true ? 1 : 0) | 2;
                }
                startNestedScroll(iCanScrollHorizontally, 1);
                int i12 = this.mMaxFlingVelocity;
                int iMax = Math.max(-i12, Math.min(i10, i12));
                int i13 = this.mMaxFlingVelocity;
                this.mViewFlinger.c(iMax, Math.max(-i13, Math.min(i11, i13)));
                return true;
            }
        }
        return false;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public COUIScrollBar getCOUIScrollDelegate() {
        return this.mCOUIScrollBar;
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public View getCOUIScrollableView() {
        return this;
    }

    public int getHorizontalItemAlign() {
        return this.mLocateHelper.getHorizontalItemAlign();
    }

    public boolean getIsUseNativeOverScroll() {
        return this.mIsUseNativeOverScroll;
    }

    public COUIFlingLocateHelper getLocateHelper() {
        return this.mLocateHelper;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public COUILocateOverScroller getNativeOverScroller() {
        return this.mCOUILocateOverScroller;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public RecyclerView.s getOnFlingListener() {
        return this.mOnFlingListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public int getScrollState() {
        return this.mScrollState;
    }

    public c getViewFlinger() {
        return this.mViewFlinger;
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

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        c();
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onAttachedToWindow();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.cancelCallback();
        }
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.release();
            this.mCOUIScrollBar = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zA0 = a0(motionEvent);
        if (zA0) {
            this.mCOUIRecyclerDividerManager.k(motionEvent);
        }
        return zA0;
    }

    @Override // android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z10, boolean z11) {
        if (getScrollY() == i11 && getScrollX() == i10) {
            return;
        }
        if (COUI_DEBUG) {
            Log.d(TAG, "onOverScrolled: scrollX: " + i10 + " scrollY: " + i11);
        }
        if (this.mScrollType == 3) {
            i10 = (int) (COUIPhysicalAnimationUtil.calcOverFlingDecelerateDist(0, i10, this.mScreenWidth) * this.mFlingRatio);
            i11 = (int) (COUIPhysicalAnimationUtil.calcOverFlingDecelerateDist(0, i11, this.mScreenHeight) * this.mFlingRatio);
        }
        onScrollChanged(i10, i11, getScrollX(), getScrollY());
        ViewNative.setScrollX(this, i10);
        ViewNative.setScrollY(this, i11);
        invalidateParentIfNeeded();
        awakenScrollBars();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.mScreenWidth = displayMetrics.widthPixels;
        this.mScreenHeight = displayMetrics.heightPixels;
        if (this.mLocateHelper != null) {
            post(new Runnable() { // from class: androidx.recyclerview.widget.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3314a.Y();
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0146  */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r14v0, types: [android.view.View, androidx.recyclerview.widget.COUIRecyclerView, androidx.recyclerview.widget.RecyclerView] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instruction units count: 720
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.COUIRecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 != 0) {
            c();
            SpringOverScroller springOverScroller = this.mSpringOverScroller;
            if (springOverScroller != null) {
                springOverScroller.abortAnimation();
            }
        }
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onVisibilityChanged(view, i10);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        COUIScrollBar cOUIScrollBar = this.mCOUIScrollBar;
        if (cOUIScrollBar != null) {
            cOUIScrollBar.onWindowVisibilityChanged(i10);
        }
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        int i18 = i10 + i12;
        int i19 = i11 + i13;
        if ((i12 < 0 && i18 > 0) || (i12 > 0 && i18 < 0)) {
            i18 = 0;
        }
        if ((i13 < 0 && i19 > 0) || (i13 > 0 && i19 < 0)) {
            i19 = 0;
        }
        onOverScrolled(i18, i19, false, false);
        return false;
    }

    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = null;
        String resourceTypeName = this.mStyle == 0 ? null : getResources().getResourceTypeName(this.mStyle);
        if (!TextUtils.isEmpty(resourceTypeName) && "style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIRecyclerView, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            this.mScrollbarThumbVertical = typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUIRecyclerView_couiScrollbarThumbVertical);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.mScrollbars == 512) {
            Drawable drawable = this.mScrollbarThumbVertical;
            if (drawable != null) {
                this.mCOUIScrollBar.setThumbDrawable(drawable);
            } else {
                this.mCOUIScrollBar.refreshScrollBarColor();
            }
        }
        invalidate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void removeOnItemTouchListener(RecyclerView.t tVar) {
        this.mOnItemTouchListeners.remove(tVar);
        if (this.mInterceptingOnItemTouchListener == tVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mOnItemTouchListeners.get(i10).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void scrollBy(int i10, int i11) {
        RecyclerView.p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = pVar.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i10 = 0;
            }
            if (!zCanScrollVertically) {
                i11 = 0;
            }
            scrollByInternal(i10, i11, null);
        }
    }

    boolean scrollByInternal(int i10, int i11, MotionEvent motionEvent) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        consumePendingUpdateOperations();
        if (this.mAdapter == null || (i10 == 0 && i11 == 0)) {
            i12 = 0;
            i13 = 0;
            i14 = 0;
            i15 = 0;
        } else {
            if (!this.mOverScrollEnable || ((getScrollY() >= 0 || i11 <= 0) && ((getScrollY() <= 0 || i11 >= 0) && ((getScrollX() >= 0 || i10 <= 0) && (getScrollX() <= 0 || i10 >= 0))))) {
                int[] iArr = this.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                scrollStep(i10, i11, iArr);
                int[] iArr2 = this.mReusableIntPair;
                i16 = iArr2[0];
                i17 = iArr2[1];
                i18 = i10 - i16;
                i19 = i11 - i17;
            } else {
                i17 = 0;
                i16 = 0;
                i18 = 0;
                i19 = 0;
            }
            if (COUI_DEBUG) {
                Log.d(TAG, "scrollByInternal: y: " + i11 + " consumedY: " + i17 + " unconsumedY: " + i19);
            }
            i12 = i17;
            i13 = i16;
            i14 = i18;
            i15 = i19;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i13, i12, i14, i15, this.mScrollOffset, 0, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i20 = i14 - iArr4[0];
        int i21 = i15 - iArr4[1];
        int i22 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i23 = iArr5[0];
        this.mLastTouchX = i22 - i23;
        int i24 = this.mLastTouchY;
        int i25 = iArr5[1];
        this.mLastTouchY = i24 - i25;
        if (motionEvent != null) {
            motionEvent.offsetLocation(i23, i25);
        }
        int[] iArr6 = this.mNestedOffsets;
        int i26 = iArr6[0];
        int[] iArr7 = this.mScrollOffset;
        iArr6[0] = i26 + iArr7[0];
        iArr6[1] = iArr6[1] + iArr7[1];
        if (getOverScrollMode() != 2 && motionEvent != null && this.mOverScrollEnable && (androidx.core.view.u.b(motionEvent, 4098) || androidx.core.view.u.b(motionEvent, 8194))) {
            if (i21 != 0 || i20 != 0) {
                this.mScrollType = 2;
            }
            if (Math.abs(i21) == 0 && Math.abs(i12) < 2 && Math.abs(i11) < 2 && Math.abs(getScrollY()) > 2) {
                this.mScrollType = 2;
            }
            if (i21 == 0 && i12 == 0 && Math.abs(i11) > 2) {
                this.mScrollType = 2;
            }
            if (Math.abs(i20) == 0 && Math.abs(i13) < 2 && Math.abs(i10) < 2 && Math.abs(getScrollX()) > 2) {
                this.mScrollType = 2;
            }
            if (i20 == 0 && i13 == 0 && Math.abs(i10) > 2) {
                this.mScrollType = 2;
            }
            if (this.mFixScrollTypeForOverScrolling && (getScrollX() != 0 || getScrollY() != 0)) {
                this.mScrollType = 2;
            }
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int iCalcRealOverScrollDist = (int) (COUIPhysicalAnimationUtil.calcRealOverScrollDist(i21, scrollY, this.mOverscrollDistance) * this.mFlingRatio);
            int iCalcRealOverScrollDist2 = (int) (COUIPhysicalAnimationUtil.calcRealOverScrollDist(i20, scrollX, this.mOverscrollDistance) * this.mFlingRatio);
            if ((scrollY < 0 && i11 > 0) || (scrollY > 0 && i11 < 0)) {
                iCalcRealOverScrollDist = (int) (COUIPhysicalAnimationUtil.calcRealOverScrollDist(i11, scrollX, this.mOverscrollDistance) * this.mFlingRatio);
            }
            int i27 = iCalcRealOverScrollDist;
            if ((scrollX < 0 && i10 > 0) || (scrollX > 0 && i10 < 0)) {
                iCalcRealOverScrollDist2 = (int) (COUIPhysicalAnimationUtil.calcRealOverScrollDist(i10, scrollX, this.mOverscrollDistance) * this.mFlingRatio);
            }
            if (i27 != 0 || iCalcRealOverScrollDist2 != 0) {
                int i28 = this.mOverscrollDistance;
                overScrollBy(iCalcRealOverScrollDist2, i27, scrollX, scrollY, 0, 0, i28, i28, true);
            }
        }
        if (i13 != 0 || i12 != 0) {
            dispatchOnScrolled(i13, i12);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i13 == 0 && i12 == 0) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i10) {
        c();
        super.scrollToPosition(i10);
    }

    public void setAvoidAccidentalTouch(boolean z10) {
        this.mAvoidAccidentalTouch = z10;
    }

    public void setCustomTouchSlop(int i10) {
        Log.w(TAG, "setTouchSlop: set touchSlop from " + this.mTouchSlop + " to " + i10);
        this.mTouchSlop = i10;
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

    public void setEnablePointerDownAction(boolean z10) {
        this.mEnablePointerDown = z10;
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

    public void setFlingRatio(float f10) {
        this.mFlingRatio = f10;
    }

    public void setHorizontalFlingDurationRatio(float f10) {
        this.mCOUILocateOverScroller.setDurationRatio(f10);
    }

    public void setHorizontalFlingFriction(float f10) {
        COUILocateOverScroller cOUILocateOverScroller = this.mCOUILocateOverScroller;
        if (cOUILocateOverScroller != null) {
            cOUILocateOverScroller.setFlingFriction(f10);
        }
    }

    public void setHorizontalFlingVelocityRatio(float f10) {
        this.mCOUILocateOverScroller.setVelocityXRatio(f10);
        this.mCOUILocateOverScroller.setVelocityYRatio(f10);
    }

    public void setHorizontalItemAlign(int i10) {
        if (Z()) {
            setIsUseNativeOverScroll(true);
            this.mLocateHelper.setHorizontalItemAlign(i10);
        }
    }

    public void setIsUseNativeOverScroll(boolean z10) {
        this.mIsUseNativeOverScroll = z10;
        if (z10) {
            this.mOverScroller = this.mCOUILocateOverScroller;
        } else {
            this.mOverScroller = this.mSpringOverScroller;
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

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.p pVar) {
        super.setLayoutManager(pVar);
        if (pVar == null || this.mSpringOverScroller == null) {
            return;
        }
        if (pVar.canScrollHorizontally()) {
            this.mSpringOverScroller.setSpringBackTensionMultiple(HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE);
        } else {
            this.mSpringOverScroller.setSpringBackTensionMultiple(this.mVerticalSpringOverTension);
        }
    }

    public void setNativeOverScroller(COUILocateOverScroller cOUILocateOverScroller) {
        this.mCOUILocateOverScroller = cOUILocateOverScroller;
        if (this.mIsUseNativeOverScroll) {
            this.mOverScroller = cOUILocateOverScroller;
        }
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void setNewCOUIScrollDelegate(COUIScrollBar cOUIScrollBar) {
        if (cOUIScrollBar == null) {
            throw new IllegalArgumentException("setNewCOUIScrollDelegate must NOT be NULL.");
        }
        this.mCOUIScrollBar = cOUIScrollBar;
        cOUIScrollBar.onAttachedToWindow();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setOnFlingListener(RecyclerView.s sVar) {
        this.mOnFlingListener = sVar;
    }

    public void setOverScrollEnable(boolean z10) {
        this.mOverScrollEnable = z10;
    }

    public void setOverScrollingFixed(boolean z10) {
        this.mFixScrollTypeForOverScrolling = z10;
    }

    public void setPressHideDivider(boolean z10) {
        this.mCOUIRecyclerDividerManager.m(z10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    void setScrollState(int i10) {
        if (i10 == this.mScrollState) {
            return;
        }
        this.mScrollState = i10;
        if (i10 != 2) {
            G();
        }
        super.setScrollState(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 == 1) {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setSlowScrollThreshold(int i10) {
        Log.d(TAG, "Slow scroll threshold set to " + i10);
        this.mSlowScrollThreshold = i10;
    }

    public void setSpringBackFriction(float f10) {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.setSpringBackFriction(f10);
        }
    }

    public void setSpringBackTension(float f10) {
        this.mVerticalSpringOverTension = f10;
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.setSpringBackTensionMultiple(f10);
        }
    }

    public void setSpringOverScrollerDebug(boolean z10) {
        SpringOverScroller springOverScroller = this.mSpringOverScroller;
        if (springOverScroller != null) {
            springOverScroller.setDebug(z10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i10, int i11) {
        smoothScrollBy(i10, i11, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollToPosition(int i10) {
        c();
        super.smoothScrollToPosition(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void stopScroll() {
        super.stopScroll();
        setScrollState(0);
        G();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public int superComputeVerticalScrollRange() {
        return super.computeVerticalScrollRange();
    }

    @Override // com.coui.appcompat.scrollbar.COUIScrollBar.COUIScrollable
    public void superOnTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
    }

    public COUIRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i10, int i11, Interpolator interpolator) {
        smoothScrollBy(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    public COUIRecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.SCROLLBARS_NONE = 0;
        this.SCROLLBARS_VERTICAL = ConfigPackage.FRAME_SIZE_1;
        this.mFixScrollTypeForOverScrolling = true;
        this.mOverScrollEnable = true;
        this.SCROLLING = 0;
        this.FLING = 1;
        this.OVER_SCROLLING = 2;
        this.OVER_FLING = 3;
        this.mIsOverScrollingReverseFling = false;
        this.mScreenHeight = 0;
        this.mScreenWidth = 0;
        this.mItemClickableWhileSlowScrolling = true;
        this.mItemClickableWhileOverScrolling = true;
        this.mFastFlingVelocity = 1000.0f;
        this.mAvoidAccidentalTouch = true;
        this.mDebugPaint = new Paint();
        this.mEnableFlingSpeedIncrease = true;
        this.mEnableOptimizedScroll = true;
        this.mSmoothScrollFlag = false;
        this.mEnableDispatchEventWhileScrolling = false;
        this.mEnableDispatchEventWhileOverScrolling = false;
        this.mDispatchEventVelocityThreshold = 2500;
        this.mEventFilterAngle = DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE;
        this.mScrollbars = 0;
        this.mSlowScrollThreshold = 2500;
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mVerticalSpringOverTension = VERTICAL_SPRING_BACK_TENSION_MULTIPLE;
        this.mEnablePointerDown = true;
        this.mFlingRatio = 1.0f;
        this.mEnableVibrator = true;
        O(context, attributeSet, i10);
        S();
        P();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setSlowScrollThreshold(2500);
        R(context);
        if (COUI_DEBUG) {
            Log.d(TAG, "COUIRecyclerView: overscroll_mode: " + getOverScrollMode() + " mOverScrollEnable: " + this.mOverScrollEnable);
        }
        Q(context);
        COUIFlingLocateHelper cOUIFlingLocateHelper = new COUIFlingLocateHelper();
        this.mLocateHelper = cOUIFlingLocateHelper;
        cOUIFlingLocateHelper.attachToRecyclerView(this);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.mScreenWidth = displayMetrics.widthPixels;
        this.mScreenHeight = displayMetrics.heightPixels;
        this.mCOUIRecyclerDividerManager = new g(this, this.mTouchSlop);
        if (this.mScrollbars == 512) {
            K(context);
            int i11 = this.mScrollbarsSize;
            if (i11 != 0) {
                this.mCOUIScrollBar.setThumbSize(i11);
            }
            Drawable drawable = this.mScrollbarThumbVertical;
            if (drawable != null) {
                this.mCOUIScrollBar.setThumbDrawable(drawable);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12) {
        smoothScrollBy(i10, i11, interpolator, i12, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12, boolean z10) {
        if (W()) {
            c();
        }
        this.mSmoothScrollFlag = true;
        RecyclerView.p pVar = this.mLayout;
        if (pVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutSuppressed) {
            return;
        }
        if (!pVar.canScrollHorizontally()) {
            i10 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        this.mScrollType = 0;
        if (i12 != Integer.MIN_VALUE && i12 <= 0) {
            scrollBy(i10, i11);
            return;
        }
        if (z10) {
            int i13 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i13 |= 2;
            }
            startNestedScroll(i13, 1);
        }
        this.mViewFlinger.f(i10, i11, i12, interpolator);
    }
}

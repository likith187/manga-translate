.class public Lcom/coui/appcompat/scrollview/COUINestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$AccessibilityDelegate;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;,
        Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG:Z = true

.field private static final DEBUG_PAINT_TEXT_OFFSET_Y:I = 0x32

.field private static final DEBUG_PAINT_TEXT_SIZE:I = 0x1e

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD:I = 0x9c4

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0xfa

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final FLING_SCROLL_THRESHOLD:I = 0x5dc

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I = 0x64

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "COUINestedScrollView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field private mAbortVelocityY:F

.field private mActivePointerId:I

.field private mAvoidAccidentalTouch:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDispatchEventVelocityThreshold:I

.field private mEnableDispatchEventWhileOverScrolling:Z

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEnableOptimizedScroll:Z

.field private mEnableVibrator:Z

.field private mEventFilterAngle:F

.field private mFastFlingVelocity:F

.field private mFlingStrictSpan:Z

.field private mFlingVelocityY:F

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsBeingDragged:Z

.field private mIsColorDevice:Ljava/lang/Boolean;

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnCOUIScrollChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangeListener:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

.field private mScreenHeight:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mSmoothScrollingEnabled:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScreenHeight:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileSlowScrolling:Z

    .line 6
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileOverScrolling:Z

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mDebugPaint:Landroid/graphics/Paint;

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileScrolling:Z

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v2, 0x9c4

    .line 10
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mDispatchEventVelocityThreshold:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEventFilterAngle:F

    const v2, 0x44bb8000    # 1500.0f

    .line 12
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFastFlingVelocity:F

    .line 13
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAvoidAccidentalTouch:Z

    .line 14
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableOptimizedScroll:Z

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnCOUIScrollChangeListener:Ljava/util/ArrayList;

    .line 16
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableVibrator:Z

    .line 17
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    .line 19
    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    .line 20
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLayoutDirty:Z

    .line 21
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLaidOut:Z

    .line 22
    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 23
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    .line 24
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v3, -0x1

    .line 25
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    const/4 v3, 0x2

    .line 26
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    .line 27
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    .line 28
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    .line 29
    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    .line 30
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initScrollView(Landroid/content/Context;)V

    .line 31
    sget-object v2, Lcom/support/scrollview/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    sget p2, Lcom/support/scrollview/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableVibrator:Z

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private abortAnimatedScroll()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method private canScroll()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    filled-new-array {p0, v0}, [I

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    if-ge p0, v2, :cond_0

    aget v2, v1, p0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge p2, v7, :cond_7

    if-ge v6, p3, :cond_7

    const/4 v8, 0x1

    if-ge p2, v6, :cond_0

    if-ge v7, p3, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    if-nez v1, :cond_1

    move-object v1, v5

    move v4, v9

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v6, v10, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v7, v6, :cond_4

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v9, :cond_7

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    move-object v1, v5

    move v4, v8

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    :goto_3
    move-object v1, v5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isClickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v4, :cond_2

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_2
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findViewToDispatchClickEvent: target: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUINestedScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getVelocityAlongScrollableDirection()F
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVerticalScrollFactor:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method private hookIfNeedInterceptMoveEvent(FF)Z
    .locals 6

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEventFilterAngle:F

    float-to-double v2, p0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    cmpl-double p0, p1, v2

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private inChild(II)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initScrollView(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v2, 0x4009999a    # 2.15f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setIsScrollView(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mMaximumVelocity:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverscrollDistance:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverflingDistance:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScreenHeight:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isClickEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    mul-int/2addr p1, p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isColorDevice()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->isColorOS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    return-object p0
.end method

.method private isFastFling(FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAvoidAccidentalTouch:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFastFlingVelocity:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFastFlingVelocity:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isOverScrolling()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onNestedScrollInternal(II[I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    invoke-virtual {p0, v4, v2}, Landroid/view/View;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v1

    if-eqz p3, :cond_3

    aget v1, p3, v5

    add-int/2addr v1, v3

    aput v1, p3, v5

    :cond_3
    sub-int v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v3

    move v3, v5

    move-object v5, v6

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private performFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableVibrator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private runAnimatedScroll(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2, p2, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    :goto_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    move v3, v4

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method

.method private scrollToWithClamp(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private smoothCOUIScrollBy(IIIZ)V
    .locals 8

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr p1, v0

    .line 10
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, v4

    .line 11
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v6, p1, v4

    .line 12
    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIIII)V

    .line 14
    :cond_1
    invoke-direct {p0, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->runAnimatedScroll(Z)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p3

    if-nez p3, :cond_4

    .line 16
    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p3

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_3

    iget p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    :cond_3
    iput p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAbortVelocityY:F

    .line 17
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->abortAnimatedScroll()V

    .line 18
    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_4

    .line 19
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    .line 20
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 21
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScroll:J

    return-void
.end method


# virtual methods
.method public addOnCOUIScrollChangeListener(Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnCOUIScrollChangeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public arrowScroll(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    :goto_1
    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public computeScroll()V
    .locals 14

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->canScroll()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v2

    if-le v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->abortAnimatedScroll()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    return-void

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    sub-int v2, v0, v2

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    iget-object v6, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    const/4 v0, 0x1

    aput v1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v3, p0

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v10

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget v12, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverflingDistance:I

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move v6, v2

    move v8, v3

    invoke-virtual/range {v4 .. v13}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v7, v4, v3

    sub-int v9, v2, v7

    iget-object v12, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    aput v1, v12, v0

    iget-object v10, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    aget v1, v1, v0

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getVelocityAlongScrollableDirection()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: current velocity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " threshold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mDispatchEventVelocityThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUINestedScrollView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mDispatchEventVelocityThreshold:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    :cond_1
    iput v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAbortVelocityY:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    const/16 v4, 0x21

    if-eq v0, v3, :cond_7

    const/16 v3, 0x14

    if-eq v0, v3, :cond_5

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fullScroll(I)Z

    move-result v1

    :cond_9
    :goto_0
    return v1
.end method

.method public fling(I)V
    .locals 12

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v5, p1

    invoke-interface/range {v1 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->runAnimatedScroll(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 5

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public getCOUIScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getScrollableRange()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isEnableFlingSpeedIncrease()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isEnableFlingSpeedIncrease()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const-string v3, "COUINestedScrollView"

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    const/4 v5, -0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    goto/16 :goto_5

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    if-ne v0, v5, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-ne v6, v5, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_10

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v6

    and-int/2addr v2, v6

    if-nez v2, :cond_10

    int-to-float v0, v0

    int-to-float v2, v5

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->hookIfNeedInterceptMoveEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_5

    :cond_6
    iput-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    iput v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    iget-object v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->stopNestedScroll(I)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v5

    :goto_0
    iget v6, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    iget v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAbortVelocityY:F

    invoke-direct {p0, v6, v7}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isFastFling(FF)Z

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v5

    const/high16 v8, 0x437a0000    # 250.0f

    if-lez v7, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    if-eqz v6, :cond_a

    move v7, v1

    goto :goto_1

    :cond_a
    move v7, v4

    :goto_1
    iput-boolean v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOverScrolling()Z

    move-result v7

    iput-boolean v7, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchTime:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent: ACTION_DOWN, isFastFlingY = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSlowScrolling = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", \nMath.abs(scrollVelocityY) > 0 = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_b

    move v5, v1

    goto :goto_2

    :cond_b
    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", \nscrollVelocityY = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", \nMath.abs(scrollVelocityY) < SLOW_SCROLL_THRESHOLD = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_c

    move v5, v1

    goto :goto_3

    :cond_c
    move v5, v4

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", \nisOverScrolling = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileOverScrolling:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", scrollVelocityY = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mFlingVelocityY = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_d

    iput-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    goto :goto_5

    :cond_d
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_10
    :goto_5
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLayoutDirty:Z

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iget-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLaidOut:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    iget p3, p3, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;->scrollPosition:I

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    :cond_2
    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollToWithClamp(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p5, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    .line 4
    iget p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p5, p6, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p6, p7}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onNestedScrollInternal(II[I)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_8

    :cond_0
    const/4 p3, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    if-le p2, p4, :cond_3

    :cond_1
    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    if-lt p2, p4, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    goto :goto_0

    :cond_2
    move p4, p3

    :goto_0
    sub-int/2addr p2, p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScreenHeight:I

    invoke-static {p4, p2, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcOverFlingDecelerateDist(III)I

    move-result p2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p4

    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollableRange()I

    move-result v0

    if-gt p4, v0, :cond_5

    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    if-ltz p4, :cond_6

    if-gez p2, :cond_6

    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->performFeedback()V

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p4, :cond_6

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverflingDistance:I

    invoke-virtual {p4, p2, p3, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p3

    if-le p2, p3, :cond_7

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->performFeedback()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverflingDistance:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_7
    iput p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastScrollerY:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_8
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$COUISavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnScrollChangeListener:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/coui/appcompat/scrollview/COUINestedScrollView;IIII)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnCOUIScrollChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnCOUIScrollChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;->onCOUIScrollChange(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScreenHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p2

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollTo(II)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->doScrollY(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    iput v11, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_1f

    const/4 v4, -0x1

    if-eq v1, v13, :cond_10

    const-string v3, "Invalid pointerId="

    const-string v5, "COUINestedScrollView"

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    goto/16 :goto_7

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    goto/16 :goto_7

    :cond_4
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_5
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->endDrag()V

    goto/16 :goto_7

    :cond_6
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v2, :cond_7

    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableOptimizedScroll:Z

    if-eqz v2, :cond_7

    check-cast v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->triggerCallback()V

    :cond_7
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    sub-int/2addr v0, v6

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchSlop:I

    if-le v1, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iput-boolean v13, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_b

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchSlop:I

    sub-int/2addr v0, v1

    :cond_a
    :goto_0
    move v7, v0

    goto :goto_1

    :cond_b
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTouchSlop:I

    add-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_25

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v13

    sub-int/2addr v7, v0

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    :cond_c
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    aget v0, v0, v13

    sub-int/2addr v6, v0

    iput v6, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverscrollDistance:I

    invoke-static {v7, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v7

    :cond_d
    :goto_2
    move v15, v7

    goto :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverscrollDistance:I

    invoke-static {v7, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v7

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget v8, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverflingDistance:I

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v2, v15

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int v2, v0, v14

    sub-int v4, v15, v2

    iget-object v7, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollConsumed:[I

    aput v11, v7, v13

    iget-object v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mNestedYOffset:I

    goto/16 :goto_7

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isOverScrolling()Z

    move-result v1

    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v2, :cond_11

    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v2, :cond_11

    move v2, v13

    goto :goto_4

    :cond_11
    move v2, v11

    :goto_4
    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileOverScrolling:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    move v11, v13

    :cond_12
    if-nez v2, :cond_13

    if-eqz v11, :cond_14

    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_14
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mMinimumVelocity:I

    if-le v1, v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gez v1, :cond_17

    const/16 v1, -0x5dc

    if-le v0, v1, :cond_16

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_15

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    :cond_15
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_16
    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v10, v3, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v10, v3, v1, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v2

    if-le v1, v2, :cond_1a

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_19

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_18

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    :cond_18
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    goto :goto_5

    :cond_19
    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v10, v3, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v10, v3, v1, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto :goto_5

    :cond_1a
    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v10, v3, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v10, v3, v1, v13}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {v10, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->fling(I)V

    goto :goto_5

    :cond_1b
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_1c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_1e

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->performFeedback()V

    :cond_1e
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->endDrag()V

    goto :goto_7

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v11

    :cond_20
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v13

    goto :goto_6

    :cond_21
    move v1, v11

    :goto_6
    iput-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_23

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingVelocityY:F

    :cond_23
    iput v3, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAbortVelocityY:F

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    if-eqz v1, :cond_24

    iput-boolean v11, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFlingStrictSpan:Z

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mLastMotionY:I

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mActivePointerId:I

    invoke-virtual {v10, v2, v11}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    :cond_25
    :goto_7
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_26
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_0
    return-void
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 12

    move-object v0, p0

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v5

    :goto_3
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v5

    :goto_5
    add-int v3, p3, p1

    if-nez v2, :cond_6

    move v6, v4

    goto :goto_6

    :cond_6
    move/from16 v6, p7

    :goto_6
    add-int v7, p4, p2

    if-nez v1, :cond_7

    move v8, v4

    goto :goto_7

    :cond_7
    move/from16 v8, p8

    :goto_7
    neg-int v9, v6

    add-int v6, v6, p5

    neg-int v10, v8

    add-int v8, v8, p6

    if-nez v2, :cond_9

    if-le v3, v6, :cond_8

    move v2, v5

    move v3, v6

    goto :goto_8

    :cond_8
    if-ge v3, v9, :cond_9

    move v2, v5

    move v3, v9

    goto :goto_8

    :cond_9
    move v2, v4

    :goto_8
    if-nez v1, :cond_b

    if-le v7, v8, :cond_a

    move v1, v5

    move v7, v8

    goto :goto_9

    :cond_a
    if-ge v7, v10, :cond_b

    move v1, v5

    move v7, v10

    goto :goto_9

    :cond_b
    move v1, v4

    :goto_9
    iget-object v6, v0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->getScrollRange()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object p1, v6

    move p2, v3

    move p3, v7

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-interface/range {p1 .. p7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    :cond_c
    invoke-virtual {p0, v3, v7, v2, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    :cond_d
    move v4, v5

    :cond_e
    return v4
.end method

.method public pageScroll(I)Z
    .locals 4

    const/16 v0, 0x82

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_2

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public removeOnCOUIScrollChangeListener(Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnCOUIScrollChangeListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnCOUIScrollChangeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mChildToScrollTo:Landroid/view/View;

    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->isColorDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollX(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public setAvoidAccidentalTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mAvoidAccidentalTouch:Z

    return-void
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrollingThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mDispatchEventVelocityThreshold:I

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    return-void
.end method

.method public setEventFilterTangent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEventFilterAngle:F

    return-void
.end method

.method public setFastFlingThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mFastFlingVelocity:F

    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mOnScrollChangeListener:Lcom/coui/appcompat/scrollview/COUINestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setDebug(Z)V

    :cond_0
    return-void
.end method

.method public final smoothCOUIScrollBy(II)V
    .locals 2

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothCOUIScrollBy(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollBy(IIIZ)V

    return-void
.end method

.method public final smoothCOUIScrollTo(II)V
    .locals 2

    const/16 v0, 0xfa

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollTo(IIIZ)V

    return-void
.end method

.method public final smoothCOUIScrollTo(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollTo(IIIZ)V

    return-void
.end method

.method smoothCOUIScrollTo(IIIZ)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollBy(IIIZ)V

    return-void
.end method

.method smoothCOUIScrollTo(IIZ)V
    .locals 1

    const/16 v0, 0xfa

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/scrollview/COUINestedScrollView;->smoothCOUIScrollTo(IIIZ)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    return-void
.end method

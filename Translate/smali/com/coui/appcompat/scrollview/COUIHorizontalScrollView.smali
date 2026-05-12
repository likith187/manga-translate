.class public Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView$COUISavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD:I = 0x9c4

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final FLING_SCROLL_THRESHOLD:I = 0x5dc

.field private static final HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE:F = 3.2f

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I = 0x64

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "COUIHorScrollView"


# instance fields
.field private mAbortVelocityX:F

.field private mActivePointerId:I

.field private mAvoidAccidentalTouch:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mDispatchEventVelocityThreshold:I

.field private mEnableDispatchEventWhileOverScrolling:Z

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEnableOptimizedScroll:Z

.field private mEnableVibrator:Z

.field private mEventFilterAngle:F

.field private mFastFlingVelocity:F

.field private mFillViewport:Z

.field private mFlingStrictSpan:Z

.field private mFlingVelocityX:F

.field private mHorizontalScrollFactor:F

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsBeingDragged:Z

.field private mIsColorDevice:Ljava/lang/Boolean;

.field private mIsLayoutDirty:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScreenWidth:I

.field private mScrollStrictSpan:Z

.field private mSmoothScrollingEnabled:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScreenWidth:I

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    .line 7
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsLayoutDirty:Z

    .line 9
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 10
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    .line 11
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v3, -0x1

    .line 12
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    .line 13
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileSlowScrolling:Z

    .line 14
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileOverScrolling:Z

    .line 15
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileScrolling:Z

    .line 16
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v3, 0x9c4

    .line 17
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mDispatchEventVelocityThreshold:I

    const/high16 v3, 0x41a00000    # 20.0f

    .line 18
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEventFilterAngle:F

    const v3, 0x44bb8000    # 1500.0f

    .line 19
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFastFlingVelocity:F

    .line 20
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAvoidAccidentalTouch:Z

    .line 21
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScrollStrictSpan:Z

    .line 22
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    .line 23
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableOptimizedScroll:Z

    .line 24
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableVibrator:Z

    .line 25
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    .line 26
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initCOUIHorizontalScrollView(Landroid/content/Context;)V

    .line 27
    sget-object v1, Lcom/support/scrollview/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    sget p2, Lcom/support/scrollview/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableVibrator:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScreenWidth:I

    .line 32
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 33
    iput-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    .line 34
    iput-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 p4, 0x1

    .line 35
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsLayoutDirty:Z

    .line 36
    iput-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 37
    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    .line 38
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    .line 40
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileSlowScrolling:Z

    .line 41
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileOverScrolling:Z

    .line 42
    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileScrolling:Z

    .line 43
    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v0, 0x9c4

    .line 44
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mDispatchEventVelocityThreshold:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 45
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEventFilterAngle:F

    const v0, 0x44bb8000    # 1500.0f

    .line 46
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFastFlingVelocity:F

    .line 47
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAvoidAccidentalTouch:Z

    .line 48
    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScrollStrictSpan:Z

    .line 49
    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    .line 50
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableOptimizedScroll:Z

    .line 51
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableVibrator:Z

    .line 52
    iput-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    .line 53
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initCOUIHorizontalScrollView(Landroid/content/Context;)V

    return-void
.end method

.method private canScroll()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr v1, p0

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

.method private doScrollX(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->smoothCOUIScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
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

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

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

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v6, v10, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

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

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isClickEvent(Landroid/view/MotionEvent;)Z

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

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_2
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getVelocityAlongScrollableDirection()F
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hookIfNeedInterceptMoveEvent(FF)Z
    .locals 6

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEventFilterAngle:F

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

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private initCOUIHorizontalScrollView(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v1, 0x404ccccd    # 3.2f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setIsScrollView(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mMinimumVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mMaximumVelocity:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverscrollDistance:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverflingDistance:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mHorizontalScrollFactor:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isClickEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

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

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchTime:J

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->isColorOS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    return-object p0
.end method

.method private isFastFling(FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAvoidAccidentalTouch:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFastFlingVelocity:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFastFlingVelocity:F

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isOverScrolling()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

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

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p2, p0

    if-gt p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

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

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private performFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableVibrator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v2, p2, p3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

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
    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->doScrollX(I)V

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->smoothCOUIScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
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

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->doScrollX(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x11

    const/4 v3, 0x0

    const/16 v4, 0x42

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_3

    move v2, v1

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
    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->doScrollX(I)V

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

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
    .locals 12

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v11

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v2}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v2

    if-ne v0, v1, :cond_0

    if-eq v11, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v6

    sub-int v3, v1, v0

    sub-int v4, v2, v11

    iget v8, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverflingDistance:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v10}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getVelocityAlongScrollableDirection()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mDispatchEventVelocityThreshold:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingVelocityX:F

    :cond_1
    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAbortVelocityX:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

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
    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x42

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

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

    const/16 v3, 0x15

    const/16 v4, 0x11

    if-eq v0, v3, :cond_7

    const/16 v3, 0x16

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
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    :cond_9
    :goto_0
    return v1
.end method

.method public fling(I)V
    .locals 14

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingVelocityX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    invoke-interface/range {v3 .. v13}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    :cond_1
    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result v1

    :cond_3
    invoke-direct {p0, v2, v1, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, p0

    :cond_4
    if-eq v0, p1, :cond_6

    if-eqz v2, :cond_5

    const/16 p1, 0x42

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_7
    return-void
.end method

.method public fullScroll(I)Z
    .locals 4

    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iput v2, v3, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public getScrollableRange()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

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

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isEnableFlingSpeedIncrease()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFillViewport()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFillViewport:Z

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScrollStrictSpan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScrollStrictSpan:Z

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_6

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mHorizontalScrollFactor:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    if-gez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-le v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-super {p0, v2, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return v1

    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    const/4 v4, -0x1

    if-eq v0, v1, :cond_7

    const-string v5, "Invalid pointerId="

    const-string v6, "COUIHorScrollView"

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent ACTION_POINTER_UP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_4

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v4

    and-int/2addr v4, v1

    if-nez v4, :cond_e

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-direct {p0, v3, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->hookIfNeedInterceptMoveEvent(FF)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    :cond_7
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingVelocityX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x44bb8000    # 1500.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    move v4, v1

    goto :goto_1

    :cond_a
    move v4, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v5, v2

    if-lez v2, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_b

    if-eqz v4, :cond_b

    move v0, v1

    goto :goto_2

    :cond_b
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOverScrolling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v0, v4}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->inChild(II)Z

    move-result v4

    if-nez v4, :cond_c

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_4

    :cond_c
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    :cond_e
    :goto_4
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v1, p0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_9

    :cond_0
    const/4 p3, 0x0

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    if-le p1, p4, :cond_3

    :cond_1
    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    if-lt p1, p4, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    goto :goto_0

    :cond_2
    move p4, p3

    :goto_0
    sub-int/2addr p1, p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScreenWidth:I

    invoke-static {p4, p1, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcOverFlingDecelerateDist(III)I

    move-result p1

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

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollableRange()I

    move-result v0

    if-gt p4, v0, :cond_5

    :cond_4
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p4

    if-ltz p4, :cond_6

    if-gez p1, :cond_6

    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->performFeedback()V

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p4, :cond_6

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverflingDistance:I

    invoke-virtual {p4, p1, p3, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p3

    if-le p1, p3, :cond_7

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->performFeedback()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverflingDistance:I

    invoke-virtual {p3, p1, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isColorDevice()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollX(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    goto :goto_1

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_9
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x42

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x11

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
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverscrollDistance:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverflingDistance:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->doScrollX(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    const/4 v3, -0x1

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_20

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->recycleVelocityTracker()V

    goto/16 :goto_6

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableOptimizedScroll:Z

    if-eqz v1, :cond_4

    check-cast v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->triggerCallback()V

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid pointerId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in onTouchEvent"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIHorScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    sub-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchSlop:I

    if-le v1, v3, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-lez v0, :cond_7

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTouchSlop:I

    add-int/2addr v0, v1

    :cond_8
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_20

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    if-gez p1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverscrollDistance:I

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    :cond_9
    :goto_1
    move v4, v0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v1

    if-le p1, v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverscrollDistance:I

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    iget v10, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->isOverScrolling()Z

    move-result v0

    iget-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_3

    :cond_c
    move v4, v1

    :goto_3
    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileOverScrolling:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v5, :cond_d

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_4

    :cond_d
    move v0, v1

    :goto_4
    if-nez v4, :cond_e

    if-eqz v0, :cond_f

    :cond_e
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_f
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz p1, :cond_1a

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v4, 0x3e8

    invoke-virtual {p1, v4, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mMinimumVelocity:I

    if-le v0, v4, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-gez v0, :cond_12

    const/16 v0, -0x5dc

    if-le p1, v0, :cond_11

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_10

    neg-int p1, p1

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityX(F)V

    :cond_10
    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_5

    :cond_11
    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v4

    if-le v0, v4, :cond_15

    const/16 v0, 0x5dc

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_13

    neg-int p1, p1

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityX(F)V

    :cond_13
    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_5

    :cond_14
    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_5

    :cond_15
    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->fling(I)V

    goto :goto_5

    :cond_16
    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_17
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    if-ltz p1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-le p1, v0, :cond_19

    :cond_18
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->performFeedback()V

    :cond_19
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->recycleVelocityTracker()V

    goto/16 :goto_6

    :cond_1a
    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->getScrollRange()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_6

    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1e

    iget v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingVelocityX:F

    :cond_1e
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAbortVelocityX:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastMotionX:I

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mActivePointerId:I

    :cond_20
    :goto_6
    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->onOverScrolled(IIZZ)V

    return p1
.end method

.method public pageScroll(I)Z
    .locals 4

    const/16 v0, 0x42

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v1, v2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setAvoidAccidentalTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAvoidAccidentalTouch:Z

    return-void
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrollingThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mDispatchEventVelocityThreshold:I

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    return-void
.end method

.method public setEventFilterTangent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEventFilterAngle:F

    return-void
.end method

.method public setFastFlingThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFastFlingVelocity:F

    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setDebug(Z)V

    :cond_0
    return-void
.end method

.method public final smoothCOUIScrollBy(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingVelocityX:F

    :cond_3
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mAbortVelocityX:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mFlingStrictSpan:Z

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothCOUIScrollTo(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIHorizontalScrollView;->smoothCOUIScrollBy(II)V

    return-void
.end method

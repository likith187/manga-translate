.class public Lcom/coui/appcompat/scrollview/COUIScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DEBUG_PAINT_TEXT_OFFSET_Y:I = 0x32

.field private static final DEBUG_PAINT_TEXT_SIZE:I = 0x1e

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD:I = 0x9c4

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final FLING_SCROLL_THRESHOLD:I = 0x5dc

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I = 0x64

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "COUIScrollView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field private mAbortVelocityY:F

.field private mActivePointerId:I

.field private mAvoidAccidentalTouch:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mCustomOverScrollFactor:F

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDispatchEventVelocityThreshold:I

.field private mEnableDispatchEventWhileOverScrolling:Z

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEnableOptimizedScroll:Z

.field private mEnableVibrator:Z

.field private mEventFilterAngle:F

.field private mFastFlingVelocity:F

.field private mFillViewport:Z

.field private mFlingStrictSpan:Z

.field private mFlingVelocityY:F

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsBeingDragged:Z

.field private mIsColorDevice:Ljava/lang/Boolean;

.field private mIsLayoutDirty:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOriginalOverScroll:I

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

.field private mScreenHeight:I

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Z

.field private mSmoothScrollingEnabled:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    .line 5
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    .line 7
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    .line 9
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mCustomOverScrollFactor:F

    const/4 v3, -0x1

    .line 11
    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    .line 13
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    .line 14
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    .line 15
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    .line 16
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    .line 17
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    .line 18
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDebugPaint:Landroid/graphics/Paint;

    .line 19
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileScrolling:Z

    .line 20
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v0, 0x9c4

    .line 21
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDispatchEventVelocityThreshold:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 22
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEventFilterAngle:F

    const v0, 0x44bb8000    # 1500.0f

    .line 23
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFastFlingVelocity:F

    .line 24
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAvoidAccidentalTouch:Z

    .line 25
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    .line 26
    iput-boolean v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    .line 27
    iput-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    .line 28
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initCOUIScrollView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 32
    iput p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    .line 35
    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    .line 37
    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 38
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    .line 39
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mCustomOverScrollFactor:F

    const/4 v2, -0x1

    .line 41
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 42
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    .line 43
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    .line 44
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    .line 45
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    .line 46
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    .line 47
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    .line 48
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDebugPaint:Landroid/graphics/Paint;

    .line 49
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileScrolling:Z

    .line 50
    iput-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v2, 0x9c4

    .line 51
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDispatchEventVelocityThreshold:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 52
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEventFilterAngle:F

    const v2, 0x44bb8000    # 1500.0f

    .line 53
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFastFlingVelocity:F

    .line 54
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAvoidAccidentalTouch:Z

    .line 55
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    .line 56
    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    .line 57
    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    .line 58
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initCOUIScrollView(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/support/scrollview/R$styleable;->COUIScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/support/scrollview/R$styleable;->COUIScrollView_couiScrollViewEnableVibrator:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private canScroll()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    iget-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_0
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

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isClickEvent(Landroid/view/MotionEvent;)Z

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

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/scrollview/COUIScrollView;->dispatchClickEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

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

    const-string p1, "COUIScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2, v1, v0}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fling(I)V

    :cond_3
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hookIfNeedInterceptMoveEvent(FF)Z
    .locals 6

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

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

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEventFilterAngle:F

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

.method private initCOUIScrollView(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const v1, 0x4009999a    # 2.15f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setIsScrollView(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMinimumVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMaximumVelocity:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOriginalOverScroll:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVerticalScrollFactor:F

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isClickEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

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

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchTime:J

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->isColorOS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsColorDevice:Ljava/lang/Boolean;

    return-object p0
.end method

.method private isFastFling(FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAvoidAccidentalTouch:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFastFlingVelocity:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFastFlingVelocity:F

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

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

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

    invoke-static {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

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

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

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

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private performFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
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
    invoke-direct {p0, v2, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

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
    invoke-direct {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    move v3, v4

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_4

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v3
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

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
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

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

    invoke-static {p1, v1, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->clamp(III)I

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

    invoke-static {p2, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    :cond_1
    return-void
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

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

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

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

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
    invoke-direct {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOffScreen(Landroid/view/View;)Z

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
    .locals 11

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v1

    if-ne v4, v0, :cond_0

    if-eq v5, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v7

    sub-int v2, v0, v4

    sub-int v3, v1, v5

    iget v9, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getVelocityAlongScrollableDirection()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDispatchEventVelocityThreshold:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    :cond_1
    iput v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAbortVelocityY:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

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
    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x6f

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
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->fullScroll(I)Z

    move-result v1

    :cond_9
    :goto_0
    return v1
.end method

.method public fling(I)V
    .locals 14

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    div-int/lit8 v13, v0, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v7, p1

    invoke-interface/range {v3 .. v13}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIIIII)V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
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

    iget-object v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
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

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

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

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVerticalScrollFactor:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    const/4 v4, -0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    goto/16 :goto_2

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    if-ne v0, v4, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v4, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIScrollView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v6

    and-int/2addr v2, v6

    if-nez v2, :cond_11

    int-to-float v0, v0

    int-to-float v2, v5

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->hookIfNeedInterceptMoveEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    :cond_8
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    iget-object v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    goto :goto_0

    :cond_b
    move v0, v4

    :goto_0
    iget v5, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    iget v6, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAbortVelocityY:F

    invoke-direct {p0, v5, v6}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isFastFling(FF)Z

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v6, v4

    if-lez v4, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_c

    if-eqz v5, :cond_c

    move v0, v1

    goto :goto_1

    :cond_c
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_d

    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    goto :goto_2

    :cond_d
    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    if-nez p1, :cond_f

    move v3, v1

    :cond_f
    iput-boolean v3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_10

    iget-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    if-nez p1, :cond_10

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollStrictSpan:Z

    :cond_10
    invoke-virtual {p0, v2}, Landroid/view/View;->startNestedScroll(I)Z

    :cond_11
    :goto_2
    iget-boolean p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    if-eqz p4, :cond_1

    iget p4, p4, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->scrollPosition:I

    invoke-static {p0, p4}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_3

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    if-gez p2, :cond_4

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToWithClamp(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v2, p0, :cond_2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    float-to-int p1, p3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    if-le p2, p4, :cond_3

    :cond_1
    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    if-lt p2, p4, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    goto :goto_0

    :cond_2
    move p4, p3

    :goto_0
    sub-int/2addr p2, p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

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

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollableRange()I

    move-result v0

    if-gt p4, v0, :cond_5

    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    if-ltz p4, :cond_6

    if-gez p2, :cond_6

    iget-boolean p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p4, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    iget-object p4, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p4, :cond_6

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p4, p2, p3, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    if-gt p3, p4, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p3

    if-le p2, p3, :cond_7

    iget-boolean p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    iget-object p3, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result p4

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    invoke-virtual {p3, p2, p4, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->invalidateParentIfNeeded()V

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
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOffScreen(Landroid/view/View;)Z

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

    check-cast p1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSavedState:Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/scrollview/COUIScrollView$COUISavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScreenHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->doScrollY(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    :cond_0
    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v3, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_20

    const/4 v4, -0x1

    if-eq v1, v13, :cond_10

    const-string v5, "Invalid pointerId="

    const-string v6, "COUIScrollView"

    if-eq v1, v3, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    goto/16 :goto_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    goto/16 :goto_6

    :cond_4
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->endDrag()V

    goto/16 :goto_6

    :cond_6
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v3, :cond_7

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    if-eqz v3, :cond_7

    check-cast v1, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->triggerCallback()V

    :cond_7
    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in onTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    sub-int/2addr v1, v0

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v2, v1, v3, v4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollConsumed:[I

    aget v2, v2, v13

    sub-int/2addr v1, v2

    iget-object v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v2, v2, v13

    int-to-float v2, v2

    invoke-virtual {v11, v12, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-object v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v3, v3, v13

    add-int/2addr v2, v3

    iput v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    :cond_9
    iget-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_b

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iput-boolean v13, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-lez v1, :cond_c

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    sub-int/2addr v1, v2

    :cond_b
    :goto_0
    move v14, v1

    goto :goto_1

    :cond_c
    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTouchSlop:I

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_25

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    invoke-static {v14, v0, v1}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    goto :goto_2

    :cond_e
    move v2, v14

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget v8, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coui/appcompat/scrollview/COUIScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int v2, v0, v15

    sub-int v4, v14, v2

    const/4 v3, 0x0

    iget-object v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    int-to-float v0, v1

    invoke-virtual {v11, v12, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mScrollOffset:[I

    aget v1, v1, v13

    add-int/2addr v0, v1

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mNestedYOffset:I

    goto/16 :goto_6

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isOverScrolling()Z

    move-result v1

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v3, :cond_11

    move v3, v13

    goto :goto_4

    :cond_11
    move v3, v2

    :goto_4
    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v5, :cond_12

    if-eqz v1, :cond_12

    move v2, v13

    :cond_12
    if-nez v3, :cond_13

    if-eqz v2, :cond_14

    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->findViewToDispatchClickEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_14
    iget-boolean v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mMinimumVelocity:I

    if-le v1, v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-gez v1, :cond_17

    const/16 v1, -0x5dc

    if-le v0, v1, :cond_16

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_15

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    :cond_15
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_5

    :cond_16
    neg-int v0, v0

    invoke-direct {v10, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_5

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v2

    if-le v1, v2, :cond_1a

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_19

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_18

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    :cond_18
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_5

    :cond_19
    neg-int v0, v0

    invoke-direct {v10, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_5

    :cond_1a
    neg-int v0, v0

    invoke-direct {v10, v0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->flingWithNestedDispatch(I)V

    goto :goto_5

    :cond_1b
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_1e

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->performFeedback()V

    :cond_1e
    iput v4, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->endDrag()V

    goto/16 :goto_6

    :cond_1f
    iget-object v14, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v14, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v20}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_6

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_21
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_22

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_22
    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_23

    iget v12, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    :cond_23
    iput v12, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAbortVelocityY:F

    iget-object v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v1, :cond_24

    iput-boolean v2, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastMotionY:I

    iput v1, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mInitialTouchY:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mActivePointerId:I

    invoke-virtual {v10, v3}, Landroid/view/View;->startNestedScroll(I)Z

    :cond_25
    :goto_6
    iget-object v0, v10, Lcom/coui/appcompat/scrollview/COUIScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_26
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    return v13
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onOverScrolled(IIZZ)V

    return p1
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

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

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

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v1, v3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToDescendant(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

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

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

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

    invoke-direct {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->isColorDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollX(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public scrollToDescendant(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mChildToScrollTo:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAvoidAccidentalTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAvoidAccidentalTouch:Z

    return-void
.end method

.method public setCustomOverScrollDistFactor(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOriginalOverScroll:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverscrollDistance:I

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverflingDistance:I

    return-void
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileOverScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrollingThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mDispatchEventVelocityThreshold:I

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableVibrator:Z

    return-void
.end method

.method public setEventFilterTangent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEventFilterAngle:F

    return-void
.end method

.method public setFastFlingThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFastFlingVelocity:F

    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

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

    iget-wide v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v0

    iget-object p2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-interface {p2, v2, v0, v1, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIII)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingVelocityY:F

    :cond_3
    iput v2, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mAbortVelocityY:F

    iget-object v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mFlingStrictSpan:Z

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scrollview/COUIScrollView;->mLastScroll:J

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

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->smoothCOUIScrollBy(II)V

    return-void
.end method

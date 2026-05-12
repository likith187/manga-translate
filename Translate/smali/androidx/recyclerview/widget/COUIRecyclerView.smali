.class public Landroidx/recyclerview/widget/COUIRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIRecyclerView$b;,
        Landroidx/recyclerview/widget/COUIRecyclerView$a;,
        Landroidx/recyclerview/widget/COUIRecyclerView$c;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final COUI_DEBUG:Z

.field private static final CUSTOM_TOUCH_SLOP:I = 0x2

.field private static final DEBUG_PAINT_TEXT_OFFSET_Y:I = 0x32

.field private static final DEBUG_PAINT_TEXT_SIZE:I = 0x1e

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_ANGLE:F = 20.0f

.field private static final DEFAULT_INTERACTING_NESTED_SCROLL_VELOCITY_THRESHOLD:I = 0x9c4

.field private static final DEGREE_TO_ARC_CONSTANT:D = 0.017453292519943295

.field private static final FLING_SCROLL_THRESHOLD:I = 0x3e8

.field private static final FLING_SCROLL_THRESHOLD_WHILE_OVER_SCROLLING:I = 0x1770

.field private static final HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE:F = 3.2f

.field private static final INVALID_POINTER:I = -0x1

.field private static final OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I

.field private static final OVER_SCROLL_TOUCH_OFFSET_THRESHOLD:I = 0xa

.field private static final SLOW_SCROLL_THRESHOLD:I = 0x9c4

.field public static final START_ALIGN:I = 0x1

.field static final TAG:Ljava/lang/String; = "COUIRecyclerView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field final FLING:I

.field final OVER_FLING:I

.field final OVER_SCROLLING:I

.field private final SCROLLBARS_NONE:I

.field private final SCROLLBARS_VERTICAL:I

.field final SCROLLING:I

.field private mAbortVelocityX:F

.field private mAbortVelocityY:F

.field private mAvoidAccidentalTouch:Z

.field private mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

.field private mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

.field private mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

.field private mClickVelocityX:F

.field private mClickVelocityY:F

.field private mDebugAbortVelocityX:F

.field private mDebugAbortVelocityY:F

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDispatchEventVelocityThreshold:I

.field private mEnableDispatchEventWhileOverScrolling:Z

.field private mEnableDispatchEventWhileScrolling:Z

.field private mEnableFlingSpeedIncrease:Z

.field private mEnableOptimizedScroll:Z

.field private mEnablePointerDown:Z

.field private mEnableVibrator:Z

.field private mEventFilterAngle:F

.field private mFastFlingVelocity:F

.field private mFixScrollTypeForOverScrolling:Z

.field private mFlingRatio:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

.field private mIsOverScrollingReverseFling:Z

.field private mIsTouchDownWhileOverScrolling:Z

.field private mIsTouchDownWhileSlowScrolling:Z

.field private mIsUseNativeOverScroll:Z

.field private mItemClickableWhileOverScrolling:Z

.field private mItemClickableWhileSlowScrolling:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mNestedOffsets:[I

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$s;

.field private mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$t;",
            ">;"
        }
    .end annotation
.end field

.field mOverScrollEnable:Z

.field private mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollType:I

.field private mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

.field private mScrollbars:I

.field private mScrollbarsSize:I

.field private mSlowScrollThreshold:I

.field private mSmoothScrollFlag:Z

.field private mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

.field private mStyle:I

.field private mTouchSlop:I

.field private mTouchTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalSpringOverTension:F

.field private mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIRecyclerView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLBARS_NONE:I

    const/16 v1, 0x200

    .line 5
    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLBARS_VERTICAL:I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    .line 7
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLING:I

    .line 9
    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->FLING:I

    const/4 v3, 0x2

    .line 10
    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_SCROLLING:I

    const/4 v4, 0x3

    .line 11
    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_FLING:I

    .line 12
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    .line 14
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    .line 15
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    .line 16
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 17
    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFastFlingVelocity:F

    .line 18
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAvoidAccidentalTouch:Z

    .line 19
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    .line 20
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableFlingSpeedIncrease:Z

    .line 21
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    .line 22
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    .line 23
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    .line 24
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    const/16 v4, 0x9c4

    .line 25
    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    const/high16 v5, 0x41a00000    # 20.0f

    .line 26
    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEventFilterAngle:F

    .line 27
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    .line 28
    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    .line 29
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 31
    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    .line 32
    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    const v0, 0x4009999a    # 2.15f

    .line 33
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    .line 34
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    .line 36
    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->O(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->S()V

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->P()V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    .line 42
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    .line 44
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setSlowScrollThreshold(I)V

    .line 45
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->R(Landroid/content/Context;)V

    .line 46
    sget-boolean p2, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p2, :cond_0

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "COUIRecyclerView: overscroll_mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mOverScrollEnable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "COUIRecyclerView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->Q(Landroid/content/Context;)V

    .line 49
    new-instance p2, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    .line 50
    invoke-virtual {p2, p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 52
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    .line 53
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    .line 54
    new-instance p2, Landroidx/recyclerview/widget/g;

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    invoke-direct {p2, p0, p3}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

    .line 55
    iget p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    if-ne p2, v1, :cond_2

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->K(Landroid/content/Context;)V

    .line 57
    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarsSize:I

    if-eqz p1, :cond_1

    .line 58
    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbSize(I)V

    .line 59
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 60
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private G()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->S()V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->g()V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method public static synthetic H(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->Y()V

    return-void
.end method

.method private I()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->D()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    return-void
.end method

.method private J()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method private K(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;-><init>(Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar$Builder;->build()Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-void
.end method

.method private L(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

.method private M(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 10

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->T(Landroid/view/MotionEvent;)Z

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

    move-object v3, v1

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v5, :cond_2

    invoke-direct {p0, v4, v6}, Landroidx/recyclerview/widget/COUIRecyclerView;->L(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    sget-boolean v5, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v5, :cond_4

    if-ne v4, v3, :cond_3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const-string v6, "#80FF0000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method private N(FF)Z
    .locals 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

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

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEventFilterAngle:F

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

.method private O(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    goto :goto_0

    :cond_0
    iput p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView_couiScrollbars:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    sget p2, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView_couiScrollbarSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarsSize:I

    sget p2, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView_couiScrollbarThumbVertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView_couiRecyclerViewEnableVibrator:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private P()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private Q(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-nez v0, :cond_0

    const v0, 0x4009999a    # 2.15f

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    new-instance v0, Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->enableFrameRate(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableFlingSpeedIncrease:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    return-void
.end method

.method private R(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    return-void
.end method

.method private S()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    :cond_0
    return-void
.end method

.method private T(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchTime:J

    sub-long/2addr v0, v2

    sget-boolean p0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent: ACTION_UP. touchDuration = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", offset = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "COUIRecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_SCROLL_TOUCH_DURATION_THRESHOLD:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/16 p0, 0xa

    if-ge p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private U(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/g;->i(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private V(FF)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAvoidAccidentalTouch:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFastFlingVelocity:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFastFlingVelocity:F

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

.method private W()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->X()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private X()Z
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private synthetic Y()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->trySnapToTargetExistingView()V

    return-void
.end method

.method private Z()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a0(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->k(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-static {p1, v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    const-string v6, "COUIRecyclerView"

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_d

    if-eq v4, v1, :cond_c

    if-eq v4, v7, :cond_8

    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x5

    if-eq v4, v0, :cond_6

    const/4 v0, 0x6

    if-eq v4, v0, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->v(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    if-nez p1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->I()V

    goto/16 :goto_4

    :cond_8
    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v4, v1, :cond_17

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v7, :cond_a

    int-to-float v0, v6

    int-to-float v7, v4

    invoke-direct {p0, v0, v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->N(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    :goto_0
    if-eqz v3, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v3, v5, :cond_b

    int-to-float v3, v4

    int-to-float v4, v6

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->N(FF)Z

    move-result v3

    if-eqz v3, :cond_b

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    move v0, v1

    :cond_b
    if-eqz v0, :cond_17

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto/16 :goto_4

    :cond_c
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_4

    :cond_d
    iget-boolean v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_e

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    :cond_e
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    invoke-interface {v4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v4

    goto :goto_1

    :cond_f
    move v4, v5

    :goto_1
    iget-object v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v9, :cond_10

    invoke-interface {v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v9

    goto :goto_2

    :cond_10
    move v9, v5

    :goto_2
    iget v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    iget v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    invoke-direct {p0, v10, v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->V(FF)Z

    move-result v10

    iget v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    iget v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    invoke-direct {p0, v11, v12}, Landroidx/recyclerview/widget/COUIRecyclerView;->V(FF)Z

    move-result v11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v12, v12, v5

    if-lez v12, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    if-nez v10, :cond_12

    :cond_11
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v5, v12, v5

    if-lez v5, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    int-to-float v12, v12

    cmpg-float v5, v5, v12

    if-gez v5, :cond_13

    if-eqz v11, :cond_13

    :cond_12
    move v5, v1

    goto :goto_3

    :cond_13
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileSlowScrolling:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchTime:J

    sget-boolean v5, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v5, :cond_14

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityX:F

    iput v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityY:F

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugAbortVelocityX:F

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugAbortVelocityY:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onInterceptTouchEvent: ACTION_DOWN, isOverScrolling=:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", scrollVelocityX=:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", isFastFlingX=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mFlingVelocityX=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mAbortVelocityX=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", scrollVelocityY=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", isFastFlingY=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mFlingVelocityY=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mAbortVelocityY=:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p1, v7, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v2, p1, v1

    aput v2, p1, v2

    if-eqz v3, :cond_16

    or-int/lit8 v0, v0, 0x2

    :cond_16
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    :cond_17
    :goto_4
    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p0, v1, :cond_18

    goto :goto_5

    :cond_18
    move v1, v2

    :goto_5
    return v1
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    return p0
.end method

.method static synthetic access$1000(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->Q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Landroidx/recyclerview/widget/COUIRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    return p1
.end method

.method static synthetic access$1102(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    return p1
.end method

.method static synthetic access$1202(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->U(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return p0
.end method

.method static synthetic access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return p1
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->b0()V

    return-void
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    return p0
.end method

.method static synthetic access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/COUIRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    return p0
.end method

.method static synthetic access$702(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$800(Landroidx/recyclerview/widget/COUIRecyclerView;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    return p0
.end method

.method static synthetic access$802(Landroidx/recyclerview/widget/COUIRecyclerView;F)F
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$900(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    return-object p0
.end method

.method private b0()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->D()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->setScrollX(Landroid/view/View;I)V

    invoke-static {p0, v0}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return-void
.end method

.method private c0(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->fling(IIII)V

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->J()V

    return-void
.end method

.method private d0()V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->J()V

    :cond_0
    return-void
.end method

.method private getVelocityAlongScrollableDirection()F
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->k(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    :cond_3
    return v1
.end method

.method private k(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private v(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->P()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected awakenScrollBars()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->awakenScrollBars()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public cancelHorizontalItemAlign()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->cancelHorizontalItemAlign()V

    return-void
.end method

.method public computeScroll()V
    .locals 15

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-nez v0, :cond_3

    if-nez v12, :cond_3

    neg-int v3, v0

    neg-int v4, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v5, v0

    move v6, v12

    invoke-virtual/range {v2 .. v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v12}, Landroid/view/View;->onScrollChanged(IIII)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsOverScrollingReverseFling:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCurrVelocityX()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->getCurrVelocityY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    return-void

    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v14

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v4

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v5

    if-ne v3, v4, :cond_5

    if-eq v14, v5, :cond_6

    :cond_5
    sub-int v6, v4, v3

    sub-int v7, v5, v14

    iget v12, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v5, v6

    move v6, v7

    move v7, v3

    move v8, v14

    move v11, v12

    invoke-virtual/range {v4 .. v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5, v3, v14}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_6
    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_8
    return-void
.end method

.method protected disallowInterceptWhenIsOverScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOverScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x42480000    # 50.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: FlingVX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ClickVX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y: FlingVY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ClickVY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mClickVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v4

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbortVX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugAbortVelocityX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", AbortVY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugAbortVelocityY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    add-float/2addr v3, v2

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->dispatchDrawOver(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/g;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getVelocityAlongScrollableDirection()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    int-to-float v3, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    iget v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    :cond_3
    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScroll()V

    :cond_5
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->d0()V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->T(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->b0()V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableFrameRate(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->enableFrameRate(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->enableFrameRate(Z)V

    return-void
.end method

.method public fling(II)Z
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_b

    if-eqz v2, :cond_a

    or-int/lit8 v0, v0, 0x2

    :cond_a
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c(II)V

    return v5

    :cond_b
    return v1
.end method

.method public getCOUIScrollDelegate()Lcom/coui/appcompat/scrollbar/COUIScrollBar;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    return-object p0
.end method

.method public getCOUIScrollableView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getHorizontalItemAlign()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalItemAlign()I

    move-result p0

    return p0
.end method

.method public getIsUseNativeOverScroll()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return p0
.end method

.method public getLocateHelper()Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    return-object p0
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    return p0
.end method

.method public getNativeOverScroller()Lcom/coui/appcompat/scroll/COUILocateOverScroller;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    return-object p0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$s;

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    return p0
.end method

.method public getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$c;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    return-object p0
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

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isEnableFlingSpeedIncrease()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->a0(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->k(Landroid/view/MotionEvent;)V

    :cond_0
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_3

    :cond_0
    sget-boolean p3, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onOverScrolled: scrollX: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " scrollY: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "COUIRecyclerView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    const/4 p4, 0x0

    invoke-static {p4, p1, p3}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcOverFlingDecelerateDist(III)I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    invoke-static {p4, p2, p3}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcOverFlingDecelerateDist(III)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-static {p0, p1}, Lcom/coui/appcompat/view/ViewNative;->setScrollX(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/view/ViewNative;->setScrollY(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScreenHeight:I

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/h;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/h;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->j(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-static {p1, v6}, Lcom/coui/appcompat/uiutil/UIUtil;->getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    if-nez v5, :cond_5

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v2, v7, v1

    aput v2, v7, v2

    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    int-to-float v8, v8

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    if-eqz v5, :cond_29

    if-eq v5, v1, :cond_1a

    const/4 v8, 0x2

    if-eq v5, v8, :cond_b

    const/4 v0, 0x3

    if-eq v5, v0, :cond_9

    const/4 v0, 0x5

    if-eq v5, v0, :cond_8

    const/4 v0, 0x6

    if-eq v5, v0, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->v(Landroid/view/MotionEvent;)V

    goto/16 :goto_d

    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    goto/16 :goto_d

    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->cancelCallback()V

    :cond_a
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->I()V

    goto/16 :goto_d

    :cond_b
    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    instance-of v6, v5, Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    if-eqz v6, :cond_c

    check-cast v5, Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-virtual {v5}, Lcom/coui/appcompat/scroll/SpringOverScroller;->triggerCallback()V

    :cond_c
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v10, v2

    aput v2, v10, v1

    iget-object v11, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    sub-int/2addr v5, v8

    aget v7, v7, v1

    sub-int/2addr v13, v7

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v8, v7, v2

    int-to-float v8, v8

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    iget-object v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v10, v9, v2

    add-int/2addr v8, v10

    aput v8, v7, v2

    aget v8, v7, v1

    aget v9, v9, v1

    add-int/2addr v8, v9

    aput v8, v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v7, v1, :cond_13

    if-eqz v0, :cond_10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_10

    if-lez v5, :cond_f

    sub-int/2addr v5, v8

    goto :goto_0

    :cond_f
    add-int/2addr v5, v8

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_10
    move v7, v2

    :goto_1
    if-eqz v3, :cond_12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_12

    if-lez v13, :cond_11

    sub-int/2addr v13, v9

    goto :goto_2

    :cond_11
    add-int/2addr v13, v9

    :goto_2
    move v7, v1

    :cond_12
    if-eqz v7, :cond_13

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :cond_13
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne v7, v1, :cond_31

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v8, v7, v2

    sub-int/2addr v6, v8

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    aget v6, v7, v1

    sub-int/2addr p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_14

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_14
    if-eqz v0, :cond_15

    move p1, v5

    goto :goto_3

    :cond_15
    move p1, v2

    :goto_3
    if-eqz v3, :cond_16

    move v0, v13

    goto :goto_4

    :cond_16
    move v0, v2

    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->X()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->disallowInterceptWhenIsOverScrolling()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/m;

    if-eqz p1, :cond_31

    if-nez v5, :cond_19

    if-eqz v13, :cond_31

    :cond_19
    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/m;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_d

    :cond_1a
    iget-boolean v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v5, :cond_1b

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v5, v1

    goto :goto_5

    :cond_1b
    move v5, v2

    :goto_5
    iget-object v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    int-to-float v7, v7

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_6

    :cond_1c
    move v0, v8

    :goto_6
    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_7

    :cond_1d
    move v3, v8

    :goto_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v6

    iget-boolean v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    if-eqz v7, :cond_1e

    iget-boolean v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileSlowScrolling:Z

    if-eqz v7, :cond_1e

    move v7, v1

    goto :goto_8

    :cond_1e
    move v7, v2

    :goto_8
    iget-boolean v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    if-eqz v9, :cond_1f

    iget-boolean v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsTouchDownWhileOverScrolling:Z

    if-eqz v9, :cond_1f

    if-eqz v6, :cond_1f

    move v9, v1

    goto :goto_9

    :cond_1f
    move v9, v2

    :goto_9
    if-nez v7, :cond_20

    if-eqz v9, :cond_21

    :cond_20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->M(Landroid/view/MotionEvent;)Landroid/view/View;

    :cond_21
    if-eqz v6, :cond_25

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    const v6, 0x45bb8000    # 6000.0f

    if-eqz p1, :cond_22

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v6

    if-lez p1, :cond_22

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1, v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    cmpg-float p1, p1, v8

    if-gez p1, :cond_22

    move v2, v1

    :cond_22
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_23

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v6

    if-lez p1, :cond_23

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    invoke-interface {p1, v3}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setCurrVelocityY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    cmpg-float p1, p1, v8

    if-gez p1, :cond_23

    move v2, v1

    :cond_23
    if-eqz v2, :cond_24

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->c0(FF)V

    goto :goto_a

    :cond_24
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->d0()V

    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_b

    :cond_25
    cmpl-float p1, v0, v8

    if-nez p1, :cond_26

    cmpl-float p1, v3, v8

    if-eqz p1, :cond_27

    :cond_26
    float-to-int p1, v0

    float-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_28

    :cond_27
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    :cond_28
    :goto_b
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->D()V

    move v2, v5

    goto :goto_d

    :cond_29
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result p1

    if-eqz p1, :cond_2b

    :cond_2a
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isCOUIFinished()Z

    move-result p1

    if-nez p1, :cond_2f

    :cond_2b
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result p1

    cmpl-float p1, p1, v8

    if-eqz p1, :cond_2c

    iget p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityX:F

    goto :goto_c

    :cond_2c
    move p1, v8

    :goto_c
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityX:F

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result p1

    cmpl-float p1, p1, v8

    if-eqz p1, :cond_2d

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingVelocityY:F

    :cond_2d
    iput v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAbortVelocityY:F

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_2e
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_2f
    if-eqz v3, :cond_30

    or-int/lit8 v0, v0, 0x2

    :cond_30
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_31
    :goto_d
    if-nez v2, :cond_32

    iget-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez p1, :cond_32

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_32
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v1

    :cond_33
    :goto_e
    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    const/4 p5, 0x0

    if-gez p3, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-lez p3, :cond_2

    if-gez p1, :cond_2

    :cond_1
    move p1, p5

    :cond_2
    if-gez p4, :cond_3

    if-gtz p2, :cond_4

    :cond_3
    if-lez p4, :cond_5

    if-gez p2, :cond_5

    :cond_4
    move p2, p5

    :cond_5
    invoke-virtual {p0, p1, p2, p5, p5}, Landroidx/recyclerview/widget/COUIRecyclerView;->onOverScrolled(IIZZ)V

    return p5
.end method

.method public refresh()V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView:[I

    const/4 v3, 0x0

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    sget v0, Lcom/support/recyclerview/R$styleable;->COUIRecyclerView_couiScrollbarThumbVertical:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbars:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollbarThumbVertical:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->refreshScrollBarColor()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$t;

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->c(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v0, :cond_0

    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_7

    if-nez v8, :cond_0

    if-eqz v9, :cond_7

    :cond_0
    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gez v0, :cond_1

    if-gtz v9, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz v9, :cond_4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-gez v0, :cond_3

    if-gtz v8, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-lez v0, :cond_5

    if-gez v8, :cond_5

    :cond_4
    move v0, v13

    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_0

    :cond_5
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    aput v13, v0, v12

    invoke-virtual {v10, v8, v9, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    aget v0, v0, v12

    sub-int v2, v8, v1

    sub-int v3, v9, v0

    :goto_0
    sget-boolean v4, Landroidx/recyclerview/widget/COUIRecyclerView;->COUI_DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollByInternal: y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " consumedY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " unconsumedY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COUIRecyclerView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_1

    :cond_7
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_1
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_8
    iget-object v7, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v7, v13

    aput v13, v7, v12

    iget-object v5, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    sub-int v1, v16, v1

    aget v0, v0, v12

    sub-int v0, v17, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iget-object v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v4, v3, v13

    sub-int/2addr v2, v4

    iput v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    aget v3, v3, v12

    sub-int/2addr v2, v3

    iput v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    if-eqz v11, :cond_9

    int-to-float v2, v4

    int-to-float v3, v3

    invoke-virtual {v11, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_9
    iget-object v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v3, v2, v13

    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v5, v4, v13

    add-int/2addr v3, v5

    aput v3, v2, v13

    aget v3, v2, v12

    aget v4, v4, v12

    add-int/2addr v3, v4

    aput v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    if-eqz v11, :cond_1a

    iget-boolean v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v2, :cond_1a

    const/16 v2, 0x1002

    invoke-static {v11, v2}, Landroidx/core/view/u;->b(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v2, 0x2002

    invoke-static {v11, v2}, Landroidx/core/view/u;->b(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_a
    if-nez v0, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_d

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_d

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_d
    if-nez v0, :cond_e

    if-nez v14, :cond_e

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_e

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_f

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_f

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_f
    if-nez v1, :cond_10

    if-nez v15, :cond_10

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_10

    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_10
    iget-boolean v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iput v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v0, v4, v2}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    int-to-float v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v1, v3, v2}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v1

    int-to-float v1, v1

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-gez v4, :cond_13

    if-gtz v9, :cond_14

    :cond_13
    if-lez v4, :cond_15

    if-gez v9, :cond_15

    :cond_14
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v9, v3, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    int-to-float v0, v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_15
    move v2, v0

    if-gez v3, :cond_16

    if-gtz v8, :cond_17

    :cond_16
    if-lez v3, :cond_18

    if-gez v8, :cond_18

    :cond_17
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v8, v3, v0}, Lcom/coui/appcompat/animation/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    int-to-float v0, v0

    iget v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    :cond_18
    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    iget v8, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    :cond_1a
    if-nez v15, :cond_1b

    if-eqz v14, :cond_1c

    :cond_1b
    invoke-virtual {v10, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1d
    if-nez v15, :cond_1f

    if-eqz v14, :cond_1e

    goto :goto_2

    :cond_1e
    move v12, v13

    :cond_1f
    :goto_2
    return v12
.end method

.method public scrollToPosition(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAvoidAccidentalTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mAvoidAccidentalTouch:Z

    return-void
.end method

.method public setCustomTouchSlop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTouchSlop: set touchSlop from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    return-void
.end method

.method public setDispatchEventWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileOverScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableDispatchEventWhileScrolling:Z

    return-void
.end method

.method public setDispatchEventWhileScrollingThreshold(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mDispatchEventVelocityThreshold:I

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setEnableFlingSpeedIncrease(Z)V

    :cond_0
    return-void
.end method

.method public setEnablePointerDownAction(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnablePointerDown:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableVibrator:Z

    return-void
.end method

.method public setEventFilterTangent(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEventFilterAngle:F

    return-void
.end method

.method public setFastFlingThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFastFlingVelocity:F

    return-void
.end method

.method public setFlingRatio(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFlingRatio:F

    return-void
.end method

.method public setHorizontalFlingDurationRatio(F)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->setDurationRatio(F)V

    return-void
.end method

.method public setHorizontalFlingFriction(F)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->setFlingFriction(F)V

    :cond_0
    return-void
.end method

.method public setHorizontalFlingVelocityRatio(F)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->setVelocityXRatio(F)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUILocateOverScroller;->setVelocityYRatio(F)V

    return-void
.end method

.method public setHorizontalItemAlign(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->setHorizontalItemAlign(I)V

    :cond_0
    return-void
.end method

.method public setIsUseNativeOverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    :goto_0
    return-void
.end method

.method public setIsUseOptimizedScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mEnableOptimizedScroll:Z

    return-void
.end method

.method public setItemClickableWhileOverScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileOverScrolling:Z

    return-void
.end method

.method public setItemClickableWhileSlowScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemClickableWhileSlowScrolling:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    const p1, 0x404ccccd    # 3.2f

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNativeOverScroller(Lcom/coui/appcompat/scroll/COUILocateOverScroller;)V
    .locals 1

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/scroll/COUILocateOverScroller;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/scroll/COUIIOverScroller;

    :cond_0
    return-void
.end method

.method public setNewCOUIScrollDelegate(Lcom/coui/appcompat/scrollbar/COUIScrollBar;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIScrollBar:Lcom/coui/appcompat/scrollbar/COUIScrollBar;

    invoke-virtual {p1}, Lcom/coui/appcompat/scrollbar/COUIScrollBar;->onAttachedToWindow()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setNewCOUIScrollDelegate must NOT be NULL."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    return-void
.end method

.method public setOverScrollingFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mFixScrollTypeForOverScrolling:Z

    return-void
.end method

.method public setPressHideDivider(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUIRecyclerDividerManager:Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->m(Z)V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->G()V

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    :goto_1
    return-void
.end method

.method public setSlowScrollThreshold(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slow scroll threshold set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSlowScrollThreshold:I

    return-void
.end method

.method public setSpringBackFriction(F)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackFriction(F)V

    :cond_0
    return-void
.end method

.method public setSpringBackTension(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVerticalSpringOverTension:F

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    :cond_0
    return-void
.end method

.method public setSpringOverScrollerDebug(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/scroll/SpringOverScroller;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setDebug(Z)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    return-void
.end method

.method smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .locals 3

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSmoothScrollFlag:Z

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v1, :cond_1

    .line 8
    const-string p0, "COUIRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_1
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move p1, v2

    .line 11
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_4

    move p2, v2

    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_b

    .line 12
    :cond_5
    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_7

    if-lez p4, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_7
    :goto_0
    if-eqz p5, :cond_a

    if-eqz p1, :cond_8

    move v2, v0

    :cond_8
    if-eqz p2, :cond_9

    or-int/lit8 v2, v2, 0x2

    .line 14
    :cond_9
    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 15
    :cond_a
    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$c;

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f(IIILandroid/view/animation/Interpolator;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->c()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->G()V

    return-void
.end method

.method public superComputeVerticalScrollExtent()I
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollOffset()I
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public superComputeVerticalScrollRange()I
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public superOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

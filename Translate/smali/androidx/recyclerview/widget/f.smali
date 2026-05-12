.class public abstract Landroidx/recyclerview/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/f$a;
    }
.end annotation


# static fields
.field private static final CONSECUTIVE_UPDATES_MIN:I = 0xa

.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field private static final SCROLLING_TIME_DIVIDER:F = 0.3356f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasCalculatedMillisPerPixel:Z

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mMillisPerPixel:F

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private final mRecyclingAction:Landroidx/recyclerview/widget/f$a;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field protected mTargetVector:Landroid/graphics/PointF;

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$z;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mHasCalculatedMillisPerPixel:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    new-instance v1, Landroidx/recyclerview/widget/f$a;

    invoke-direct {v1, v0, v0}, Landroidx/recyclerview/widget/f$a;-><init>(II)V

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private a(II)I
    .locals 0

    sub-int p0, p1, p2

    mul-int/2addr p1, p0

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private b()F
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/f;->mHasCalculatedMillisPerPixel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/f;->mMillisPerPixel:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mHasCalculatedMillisPerPixel:Z

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/f;->mMillisPerPixel:F

    return p0
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    const/4 p0, -0x1

    if-eq p5, p0, :cond_4

    if-eqz p5, :cond_1

    const/4 p0, 0x1

    if-ne p5, p0, :cond_0

    sub-int/2addr p4, p2

    return p4

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    return p3

    :cond_2
    sub-int/2addr p4, p2

    if-gez p4, :cond_3

    return p4

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingRight()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/f;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getPaddingBottom()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/f;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f;->calculateTimeForScrolling(I)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3eabd3c3    # 0.3356f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroidx/recyclerview/widget/f;->b()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    return-object p0
.end method

.method public getTargetPosition()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    return p0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mTargetVector:Landroid/graphics/PointF;

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isPendingInitialRun()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    return p0
.end method

.method onAnimation(II)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$z;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/f;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    iget-object v3, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/f;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/f$a;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->stopLinearScroller()V

    goto :goto_0

    :cond_3
    const-string v1, "LinearSmoothScroller"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/f;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/f$a;->a()Z

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/f;->mRecyclingAction:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/f$a;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->e()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->stopLinearScroller()V

    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->stop()V

    return-void

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/f;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    iget p1, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/f;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    iget p2, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/f;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$z$a;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mTargetVector:Landroid/graphics/PointF;

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$z;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-void
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    return-void
.end method

.method start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    instance-of v0, p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z;->start(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->g()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/f;->mStarted:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearSmoothScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iput-object p2, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    iget p2, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getTargetPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/f;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->onStart()V

    iget-object p2, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$c;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->e()V

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f;->mStarted:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final stopLinearScroller()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mRunning:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->onStop()V

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mTargetView:Landroid/view/View;

    iput v2, p0, Landroidx/recyclerview/widget/f;->mTargetPosition:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/f;->mPendingInitialRun:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->onSmoothScrollerStopped(Landroidx/recyclerview/widget/RecyclerView$z;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    iput-object v1, p0, Landroidx/recyclerview/widget/f;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$z$a;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$z;->normalize(Landroid/graphics/PointF;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->mTargetVector:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->calculateTimeForScrolling(I)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/f;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z$a;->d(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getTargetPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$z$a;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->stop()V

    return-void
.end method

.class public final Lcom/coloros/translate/panel/ScrollableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/panel/ScrollableTextView$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/coloros/translate/panel/ScrollableTextView$a;


# instance fields
.field private final a:I

.field private final b:I

.field private c:F

.field private f:Z

.field private final h:Landroid/widget/OverScroller;

.field private i:Landroid/view/VelocityTracker;

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/panel/ScrollableTextView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/panel/ScrollableTextView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/panel/ScrollableTextView;->m:Lcom/coloros/translate/panel/ScrollableTextView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/panel/ScrollableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/panel/ScrollableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->a:I

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->b:I

    .line 7
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->h:Landroid/widget/OverScroller;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x1010084

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/panel/ScrollableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final b(I)V
    .locals 11

    iget-object v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->h:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/coloros/translate/panel/ScrollableTextView;->l:I

    add-int v8, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_20:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    return-void
.end method

.method private final c()Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v2, "getBounds(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    :cond_0
    if-le v2, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lt2/a;->f(Landroid/content/Context;)Lt2/a;

    move-result-object p0

    invoke-virtual {p0}, Lt2/a;->l()Landroidx/lifecycle/y;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lt2/b$a;->UNFOLD:Lt2/b$a;

    if-eq p0, v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->h:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->h:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/base/R$dimen;->common_dp_30:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->l:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/panel/ScrollableTextView;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "ScrollableTextView"

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v5, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onTouchEvent] move isDragging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", deltaY: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->c:F

    iget-boolean v2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->i:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/coloros/translate/panel/ScrollableTextView;->l:I

    add-int/2addr v2, v4

    if-gez p1, :cond_3

    invoke-virtual {p0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    return v1

    :cond_3
    if-le p1, v2, :cond_4

    invoke-virtual {p0, v3, v2}, Landroid/view/View;->scrollTo(II)V

    return v1

    :cond_4
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_0

    :cond_5
    if-lez v0, :cond_6

    iget-boolean p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->k:Z

    if-eqz p1, :cond_c

    if-nez v2, :cond_c

    iput-boolean v1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_6
    if-gez v0, :cond_c

    iget-boolean p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->j:Z

    if-eqz p1, :cond_c

    if-nez v2, :cond_c

    iput-boolean v1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_7
    iget-boolean p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    if-eqz p1, :cond_9

    iput-boolean v3, p0, Lcom/coloros/translate/panel/ScrollableTextView;->f:Z

    iget-object p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->i:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->b:I

    int-to-float v0, v0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/coloros/translate/panel/ScrollableTextView;->a:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    float-to-int p1, p1

    neg-int p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/panel/ScrollableTextView;->b(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->i:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/panel/ScrollableTextView;->i:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->c:F

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->j:Z

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->k:Z

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v4, p0, Lcom/coloros/translate/panel/ScrollableTextView;->j:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onTouchEvent] canScrollUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canScrollDown:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->h:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/coloros/translate/panel/ScrollableTextView;->i:Landroid/view/VelocityTracker;

    :cond_c
    :goto_0
    return v1
.end method

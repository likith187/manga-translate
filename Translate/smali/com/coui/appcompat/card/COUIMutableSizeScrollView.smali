.class public Lcom/coui/appcompat/card/COUIMutableSizeScrollView;
.super Lcom/coui/appcompat/scrollview/COUIScrollView;
.source "SourceFile"


# instance fields
.field protected final curPoint:Landroid/graphics/PointF;

.field protected final firstPoint:Landroid/graphics/PointF;

.field private mMaxHeight:I

.field protected final touchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/scrollview/COUIScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->touchSlop:I

    .line 5
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->firstPoint:Landroid/graphics/PointF;

    .line 6
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->curPoint:Landroid/graphics/PointF;

    .line 7
    sget-object p3, Lcom/support/scrollview/R$styleable;->COUIMaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/support/scrollview/R$styleable;->COUIMaxHeightScrollView_scrollViewMaxHeight:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->mMaxHeight:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public canScroll(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->mMaxHeight:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->firstPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->firstPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->mMaxHeight:I

    if-ltz v0, :cond_1

    if-le p2, v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->mMaxHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->curPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->curPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->curPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->firstPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->touchSlop:I

    int-to-float v5, v4

    cmpl-float v5, v2, v5

    if-gtz v5, :cond_0

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    :cond_0
    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    float-to-int v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->canScroll(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    float-to-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->canScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/card/COUIMutableSizeScrollView;->mMaxHeight:I

    invoke-virtual {p0}, Lcom/coui/appcompat/scrollview/COUIScrollView;->requestLayout()V

    return-void
.end method

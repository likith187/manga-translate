.class Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;


# instance fields
.field private mButtonDividerColor:I

.field private mCurrentBackgroundColor:I

.field private mDividerAlpha:F

.field private final mDividerRect:Landroid/graphics/Rect;

.field private final mNormalBackgroundPath:Landroid/graphics/Path;

.field private final mNormalPaint:Landroid/graphics/Paint;

.field private mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

.field private final mPressFeedbackPaint:Landroid/graphics/Paint;

.field private mSmoothRoundRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerAlpha:F

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->isOs16()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oplus/graphics/OplusPathAdapter;

    invoke-direct {v1, v0, v2}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    iput-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mSmoothRoundRect:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method private isOs16()Z
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->isOs16()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mCurrentBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mPressFeedbackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->DEFAULT_EVALUATOR:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerAlpha:F

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mButtonDividerColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method getCurrentBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mCurrentBackgroundColor:I

    return p0
.end method

.method getNormalBackgroundPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method setBackgroundRect(Landroid/graphics/Rect;)V
    .locals 9

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->isOs16()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mSmoothRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mSmoothRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mSmoothRoundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v4, v0, v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mNormalBackgroundPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v2 .. v8}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setButtonDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mButtonDividerColor:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setCurrentBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mCurrentBackgroundColor:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setDividerAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerAlpha:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setDividerRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->mDividerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.class public Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICodeInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeItemView"
.end annotation


# instance fields
.field private codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

.field private mCircleColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:I

.field private mIsEnableSecurity:Z

.field private mIsSelected:Z

.field private mNumber:Ljava/lang/String;

.field private mNumberTextPaint:Landroid/text/TextPaint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/input/R$dimen;->coui_code_input_cell_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerS:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/input/R$dimen;->coui_code_input_cell_stroke_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->strokeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/input/R$dimen;->coui_code_input_cell_security_circle_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCircleRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/input/R$color;->coui_code_input_security_circle_color:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCircleColor:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCirclePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPath:Landroid/graphics/Path;

    const-string p1, ""

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorCardBackground:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCircleColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    return-void
.end method

.method private getDrawTextStartX(ILjava/lang/String;)F
    .locals 0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method private getDrawTextStartY(I)F
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p0, p1

    return p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mRadius:I

    int-to-float v4, v4

    invoke-static {v3, v2, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsSelected:Z

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->strokeWidth:I

    shr-int/lit8 v2, v2, 0x1

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    sub-int v6, v0, v2

    int-to-float v6, v6

    sub-int v2, v1, v2

    int-to-float v2, v2

    invoke-direct {v4, v5, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->getCurrentInboxAlpha()F

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mRadius:I

    int-to-float v5, v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsEnableSecurity:Z

    if-eqz v2, :cond_3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->getCurrentNumberAlpha()F

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isCurrentNumberAppear()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v4}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartX(ILjava/lang/String;)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartY(I)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->getCurrentNumberScale()F

    move-result v2

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->getAnimatorNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartX(ILjava/lang/String;)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartY(I)F

    move-result v1

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartX(ILjava/lang/String;)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->getDrawTextStartY(I)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setEnableSecurity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsEnableSecurity:Z

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsSelected:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startInboxAnimator(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsSelected:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mIsEnableSecurity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAnimator(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->codeInputHelper:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAnimator(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->mNumber:Ljava/lang/String;

    return-void
.end method

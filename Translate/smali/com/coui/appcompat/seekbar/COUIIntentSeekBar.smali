.class public Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;
.super Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;
.source "SourceFile"


# instance fields
.field private mIsFollowThumb:Z

.field private mSecondaryProgress:I

.field private mSecondaryProgressColor:I

.field private mThumbOutShadeRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/seekbar/R$attr;->couiIntentSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/seekbar/R$style;->COUIIntentSeekBar_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/seekbar/R$style;->COUIIntentSeekBar:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgress:I

    .line 6
    sget-object v1, Lcom/support/seekbar/R$styleable;->COUIIntentSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/support/seekbar/R$styleable;->COUIIntentSeekBar_couiSeekBarSecondaryProgressColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 8
    sget p3, Lcom/support/seekbar/R$styleable;->COUIIntentSeekBar_couiSeekBarIsFollowThumb:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mIsFollowThumb:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {p1, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-virtual {p0, p0, p2, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgressColor:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/seekbar/R$dimen;->coui_seekbar_intent_thumb_out_shade_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mThumbOutShadeRadius:F

    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarCenterY()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    sub-float v11, v2, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mIsFollowThumb:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mThumbOutShadeRadius:F

    sub-float v4, v11, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    sub-float v5, v1, v3

    sub-float/2addr v5, v0

    add-float v6, v2, v0

    add-float/2addr v1, v3

    add-float v7, v1, v0

    add-float v8, v3, v0

    add-float v9, v3, v0

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    sub-float v5, v0, v9

    add-float v7, v0, v9

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v11

    move v6, v2

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1
    sub-float/2addr v2, v11

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v11, v2

    iput v11, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLabelX:F

    return-void
.end method


# virtual methods
.method protected drawActiveTrack(Landroid/graphics/Canvas;F)V
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarCenterY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgress:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v4, p2

    div-float/2addr v4, v1

    sub-float v1, v2, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v3, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, p2

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgress:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v4, p2

    div-float/2addr v4, v1

    add-float v1, v3, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgressColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sub-float/2addr v1, v5

    add-float/2addr v2, v5

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v7, v0, v5

    add-float/2addr v5, v0

    invoke-virtual {v6, v1, v7, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mIsFollowThumb:Z

    if-eqz v1, :cond_2

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawActiveTrack(Landroid/graphics/Canvas;F)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sub-float/2addr v4, v1

    sub-float v2, v0, v1

    add-float/2addr v3, v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v4, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->drawThumbs(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getSecondaryProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgress:I

    return p0
.end method

.method public isFollowThumb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mIsFollowThumb:Z

    return p0
.end method

.method public bridge synthetic onAnimationStart(Ld7/d;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/a;->onAnimationStart(Ld7/d;)V

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStopTrackingTouch()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    return-void
.end method

.method public setFollowThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mIsFollowThumb:Z

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgress:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSecondaryProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_secondary_progress_color:I

    invoke-static {v0, v1}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIIntentSeekBar;->mSecondaryProgressColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

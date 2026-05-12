.class public Lcom/coui/appcompat/tagview/COUITagBackgroundView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private isChangedShapeModel:Z

.field private mCardBLCornerRadius:I

.field private mCardBRCornerRadius:I

.field private mCardCornerRadius:I

.field private mCardTLCornerRadius:I

.field private mCardTRCornerRadius:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mClipRectF:Landroid/graphics/RectF;

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

.field private mPaint:Landroid/graphics/Paint;

.field private mShapeAppearanceModel:Lcom/google/android/material/shape/n;

.field private mStrokeColor:I

.field private mStrokeStateColor:Landroid/content/res/ColorStateList;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeWidth:F

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeColor:I

    .line 6
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipPath:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->isChangedShapeModel:Z

    .line 10
    sget-object v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagCornerRadius:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    .line 12
    sget v2, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagTLCornerRadius:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTLCornerRadius:I

    .line 13
    sget v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagTRCornerRadius:I

    iget v2, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTRCornerRadius:I

    .line 14
    sget v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagBLCornerRadius:I

    iget v2, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBLCornerRadius:I

    .line 15
    sget v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagBRCornerRadius:I

    iget v2, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBRCornerRadius:I

    .line 16
    sget v1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagBackgroundColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mColorStateList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 17
    sget v1, Lcom/support/reddot/R$attr;->couiColorBackgroundWithTag:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/theme/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 18
    :cond_0
    sget p1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagStrokeColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_1

    .line 19
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    .line 20
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 22
    sget p1, Lcom/support/reddot/R$styleable;->COUITagBackgroundView_couiTagStrokeWidth:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeWidth:F

    .line 23
    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    .line 24
    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    .line 25
    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchDrawInner(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private generateModel()V
    .locals 3

    new-instance v0, Lcom/google/android/material/shape/n$b;

    invoke-direct {v0}, Lcom/google/android/material/shape/n$b;-><init>()V

    iget v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTRCornerRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/n$b;->J(IF)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBRCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/n$b;->y(IF)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTLCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/n$b;->E(IF)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBLCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/shape/n$b;->t(IF)Lcom/google/android/material/shape/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mShapeAppearanceModel:Lcom/google/android/material/shape/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->isChangedShapeModel:Z

    return-void
.end method

.method private initDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/shape/i;

    iget-object v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mShapeAppearanceModel:Lcom/google/android/material/shape/n;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    iput-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mShapeAppearanceModel:Lcom/google/android/material/shape/n;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/i;->setShadowCompatibilityMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    iget-object v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    iget v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeWidth:F

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/shape/i;->setStroke(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setupDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->isChangedShapeModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/google/android/material/shape/o;->k()Lcom/google/android/material/shape/o;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mShapeAppearanceModel:Lcom/google/android/material/shape/n;

    iget-object v2, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mClipPath:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/o;->d(Lcom/google/android/material/shape/n;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->isChangedShapeModel:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->dispatchDrawInner(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCardBLCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBLCornerRadius:I

    return p0
.end method

.method public getCardBRCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBRCornerRadius:I

    return p0
.end method

.method public getCardCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    return p0
.end method

.method public getCardTLCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTLCornerRadius:I

    return p0
.end method

.method public getCardTRCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTRCornerRadius:I

    return p0
.end method

.method public getColorStateList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getMaterialShapeDrawable()Lcom/google/android/material/shape/i;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mMaterialShapeDrawable:Lcom/google/android/material/shape/i;

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeColor:I

    return p0
.end method

.method public getStrokeStateColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeWidth:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->isChangedShapeModel:Z

    return-void
.end method

.method public setCardBLCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBLCornerRadius:I

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setCardBRCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBRCornerRadius:I

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setCardCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardCornerRadius:I

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBLCornerRadius:I

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardBRCornerRadius:I

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTLCornerRadius:I

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTRCornerRadius:I

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setCardTLCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTLCornerRadius:I

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setCardTRCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mCardTRCornerRadius:I

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setStrokeStateColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeStateColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeStateColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->mStrokeWidth:F

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->generateModel()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->initDrawable()V

    invoke-direct {p0}, Lcom/coui/appcompat/tagview/COUITagBackgroundView;->setupDrawable()V

    return-void
.end method

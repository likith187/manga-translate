.class public Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mAnimDragView:Landroid/widget/ImageView;

.field private mDragViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragViewDrawableTintColor:I

.field private mElevation:F

.field private mHasShadowNinePatchDrawable:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/panel/R$attr;->couiDraggableVerticalLinearLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/panel/R$style;->COUIDraggableVerticalLinearLayout_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/panel/R$style;->COUIDraggableVerticalLinearLayout:I

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mElevation:F

    .line 8
    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    .line 9
    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    .line 10
    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    .line 11
    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    .line 12
    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->initDragView(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initDragView(Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_drag_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_drag_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->setDragViewByTypeArray(Landroid/content/res/TypedArray;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    if-nez p1, :cond_1

    iput p2, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->recordPaddingAndElevation()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private recordPaddingAndElevation()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mElevation:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    return-void
.end method

.method private setDragViewByTypeArray(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_2

    sget v0, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    sget v0, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewIcon:I

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v1, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewTintColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorControls:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/panel/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getDragView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public isHasShadowNinePatchDrawable()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    return p0
.end method

.method public refresh()V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attr"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    iget v4, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "style"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/support/panel/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    iget v4, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->setDragViewByTypeArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDragViewDrawableTintColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mDragViewDrawableTintColor:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mDragViewDrawableTintColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setHasShadowNinePatchDrawable(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/panel/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/panel/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    iget v2, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->mElevation:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

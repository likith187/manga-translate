.class public Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final SPECIAL_COUNT:I = 0x2


# instance fields
.field private mEndView:Landroid/view/View;

.field private mFixPaddingEnd:I

.field private mStartView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    .line 5
    sget-object v0, Lcom/support/preference/R$styleable;->COUIHalfHeightHorizontalPaddingLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/support/preference/R$styleable;->COUIHalfHeightHorizontalPaddingLinearLayout_fixPaddingEnd:I

    iget v0, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mStartView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mEndView:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mStartView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mEndView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_end_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    iget v2, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    if-ge v0, v2, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/preference/COUIHalfHeightHorizontalPaddingLinearLayout;->mFixPaddingEnd:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_4
    return-void
.end method

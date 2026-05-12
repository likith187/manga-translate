.class public Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;
.super Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
.source "SourceFile"


# instance fields
.field private mIconMarginDependOnImageView:Z

.field private mWithDividerItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->mWithDividerItem:Z

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v1, Lcom/support/preference/R$styleable;->COUICustomListSelectedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/preference/R$styleable;->COUICustomListSelectedLinearLayout_couiPreferenceWithDividerItem:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->mWithDividerItem:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private operateMultilineIconPosition()Z
    .locals 11

    sget v0, Lcom/support/preference/R$id;->img_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    const v2, 0x1020006

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v2, :cond_0

    return v1

    :cond_0
    sget v3, Lcom/support/preference/R$id;->messageLayout:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x1020010

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    sget v7, Lcom/support/preference/R$id;->assignment:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v3, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    iget-boolean v7, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->mIconMarginDependOnImageView:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_4
    invoke-static {v7, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result v1

    :goto_5
    add-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x2

    const/16 v6, 0x32

    const/16 v7, 0x24

    const/16 v8, 0x20

    const/16 v9, 0x18

    if-le v5, v3, :cond_b

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/preference/R$dimen;->coui_preference_icon_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_50icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_36icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_32icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_24icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_6
    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq p0, v3, :cond_14

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    :cond_b
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v10, Lcom/support/preference/R$dimen;->coui_preference_icon_margin_top:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq v1, v9, :cond_11

    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_d

    if-eq v1, v6, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_50icon_margin_vertical_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_d
    if-gt v5, v4, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_36icon_margin_vertical_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_36icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_f
    if-gt v5, v4, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_32icon_margin_vertical_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_32icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_11
    if-gt v5, v4, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_24icon_margin_vertical_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_7

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_24icon_margin_top_multiline:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_7
    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-ne p0, v3, :cond_13

    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-eq p0, v3, :cond_14

    :cond_13
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_14
    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v4

    :cond_15
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->operateMultilineIconPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->mWithDividerItem:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setIconMarginDependOnImageView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->mIconMarginDependOnImageView:Z

    return-void
.end method

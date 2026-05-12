.class public Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final CIRCLE_TYPE:I = 0x1

.field public static final RECTANGLE_TYPE:I


# instance fields
.field TAG:Ljava/lang/String;

.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewShapeType:I

.field private mAnchorViewSize:I

.field private mCouiDotDiameter:I

.field private mCouiDotViewHeight:I

.field private mMarginTopAndLeftOfAnchorView:I

.field private mMarginTopAndLeftOfReddot:I

.field private mRedDotMode:I

.field private mRedDotText:Ljava/lang/String;

.field private mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "COUIRedDotFrameLayout"

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    .line 6
    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/reddot/R$dimen;->coui_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotViewHeight:I

    .line 8
    new-instance p1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;)V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 9
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->init(Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->addRedDot()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->lambda$addRedDot$0(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    return-void
.end method

.method private addRedDot()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eqz v0, :cond_2

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x800035

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setDotDiameter(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotViewHeight:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setViewHeight(I)V

    iget-object v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/coui/appcompat/reddot/b;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/reddot/b;-><init>(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->refresh()V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->lambda$new$1()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_large_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/support/reddot/R$styleable;->COUIRedDotFrameLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$styleable;->COUIRedDotFrameLayout_couiHintRedPointMode:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    sget p2, Lcom/support/reddot/R$styleable;->COUIRedDotFrameLayout_couiHintRedPointText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotText:Ljava/lang/String;

    sget p2, Lcom/support/reddot/R$styleable;->COUIRedDotFrameLayout_anchorViewShapeType:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    sget p2, Lcom/support/reddot/R$styleable;->COUIRedDotFrameLayout_anchorViewDpSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewSize:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewSize:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ge p2, v0, :cond_8

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_small_reddot_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v2, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_small_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto/16 :goto_5

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_small_number_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto/16 :goto_5

    :cond_6
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v4, :cond_7

    if-ne p1, v5, :cond_16

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_small_icon_topend_margin_circle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    goto/16 :goto_5

    :cond_8
    if-lt p2, v1, :cond_f

    if-eq p1, v2, :cond_a

    if-ne p1, v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_large_reddot_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_height_large:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotViewHeight:I

    :goto_2
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    if-nez p1, :cond_d

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v2, :cond_c

    if-ne p1, v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_large_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto :goto_5

    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_large_number_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto :goto_5

    :cond_d
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v4, :cond_e

    if-ne p1, v5, :cond_16

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_large_icon_topend_margin_circle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    goto :goto_5

    :cond_f
    if-eq p1, v4, :cond_10

    if-ne p1, v5, :cond_11

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_reddot_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    :cond_11
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    if-nez p1, :cond_14

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v2, :cond_13

    if-ne p1, v3, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_icon_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto :goto_5

    :cond_13
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_number_topend_margin_rectangle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    goto :goto_5

    :cond_14
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-eq p1, v4, :cond_15

    if-ne p1, v5, :cond_16

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_icon_topend_margin_circle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    :cond_16
    :goto_5
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-ne p1, v5, :cond_17

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_mode_stroke_extra_diameter:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotDiameter:I

    :cond_17
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-ne p1, v3, :cond_18

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotViewHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_mode_stroke_extra_diameter:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mCouiDotViewHeight:I

    :cond_18
    return-void
.end method

.method private isRtlMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addRedDot$0(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setChildView()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getRedDotView()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->isRtlMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    iget p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    sub-int/2addr p4, p5

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    iget-object p5, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfReddot:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p4, p0

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->setChildView()V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mMarginTopAndLeftOfAnchorView:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeRedDot()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotView:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->refresh()V

    :cond_0
    return-void
.end method

.method public showReddot(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_medium_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->showReddot(ILjava/lang/String;II)V

    return-void
.end method

.method public showReddot(ILjava/lang/String;II)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewShapeType:I

    .line 4
    iput p3, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mAnchorViewSize:I

    .line 5
    iput p1, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotMode:I

    .line 6
    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->mRedDotText:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->init(Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->addRedDot()V

    return-void
.end method

.class public Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/state/IViewStateController;
.implements Lcom/coui/appcompat/button/listener/OnTextChangeListener;
.implements Lcom/coui/appcompat/button/listener/OnSizeChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final MAX_SIZE:I = 0x2

.field public static final MULTI_LINE:I = 0x2

.field public static final SINGLE_LINE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimpleButtonGroupCtrl"


# instance fields
.field private mCurLineCount:I

.field private mCustomButton:Lcom/coui/appcompat/button/COUIButton;

.field private mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

.field private mCustomLayout:Landroid/widget/LinearLayout;

.field private mLineCountIndex:I

.field private mSingleButtonWrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/button/SingleButtonWrap;",
            ">;"
        }
    .end annotation
.end field

.field private mTextChangeBtn:Lcom/coui/appcompat/button/COUIButton;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mLineCountIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    iput v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mType:I

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;Lcom/coui/appcompat/button/COUIButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->lambda$onLayoutChange$0(Lcom/coui/appcompat/button/COUIButton;)V

    return-void
.end method

.method private getButtonLineCount(Lcom/coui/appcompat/button/COUIButton;)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/button/COUIButtonLayout;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButtonLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getMeasureMaxWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/button/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    sub-int p0, v2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v3, p0

    if-lez p0, :cond_5

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    :cond_5
    return v1
.end method

.method private getButtonMaxHeight(Lcom/coui/appcompat/button/COUIButton;I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_btn_desc_height_min:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, p0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getDpG2Size(FF)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    div-float/2addr v0, v1

    sub-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private handleExtraLongLogic(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/button/SingleButtonWrap;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/button/COUIButtonLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButtonLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_vertical_btn_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/button/R$dimen;->coui_medium_btn_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    add-int/2addr v4, v3

    invoke-virtual {v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->getMaxHeight()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gt v4, v3, :cond_1

    invoke-virtual {v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->getMaxHeight()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    iget v4, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    const/4 v9, -0x1

    if-ne v4, v6, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->isLimitHeight()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/button/COUIButtonLayout;->setOrientation(I)V

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/button/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_1
    const/4 p1, -0x2

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v7}, Lcom/coui/appcompat/button/COUIButtonLayout;->setOrientation(I)V

    if-nez v5, :cond_4

    invoke-virtual {v1}, Lcom/coui/appcompat/button/COUIButtonLayout;->isForceSmallScreenWidth()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v2, v9

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getButtonMaxHeight(Lcom/coui/appcompat/button/COUIButton;I)I

    move-result p1

    move v9, v2

    :goto_2
    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    iget v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_9

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/COUIViewStateController;->getProcessorMap()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/state/Processor;

    instance-of v2, v1, Lcom/coui/appcompat/state/SizeProcessor;

    if-eqz v2, :cond_7

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/Processor;->process(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/state/Processor;->process(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-direct {p0, p2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->setHorizontalButtonMargin(Ljava/util/List;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ButtonGroupStateController: button == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ButtonGroupStateController: buttonWrap == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$onLayoutChange$0(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->onViewStateChanged(I)V

    iget v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mLineCountIndex:I

    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->postProcessExtraLongLogic(Lcom/coui/appcompat/button/COUIButton;ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private postProcessExtraLongLogic(Lcom/coui/appcompat/button/COUIButton;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/button/COUIButton;",
            "I",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/button/SingleButtonWrap;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->handleExtraLongLogic(ILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private processSameSize()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getButtonLineCount(Lcom/coui/appcompat/button/COUIButton;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getButtonMaxHeight(Lcom/coui/appcompat/button/COUIButton;I)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    new-instance v3, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    invoke-direct {v3, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/Processor;->process(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/Processor;->process(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private setHorizontalButtonMargin(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/button/SingleButtonWrap;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/SingleButtonWrap;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/coui/appcompat/button/COUIButtonLayout;

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/button/COUIButtonLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    if-nez v7, :cond_4

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lcom/coui/appcompat/button/COUIButtonLayout;->isForceSmallScreenWidth()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/support/button/R$dimen;->coui_horizontal_btn_padding:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput p0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/button/R$dimen;->coui_horizontal_btn_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput p0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/button/R$dimen;->coui_vertical_btn_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v1, p0

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput p0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getSingleButtonWrapListSize()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mType:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->processSameSize()V

    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    instance-of p2, p1, Lcom/coui/appcompat/button/COUIButton;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mTextChangeBtn:Lcom/coui/appcompat/button/COUIButton;

    if-eq p1, p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mTextChangeBtn:Lcom/coui/appcompat/button/COUIButton;

    move-object p2, p1

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getButtonLineCount(Lcom/coui/appcompat/button/COUIButton;)I

    move-result p3

    const/4 p4, -0x1

    const/4 p5, 0x0

    move p6, p5

    move p5, p4

    :goto_0
    iget-object p7, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p7

    if-ge p6, p7, :cond_3

    iget-object p7, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {p7, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {p7}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0, p7}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->getButtonLineCount(Lcom/coui/appcompat/button/COUIButton;)I

    move-result p8

    if-ne p7, p1, :cond_1

    iput p6, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mLineCountIndex:I

    goto :goto_1

    :cond_1
    if-le p8, p4, :cond_2

    move p5, p6

    move p4, p8

    :cond_2
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_3
    if-le p3, p4, :cond_4

    iput p3, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    goto :goto_2

    :cond_4
    iput p4, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCurLineCount:I

    iput p5, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mLineCountIndex:I

    :goto_2
    new-instance p1, Lcom/coui/appcompat/button/b;

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/button/b;-><init>(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;Lcom/coui/appcompat/button/COUIButton;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public onSizeChanged(Landroid/view/View;IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->processSameSize()V

    return-void
.end method

.method public onTextChanged(Landroid/view/View;Ljava/lang/CharSequence;III)V
    .locals 0

    move-object p2, p1

    check-cast p2, Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mTextChangeBtn:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mLineCountIndex:I

    if-gez v0, :cond_0

    const-string p0, "SimpleButtonGroupCtrl"

    const-string p1, "The mLineCountIndex cannot be less than zero"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    :cond_2
    return-void
.end method

.method public registerButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    return-void
.end method

.method public registerButton(Lcom/coui/appcompat/button/COUIButton;I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->setType(I)V

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    new-instance v1, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-direct {v1, p1, p2}, Lcom/coui/appcompat/button/SingleButtonWrap;-><init>(Lcom/coui/appcompat/button/COUIButton;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setOnTextChangeListener(Lcom/coui/appcompat/button/listener/OnTextChangeListener;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public registerButtonAndCustomView(Lcom/coui/appcompat/button/COUIButton;Landroid/widget/LinearLayout;I)V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-direct {v0, p1, p3}, Lcom/coui/appcompat/button/SingleButtonWrap;-><init>(Lcom/coui/appcompat/button/COUIButton;I)V

    iput-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

    iput-object p1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButton:Lcom/coui/appcompat/button/COUIButton;

    iput-object p2, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setOnSizeChangeListener(Lcom/coui/appcompat/button/listener/OnSizeChangeListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->processSameSize()V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mTextChangeBtn:Lcom/coui/appcompat/button/COUIButton;

    iget-object p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mCustomButtonWarp:Lcom/coui/appcompat/button/SingleButtonWrap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->release()V

    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mType:I

    return-void
.end method

.method public unregisterButton(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->mSingleButtonWrapList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getProcessView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->release()V

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

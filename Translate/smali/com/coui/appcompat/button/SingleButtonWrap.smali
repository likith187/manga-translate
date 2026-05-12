.class public Lcom/coui/appcompat/button/SingleButtonWrap;
.super Lcom/coui/appcompat/state/COUIViewStateController;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/button/listener/OnTextChangeListener;
.implements Lcom/coui/appcompat/button/listener/OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/button/SingleButtonWrap$Type;
    }
.end annotation


# static fields
.field public static final BUTTON_MAX_LINE:I = 0x2

.field public static final MULTI_LINE:I = 0x2

.field public static final SINGLE_LINE:I = 0x1


# instance fields
.field private mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

.field private mLargeButtonCurrentLines:I

.field private mSmallPaddingStart:I

.field private mType:I

.field private setCOUIButtonRequestLayoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/button/COUIButton;I)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/state/COUIViewStateController;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mLargeButtonCurrentLines:I

    iput v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    iput v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mSmallPaddingStart:I

    new-instance v1, Lcom/coui/appcompat/button/SingleButtonWrap$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/button/SingleButtonWrap$1;-><init>(Lcom/coui/appcompat/button/SingleButtonWrap;)V

    iput-object v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->setCOUIButtonRequestLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableRadius(I)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iput p2, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setOnSizeChangeListener(Lcom/coui/appcompat/button/listener/OnSizeChangeListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setOnTextChangeListener(Lcom/coui/appcompat/button/listener/OnTextChangeListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/button/R$dimen;->coui_small_single_btn_padding_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mSmallPaddingStart:I

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->initProcessor()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->setSmallButtonStateChange()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->LimitLargeButtonMaxWidth()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": parameter is null!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private LimitLargeButtonMaxWidth()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->needLimitLargeButtonMaxWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/button/COUIButton;->setNeedLimitMaxWidth(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/button/COUIButton;->setNeedLimitMaxWidth(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->lambda$onConfigurationChanged$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/button/SingleButtonWrap;)Lcom/coui/appcompat/button/COUIButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public static synthetic b(Lcom/coui/appcompat/button/SingleButtonWrap;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->lambda$setSmallButtonLines$1()V

    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static getAdapterSize(Landroid/content/Context;II)F
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    int-to-float p1, p1

    invoke-static {p1, p0, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p0

    return p0
.end method

.method private getButtonMaxHeight(Lcom/coui/appcompat/button/COUIButton;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
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

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private getCentralLargeProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getLargeButtonWidth(Landroid/content/Context;)I

    move-result p0

    new-instance p1, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v2, 0x2

    invoke-direct {p1, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDescMediumProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getLargeButtonWidth(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_1
    new-instance p0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v4, -0x2

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_vertical:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_vertical:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p1, v3, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {p0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {p0, v5}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p1, v1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getLargeButtonWidth(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/button/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$dimen;->coui_single_larger_btn_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/button/R$dimen;->coui_single_larger_window_screen:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthMetrics(Landroid/content/Context;)I

    move-result p1

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private getLargeProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->getLargeButtonWidth(Landroid/content/Context;)I

    move-result p0

    new-instance v1, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-static {p1, v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-static {p1, v1}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {p1, v3, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getMediumProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p1, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-static {p1, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x4

    invoke-static {p1, v1, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_btn_group_text_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {p1, v2, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getPanelMediumProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/button/R$dimen;->coui_medium_btn_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWeight(F)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {p1, v4}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-static {p1, v4}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWeight(F)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {p1, v4}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private getSmallProcessor(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_victical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_victical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_small_single_btn_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/button/R$dimen;->coui_small_single_btn_padding_horizontal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/button/R$dimen;->coui_btn_group_small_single_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x2

    invoke-static {p1, v1, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/SizeProcessor$Builder;

    invoke-direct {v0, v3}, Lcom/coui/appcompat/state/SizeProcessor$Builder;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setHeight(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->setWidth(I)Lcom/coui/appcompat/state/SizeProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/SizeProcessor$Builder;->create()Lcom/coui/appcompat/state/SizeProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    invoke-direct {v0, v3}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_victical:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingBottom(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_victical:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingTop(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingStart(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_small_btn_padding_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->setPaddingEnd(I)Lcom/coui/appcompat/state/PaddingProcessor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/state/PaddingProcessor$Builder;->create()Lcom/coui/appcompat/state/PaddingProcessor;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    invoke-direct {v0, v3}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/button/R$dimen;->coui_btn_group_small_single_text_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {p1, v2, v3}, Lcom/coui/appcompat/button/SingleButtonWrap;->getAdapterSize(Landroid/content/Context;II)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setTextSize(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->setSizeType(F)Lcom/coui/appcompat/state/TextSizeProcessor$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/state/TextSizeProcessor$Builder;->create()Lcom/coui/appcompat/state/TextSizeProcessor;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private initProcessor()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    if-eqz v1, :cond_7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getCentralLargeProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getMediumProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getSmallProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getPanelMediumProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getDescMediumProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getLargeProcessor(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor(Ljava/util/List;)V

    :goto_2
    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$0()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/state/COUIViewStateController;->release()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->initProcessor()V

    return-void
.end method

.method private synthetic lambda$setSmallButtonLines$1()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/SingleButtonWrap;->getButtonMaxHeight(Lcom/coui/appcompat/button/COUIButton;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1}, Lcom/coui/appcompat/button/COUIButton;->getMeasureMaxHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/COUIButton;->getMeasureMaxHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/COUIButton;->isLimitHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private needLimitLargeButtonMaxWidth()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reInProcessor()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->needLimitLargeButtonMaxWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_single_larger_btn_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-super {p0}, Lcom/coui/appcompat/state/COUIViewStateController;->release()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->initProcessor()V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    iget-object v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->setCOUIButtonRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->setCOUIButtonRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mLargeButtonCurrentLines:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mLargeButtonCurrentLines:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setLargeButtonLines(Lcom/coui/appcompat/button/COUIButton;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/button/R$dimen;->coui_larger_btn_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_single_larger_btn_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x2

    mul-int/2addr p1, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    iput v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mLargeButtonCurrentLines:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    iput p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mLargeButtonCurrentLines:I

    :goto_0
    return-void
.end method

.method private setMediumButtonLines(Lcom/coui/appcompat/button/COUIButton;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/button/R$dimen;->coui_medium_btn_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/button/R$dimen;->coui_btn_padding_horizontal:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x2

    mul-int/2addr p1, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    :goto_0
    return-void
.end method

.method private setSmallButtonLines()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/coui/appcompat/button/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/button/d;-><init>(Lcom/coui/appcompat/button/SingleButtonWrap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setSmallButtonStateChange()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mSmallPaddingStart:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/coui/appcompat/button/SingleButtonWrap;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableRadius(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIViewStateController;->onViewStateChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableRadius(I)V

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getProcessView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    new-instance v0, Lcom/coui/appcompat/button/c;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/button/c;-><init>(Lcom/coui/appcompat/button/SingleButtonWrap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->LimitLargeButtonMaxWidth()V

    return-void
.end method

.method public onSizeChanged(Landroid/view/View;IIII)V
    .locals 0

    if-eqz p1, :cond_1

    if-ne p2, p4, :cond_0

    if-ne p3, p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->setSmallButtonStateChange()V

    iget-object p1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/SingleButtonWrap;->setTextButtonPressBackGround(Lcom/coui/appcompat/button/COUIButton;)V

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->reInProcessor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Landroid/view/View;Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_4

    instance-of p2, p1, Lcom/coui/appcompat/button/COUIButton;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    iget p3, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    if-eqz p3, :cond_3

    const/4 p4, 0x5

    if-eq p3, p4, :cond_3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    if-ne p3, p4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/button/SingleButtonWrap;->setMediumButtonLines(Lcom/coui/appcompat/button/COUIButton;F)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p3, p1, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/button/SingleButtonWrap;->setSmallButtonLines()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/button/SingleButtonWrap;->setLargeButtonLines(Lcom/coui/appcompat/button/COUIButton;F)V

    :cond_4
    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    invoke-super {p0}, Lcom/coui/appcompat/state/COUIViewStateController;->release()V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButton;->setOnTextChangeListener(Lcom/coui/appcompat/button/listener/OnTextChangeListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/button/COUIButton;->setOnSizeChangeListener(Lcom/coui/appcompat/button/listener/OnSizeChangeListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    iget-object v2, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->setCOUIButtonRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mCOUIButton:Lcom/coui/appcompat/button/COUIButton;

    :cond_0
    return-void
.end method

.method public setTextButtonPressBackGround(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/button/SingleButtonWrap;->mType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/button/COUIButton;->setAnimType(I)V

    :cond_0
    return-void
.end method

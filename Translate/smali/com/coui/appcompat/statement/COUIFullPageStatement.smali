.class public Lcom/coui/appcompat/statement/COUIFullPageStatement;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final CONFIRM_BUTTON_MAX_LINES:I = 0x2

.field private static final MEDIUM_LARGE_SCREEN_SW_THRESHOLD:I = 0x1e0


# instance fields
.field private isInSmallLand:Z

.field private mAppStatement:Landroid/widget/TextView;

.field private mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

.field private mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

.field private mButtonLayoutLand:Landroid/widget/LinearLayout;

.field private mButtonLayoutNormal:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

.field private mExitTextView:Landroid/widget/TextView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResourceId:I

.field private mOnButtonClickListener:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

.field private mScrollButton:Landroid/widget/ScrollView;

.field private mScrollText:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

.field private mStyle:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/statement/R$attr;->couiFullPageStatementStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/statement/R$style;->Widget_COUI_COUIFullPageStatement:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mStyle:I

    goto :goto_0

    .line 9
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mStyle:I

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/support/statement/R$styleable;->COUIFullPageStatement:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/support/statement/R$styleable;->COUIFullPageStatement_exitButtonText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    sget p3, Lcom/support/statement/R$styleable;->COUIFullPageStatement_bottomButtonText:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 13
    sget p4, Lcom/support/statement/R$styleable;->COUIFullPageStatement_couiFullPageStatementTitleText:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 14
    sget v0, Lcom/support/statement/R$styleable;->COUIFullPageStatement_android_layout:I

    sget v1, Lcom/support/statement/R$layout;->coui_full_page_statement:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutResourceId:I

    .line 15
    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->initView()V

    .line 16
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v1, Lcom/support/statement/R$styleable;->COUIFullPageStatement_appStatement:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget v0, Lcom/support/statement/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v2, Lcom/support/statement/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_2

    .line 20
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 24
    iget-object p3, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_3
    iget-object p3, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 26
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/statement/COUIFullPageStatement;)Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mOnButtonClickListener:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/statement/COUIFullPageStatement;)Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitleScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    return-object p0
.end method

.method private disableTitleScrollBeforeMaxHeight()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitleScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initView()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutResourceId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/statement/R$id;->txt_statement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v1, Lcom/support/statement/R$id;->scroll_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    sget v1, Lcom/support/statement/R$id;->txt_exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    sget v1, Lcom/support/statement/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButton;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    sget v1, Lcom/support/statement/R$id;->btn_exit_land:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButton;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

    sget v1, Lcom/support/statement/R$id;->btn_confirm_land:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/button/COUIButton;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    sget v1, Lcom/support/statement/R$id;->button_layout_land:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutLand:Landroid/widget/LinearLayout;

    sget v1, Lcom/support/statement/R$id;->button_layout_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutNormal:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    new-instance v4, Lcom/coui/appcompat/statement/COUIFullPageStatement$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$1;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

    new-instance v4, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$2;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v1, Lcom/support/statement/R$id;->txt_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitle:Landroid/widget/TextView;

    sget v1, Lcom/support/statement/R$id;->title_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitleScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    sget v1, Lcom/support/statement/R$id;->scroll_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    sget v1, Lcom/support/statement/R$id;->custom_functional_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->refreshParams()V

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->disableTitleScrollBeforeMaxHeight()V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/coui/appcompat/statement/COUIFullPageStatement$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$3;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/statement/COUIFullPageStatement$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$4;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method private isNotTinyStyle()Z
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutResourceId:I

    sget v0, Lcom/support/statement/R$layout;->coui_full_page_statement:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait(Landroid/content/res/Configuration;)Z
    .locals 0

    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSmallScreen(Landroid/content/res/Configuration;)Z
    .locals 0

    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x1e0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAppStatement()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    return-object p0
.end method

.method public getConfirmButton()Lcom/coui/appcompat/button/COUIButton;
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    return-object p0
.end method

.method public getExitButton()Landroid/widget/TextView;
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getScrollTextView()Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutResourceId:I

    sget v1, Lcom/support/statement/R$layout;->coui_full_page_statement_tiny:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/statement/R$dimen;->coui_full_page_statement_button_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    iget-boolean p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->refreshParams()V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mLayoutResourceId:I

    sget p2, Lcom/support/statement/R$layout;->coui_full_page_statement_tiny:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollButton:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/statement/R$styleable;->COUIFullPageStatement:[I

    iget v4, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/statement/R$styleable;->COUIFullPageStatement:[I

    iget v4, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    sget v1, Lcom/support/statement/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v0, Lcom/support/statement/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public refreshParams()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isInSmallLand:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutLand:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mButtonLayoutLand:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAppStatement(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAppStatementTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setButtonDisableColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDisabledColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDisabledColor(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawableColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    :cond_0
    return-void
.end method

.method public setButtonListener(Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mOnButtonClickListener:Lcom/coui/appcompat/statement/COUIFullPageStatement$OnButtonClickListener;

    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonNormal:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mBottomButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mCustomView:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExitButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->isNotTinyStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitButtonLand:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExitTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mExitTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setStatementMaxHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

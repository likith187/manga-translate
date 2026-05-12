.class public Lcom/coui/appcompat/edittext/COUICodeInputView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;,
        Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;,
        Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;
    }
.end annotation


# instance fields
.field private final CELL_COUNT:I

.field private final DEFAULT_SCREEN_WIDTH_DP:I

.field private codeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;",
            ">;"
        }
    .end annotation
.end field

.field private codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCellCount:I

.field private mCellHeight:I

.field private mCellMarginHorizontal:I

.field private mCellWidth:I

.field private mCodeViewsContainer:Landroid/widget/LinearLayout;

.field private mCodeViewsContainerMarginHorizontal:I

.field private mEditText:Landroid/widget/EditText;

.field private mIsEnableSecurity:Z

.field private mMaxCellMarginHorizontal:I

.field private mMinCellMarginHorizontal:I

.field private mUpdateItemWidthRunnable:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

.field private onInputListener:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->CELL_COUNT:I

    const/16 v1, 0x168

    .line 5
    iput v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->DEFAULT_SCREEN_WIDTH_DP:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mIsEnableSecurity:Z

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    .line 9
    new-instance v2, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView$1;)V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mUpdateItemWidthRunnable:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    .line 10
    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 11
    sget-object v2, Lcom/support/input/R$styleable;->COUICodeInputView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    sget p3, Lcom/support/input/R$styleable;->COUICodeInputView_couiCodeInputCount:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    .line 13
    sget p3, Lcom/support/input/R$styleable;->COUICodeInputView_couiEnableSecurityInput:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mIsEnableSecurity:Z

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/support/input/R$layout;->coui_phone_code_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 16
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->initResource()V

    .line 17
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/edittext/COUICodeInputView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/edittext/COUICodeInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/edittext/COUICodeInputView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->updateViewsByCodesChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->callBack()V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/edittext/COUICodeInputView;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->isNotEmpty(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    return-object p0
.end method

.method private callBack()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->onInputListener:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->onInputListener:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->getPhoneCode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->onInputListener:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    invoke-interface {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;->onInput()V

    :goto_0
    return-void
.end method

.method private getCellMarginHorizontal(II)I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainerMarginHorizontal:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mMinCellMarginHorizontal:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mMaxCellMarginHorizontal:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    return p1
.end method

.method private initResource()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_cell_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_cell_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_cell_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_cell_max_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mMaxCellMarginHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_cell_min_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mMinCellMarginHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_code_input_layout_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainerMarginHorizontal:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/support/input/R$id;->code_container_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;-><init>(Landroid/content/Context;)V

    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mIsEnableSecurity:Z

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setEnableSecurity(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellWidth:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    sget v0, Lcom/support/input/R$id;->code_container_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICodeInputView$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private isNotEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setCodeItemWidth(I)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-double v0, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellWidth:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellHeight:I

    int-to-double v3, v3

    mul-double/2addr v3, v0

    double-to-int v0, v3

    invoke-direct {p0, p1, v2}, Lcom/coui/appcompat/edittext/COUICodeInputView;->getCellMarginHorizontal(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_1
    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellMarginHorizontal:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mUpdateItemWidthRunnable:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCodeViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;->setCodeViewsContainer(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mUpdateItemWidthRunnable:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateViewsByCodesChange()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    if-ge v2, v3, :cond_3

    if-le v0, v2, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codeViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setNumber(Ljava/lang/String;)V

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mCellCount:I

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    goto :goto_3

    :cond_1
    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/edittext/COUICodeInputView$CodeItemView;->setIsSelected(Z)V

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->updateViewsByCodesChange()V

    return-void
.end method

.method public getPhoneCode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->codes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->mUpdateItemWidthRunnable:Lcom/coui/appcompat/edittext/COUICodeInputView$UpdateItemWidthRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->setCodeItemWidth(I)V

    :cond_0
    return-void
.end method

.method public setOnInputListener(Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView;->onInputListener:Lcom/coui/appcompat/edittext/COUICodeInputView$OnInputListener;

    return-void
.end method

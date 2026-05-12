.class public Lcom/coui/appcompat/edittext/COUIInputView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;,
        Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;
    }
.end annotation


# static fields
.field private static final APPEAR_DURATION:I = 0xd9

.field private static final BUTTON_LAYOUT_MORE_PADDING:I = 0x3

.field private static final COUNT_TEXTVIEW_MORE_PADDING:I = 0xa

.field private static final COUNT_VIEW_PADDING:I = 0x8

.field private static final DISAPPEAR_DURATION:I = 0x11b

.field public static final INPUT_TYPE_NUMBER:I = 0x1

.field public static final INPUT_TYPE_NUMBER_PASSWORD:I = 0x2

.field public static final INPUT_TYPE_TEXT:I = 0x0

.field private static final MAX_BUTTON_ICON_COUNT:I = 0x2

.field private static final MAX_LINE:I = 0x5

.field private static final PASSWORD_STATUES_TYPE_CLOSE:I = 0x1

.field private static final PASSWORD_STATUES_TYPE_OPEN:I = 0x0

.field private static final SPACE_STEP:I = 0x4


# instance fields
.field protected mButtonLayout:Landroid/view/View;

.field private mCallback:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

.field private mCountPaint:Landroid/graphics/Paint;

.field protected mCountTextView:Landroid/widget/TextView;

.field private mCustomFormat:Z

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeleteIconMarginEndWithPsd:I

.field private mEditLineColor:Z

.field protected mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

.field private mEdittextContainer:Landroid/widget/LinearLayout;

.field private mEnableError:Z

.field protected mEnableInputCount:Z

.field private mEnablePassword:Z

.field private mErrorText:Landroid/widget/TextView;

.field private mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

.field private mHint:Ljava/lang/CharSequence;

.field protected mInputType:I

.field protected mMaxCount:I

.field protected mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mPasswordButton:Landroid/widget/CheckBox;

.field private mPasswordType:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

.field private mSpaceString:Ljava/lang/String;

.field private mTextMinHeightInInputView:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field protected mTitle:Ljava/lang/CharSequence;

.field protected mTitleTextView:Landroid/widget/TextView;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private replaceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    .line 5
    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 6
    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditLineColor:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCustomFormat:Z

    .line 9
    new-instance v2, Lcom/coui/appcompat/edittext/COUIInputView$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/edittext/COUIInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 10
    sget-object v2, Lcom/support/input/R$styleable;->COUIInputView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 11
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiTitle:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    .line 12
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiHint:I

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHint:Ljava/lang/CharSequence;

    .line 13
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiEnablePassword:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnablePassword:Z

    .line 14
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiPasswordType:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordType:I

    .line 15
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiEnableError:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableError:Z

    .line 16
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiInputMaxCount:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    .line 17
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiEnableInputCount:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    .line 18
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiInputType:I

    const/4 v3, -0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    .line 19
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiInputCustomFormat:I

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCustomFormat:Z

    .line 20
    sget v2, Lcom/support/input/R$styleable;->COUIInputView_couiEditLineColor:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditLineColor:Z

    .line 21
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getLayoutResId()I

    move-result v0

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    sget p3, Lcom/support/input/R$id;->title:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    .line 24
    sget p3, Lcom/support/input/R$id;->input_count:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    .line 25
    sget p3, Lcom/support/input/R$id;->text_input_error:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    .line 26
    sget p3, Lcom/support/input/R$id;->button_layout:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    .line 27
    sget p3, Lcom/support/input/R$id;->edittext_container:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    .line 28
    sget p3, Lcom/support/input/R$id;->delete_button:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 29
    sget p3, Lcom/support/input/R$id;->checkbox_password:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/input/R$dimen;->coui_inputview_delete_button_margin_end_with_passwordicon:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteIconMarginEndWithPsd:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/input/R$dimen;->coui_inputView_edittext_content_minheight:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTextMinHeightInInputView:I

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->nowInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->showErrorMsgAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->hideErrorMsgAnim()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/edittext/COUIInputView;)Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCallback:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/edittext/COUIInputView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCustomFormat:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/edittext/COUIInputView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->handleCustomStyleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/edittext/COUIInputView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updateDeleteButton(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/edittext/COUIInputView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/edittext/COUIInputView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/edittext/COUIInputView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method private getCountTextWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getCustomButtonShowNum()I
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v4, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static synthetic h(Lcom/coui/appcompat/edittext/COUIInputView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/coui/appcompat/edittext/COUIInputView;->lambda$initListener$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private handleCustomStyleText(Ljava/lang/CharSequence;)V
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mSpaceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mSpaceString:Ljava/lang/String;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/RegexUtils;->isCnMobileExact(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1}, Lcom/coui/appcompat/edittext/RegexUtils;->isCnBankCardId(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->resetCustomStyleText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->replaceString:Ljava/lang/String;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    const/16 v3, 0x11

    if-eqz v0, :cond_3

    new-instance v4, Lcom/coui/appcompat/edittext/CustomEditTextSpan;

    invoke-direct {v4}, Lcom/coui/appcompat/edittext/CustomEditTextSpan;-><init>()V

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v5, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v6, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/coui/appcompat/edittext/CustomEditTextSpan;

    invoke-direct {v4}, Lcom/coui/appcompat/edittext/CustomEditTextSpan;-><init>()V

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v4, v6, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private handleWithError()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableError:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->addOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private handleWithTitle()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideErrorMsgAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x11b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$9;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$10;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithTitle()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditLineColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setDefaultStrokeColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithPassword()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithError()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->initDeleteButton()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    return-void
.end method

.method private initDeleteButton()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->isShowDeleteIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coui/appcompat/edittext/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/a;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private isEnablePassword()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnablePassword:Z

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnablePassword:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCustomButtonShowNum()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShowDeleteButton()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isFastDeletable()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->isFastDeletable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCustomButtonShowNum()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initListener$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method private resetCustomStyleText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->replaceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->replaceString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setInputType()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method

.method private showErrorMsgAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHideErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$8;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mShowErrorTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateDeleteButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->isShowDeleteButton()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/UIUtil;->isInVisibleRect(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/coui/appcompat/edittext/COUIInputView$6;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$6;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePadding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomButton(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCustomButtonShowNum()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/input/R$dimen;->coui_inputview_custom_button_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mDeleteIconMarginEndWithPsd:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method protected getCouiInputPreferenceEditTextLayoutId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_preference_edittext:I

    return p0
.end method

.method public getCountTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method protected getEdittextPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_edit_error_text_has_title_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getEdittextPaddingEnd()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method protected getEdittextPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_edit_text_has_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getLayoutResId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_input_view:I

    return p0
.end method

.method public getMaxCount()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getTitlePaddingTop()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_preference_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected handleWithCount()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCountTextView()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/edittext/COUIInputView$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIInputView$4;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTextWatcher:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/edittext/COUIInputView$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIInputView$5;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method protected handleWithCountTextView()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected handleWithPassword()V
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnablePassword()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIInputView$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIInputView$7;-><init>(Lcom/coui/appcompat/edittext/COUIInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->setInputType()V

    :goto_3
    return-void
.end method

.method protected instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getCouiInputPreferenceEditTextLayoutId()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setShowDeleteIcon(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTextMinHeightInInputView:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    return-object p1
.end method

.method public isEnableInputCount()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    return p0
.end method

.method protected isIsCardSingleInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected lazyInit(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->init()V

    return-void
.end method

.method protected nowInit(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->lazyInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public removeCustomButton(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method public setCustomFormat(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCustomFormat:Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->isIsCardSingleInput()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCustomFormat:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->handleCustomStyleText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->resetCustomStyleText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setEnableError(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableError:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableError:Z

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithError()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method public setEnableInputCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    return-void
.end method

.method public setEnablePassword(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnablePassword:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnablePassword:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithPassword()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setErrorStateChangeCallBack(Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mCallback:Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mHint:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V

    return-void
.end method

.method public setOnEditTextChangeListener(Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    return-void
.end method

.method public setPasswordType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mPasswordType:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithPassword()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithTitle()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->updatePadding(Z)V

    :cond_0
    return-void
.end method

.method public showError(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setErrorState(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/edittext/COUIEditText;->setErrorState(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableError:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public Lcom/coui/appcompat/edittext/COUICardMultiInputView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final ERROR_COUNT_COLOR_ANIMATOR_TIME:I = 0xfa

.field private static final ERROR_COUNT_COLOR_DELAY_TIME:I = 0x3e8

.field private static final MAX_LINE:I = 0x5


# instance fields
.field private isErrorColor:Z

.field private mCountTextColor:I

.field private mCountTextColorAnimator:Landroid/animation/ValueAnimator;

.field private mCountTextView:Landroid/widget/TextView;

.field private mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

.field private mEditTextMaxHeight:I

.field private mEdittextContainer:Landroid/widget/LinearLayout;

.field private mEdittextContainerRect:Landroid/graphics/Rect;

.field private mEnableInputCount:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMaxCount:I

.field private setCountColorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->isErrorColor:Z

    .line 6
    new-instance v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->setCountColorRunnable:Ljava/lang/Runnable;

    .line 7
    sget-object v1, Lcom/support/input/R$styleable;->COUIInputView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 8
    sget v1, Lcom/support/input/R$styleable;->COUIInputView_couiHint:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mHint:Ljava/lang/CharSequence;

    .line 9
    sget v1, Lcom/support/input/R$styleable;->COUIInputView_couiInputMaxCount:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mMaxCount:I

    .line 10
    sget v1, Lcom/support/input/R$styleable;->COUIInputView_couiEnableInputCount:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEnableInputCount:Z

    .line 11
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->getLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    sget p3, Lcom/support/input/R$id;->edittext_container:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p2, 0x5

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const p2, 0x800033

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 18
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    sget p1, Lcom/support/input/R$id;->input_count:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextView:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/input/R$dimen;->support_preference_category_layout_title_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$attr;->couiColorHintNeutral:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColor:I

    .line 22
    sget p2, Lcom/support/input/R$id;->single_card:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$1;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/edittext/COUICardMultiInputView;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mMaxCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->isErrorColor:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/edittext/COUICardMultiInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->isErrorColor:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColor:I

    return p0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/edittext/COUICardMultiInputView;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/edittext/COUICardMultiInputView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->executeColorAnimator(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->setCountColorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private cancelColorAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private executeColorAnimator(II)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->cancelColorAnimator()V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$5;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private handleWithCount()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEnableInputCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mMaxCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$2;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;-><init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->handleWithCount()V

    return-void
.end method

.method private releaseCountColorRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->setCountColorRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCouiCardMultiInputEditTextLayoutId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_cardmulti_edittext:I

    return p0
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mHint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getLayoutResId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_multi_input_card_view:I

    return p0
.end method

.method protected instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->getCouiCardMultiInputEditTextLayoutId()I

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->releaseCountColorRunnable()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->cancelColorAnimator()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditTextMaxHeight:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditTextMaxHeight:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-lt p1, v3, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainerRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainerRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEdittextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mHint:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->mMaxCount:I

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->handleWithCount()V

    return-void
.end method

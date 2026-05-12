.class public Lcom/coui/appcompat/input/COUILockScreenPwdInputView;
.super Lcom/coui/appcompat/edittext/COUIInputView;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_INPUT_COUNT:I = 0x10

.field public static final DEFAULT_MIN_INPUT_COUNT:I = 0x6

.field private static final HALF_HEIGHT:F = 2.0f


# instance fields
.field private final DEFAULT_SCREEN_WIDTH_DP:I

.field private final INPUT_LOCK_SCREEN_PWD_EDIT_MARGIN:I

.field private mDefaultInputLockScreenPwdWidth:I

.field private mLockScreenPwdCard:Landroid/view/View;

.field private mMinInputCount:I

.field private final mOplusOutLineRect:Landroid/graphics/Rect;

.field private mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

.field private mScenesMode:I

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x168

    .line 4
    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->DEFAULT_SCREEN_WIDTH_DP:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/input/R$dimen;->coui_input_lock_screen_pwd_edit_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->INPUT_LOCK_SCREEN_PWD_EDIT_MARGIN:I

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mOplusOutLineRect:Landroid/graphics/Rect;

    const/4 p1, 0x6

    .line 7
    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mMinInputCount:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mScenesMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/input/COUILockScreenPwdInputView;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/input/COUILockScreenPwdInputView;Lcom/oplus/graphics/OplusOutlineAdapter;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/input/COUILockScreenPwdInputView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mOplusOutLineRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private clipInputView()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView$1;-><init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private initAttr()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_input_lock_screen_pwd_setting_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mDefaultInputLockScreenPwdWidth:I

    sget v0, Lcom/support/input/R$id;->lock_screen_pwd_card:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mLockScreenPwdCard:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method cropBeyondFont()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    if-le v1, v2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected getEdittextPaddingBottom()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_lock_screen_pwd_title_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getEdittextPaddingEnd()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mButtonLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method protected getEdittextPaddingTop()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_lock_screen_pwd_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method getInputCount()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLayoutResId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_input_lock_screen_pwd_view:I

    return p0
.end method

.method getMinInputCount()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mMinInputCount:I

    return p0
.end method

.method public getmLockScreenPwdCard()Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mLockScreenPwdCard:Landroid/view/View;

    return-object p0
.end method

.method protected handleWithCountTextView()V
    .locals 0

    return-void
.end method

.method protected instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mScenesMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v0, Lcom/support/input/R$attr;->COUICardLockScreenPwdInputStyleEditDesktop:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/coui/appcompat/edittext/COUIEditText;

    sget v0, Lcom/support/input/R$attr;->COUICardLockScreenPwdInputStyleEdit:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object p0
.end method

.method lazyInitInputView(Landroid/util/AttributeSet;I)V
    .locals 0

    iput p2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mScenesMode:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->lazyInit(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->initAttr()V

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->clipInputView()V

    return-void
.end method

.method protected nowInit(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method removeLastInputText()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setCheckBoxImageResourceDesktop()V
    .locals 1

    sget v0, Lcom/support/input/R$id;->checkbox_password:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    sget v0, Lcom/support/input/R$drawable;->coui_edittext_password_icon_desktop:I

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    return-void
.end method

.method public setDefaultInputLockScreenPwdWidth(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mDefaultInputLockScreenPwdWidth:I

    return-void
.end method

.method public setEnableInputCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->cropBeyondFont()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V

    return-void
.end method

.method setInputType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mInputType:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithPassword()V

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->cropBeyondFont()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V

    return-void
.end method

.method setMinInputCount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->mMinInputCount:I

    return-void
.end method

.method public updateCardWidth()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

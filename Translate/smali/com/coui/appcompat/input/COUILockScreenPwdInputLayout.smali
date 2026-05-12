.class public Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;
    }
.end annotation


# static fields
.field public static final DESKTOP:I = 0x1

.field private static final HALF_HEIGHT:F = 2.0f

.field public static final INPUT_VIEW_TRANSPARENT_BG_COLOR:I

.field public static final SETTING:I = 0x0

.field public static final SETTING1:I = 0x2


# instance fields
.field private mAllowNext:Z

.field private mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

.field private mNextIcon:Landroid/widget/ImageView;

.field private mNextIconCheckListener:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;

.field private mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

.field private final mOplusOutLineRect:Landroid/graphics/Rect;

.field private mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

.field private mScenesMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/support/input/R$color;->coui_input_lock_screen_pwd_view_bg_color_desktop:I

    sput v0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->INPUT_VIEW_TRANSPARENT_BG_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOplusOutLineRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mAllowNext:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->getLayoutResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;Lcom/oplus/graphics/OplusOutlineAdapter;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOplusOutLineRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private changeNextTransparentImageResource(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mAllowNext:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mAllowNext:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->setAllowNextDesktopBackground()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->setNormalNextDesktopBackground()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->setAllowNextSettingBackground()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->setNormalNextSettingBackground()V

    :goto_0
    return-void
.end method

.method private clipNextIconView()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$1;-><init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->lambda$initListener$1(Landroid/text/Editable;)V

    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->lambda$initListener$0(Landroid/view/View;)V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    sget-object v0, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout_couiEnableInputCount:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget v2, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout_couiInputMaxCount:I

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout_couiInputType:I

    const/4 v4, 0x2

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout_couiIsScenesMode:I

    invoke-virtual {p3, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    sget v4, Lcom/support/input/R$styleable;->COUILockScreenPwdInputLayout_couiInputMinCount:I

    const/4 v5, 0x6

    invoke-virtual {p3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    sget p3, Lcom/support/input/R$id;->coui_lock_screen_pwd_input_view:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    iput-object p3, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    iget v5, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    invoke-virtual {p3, p2, v5}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->lazyInitInputView(Landroid/util/AttributeSet;I)V

    iget-object p2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p2, v3}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setInputType(I)V

    iget-object p2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setEnableInputCount(Z)V

    sget p2, Lcom/support/input/R$id;->iv_intput_next:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v4}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->initInputCountSetting(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->initListener()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->initScenesModeUI(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private initInputCountSetting(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-le p1, p2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMaxCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMinInputCount(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMaxCount(I)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMinInputCount(I)V

    :goto_0
    return-void
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/coui/appcompat/input/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/input/a;-><init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    new-instance v1, Lcom/coui/appcompat/input/b;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/input/b;-><init>(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIInputView;->setOnEditTextChangeListener(Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;)V

    return-void
.end method

.method private initScenesModeUI(Landroid/content/Context;)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mScenesMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->clipNextIconView()V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/input/R$color;->coui_input_lock_screen_pwd_view_bg_color_desktop:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    sget v2, Lcom/support/input/R$color;->coui_input_lock_screen_pwd_view_bg_color_desktop:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setCheckBoxImageResourceDesktop()V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$color;->coui_color_label_on_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$color;->coui_color_label_on_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setEditTextColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->setNormalNextDesktopBackground()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    sget v2, Lcom/support/appcompat/R$attr;->couiColorCard:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnableInputCount()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getInputCount()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$initListener$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnableInputCount()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getInputCount()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIconCheckListener:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;->checkedPwd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initListener$1(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnableInputCount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIInputView;->getMaxCount()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIInputView;->getMaxCount()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;->afterTextChange(Landroid/text/Editable;)V

    :cond_2
    return-void
.end method

.method private setAllowNextDesktopBackground()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_desktop_src_allow:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setAllowNextSettingBackground()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v1, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_src_allow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_bg:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setNormalNextDesktopBackground()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_desktop_src:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setNormalNextSettingBackground()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v1, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    sget v0, Lcom/support/input/R$drawable;->coui_input_lock_screen_pwd_next_src:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->append(Ljava/lang/String;)V

    return-void
.end method

.method public clearInputText()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setCouiEditTexttNoEllipsisText(Ljava/lang/String;)V

    return-void
.end method

.method public closeError()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->isErrorState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIInputView;->showError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getInputView()Lcom/coui/appcompat/input/COUILockScreenPwdInputView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    return-object p0
.end method

.method protected getLayoutResId()I
    .locals 0

    sget p0, Lcom/support/input/R$layout;->coui_input_lock_screen_pwd_layout:I

    return p0
.end method

.method public getNextIconView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public isErrorState()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isErrorState()Z

    move-result p0

    return p0
.end method

.method public popupKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public removeLastInputText()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->removeLastInputText()V

    return-void
.end method

.method public setCOUIEditTextChangeListener(Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    return-void
.end method

.method public setCOUIInputMaxCount(I)Z
    .locals 1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMaxCount(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCOUIInputMinCount(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIInputView;->getMaxCount()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setMinInputCount(I)V

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnableInputCount()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v2}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getInputCount()I

    move-result v2

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v0
.end method

.method public setCOUIInputType(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setInputType(I)V

    return-void
.end method

.method public setNextIcOnClickListener(Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mNextIconCheckListener:Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout$NextIconCheckListener;

    return-void
.end method

.method public showError()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIInputView;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public withCOUILengthLimit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->setEnableInputCount(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->isEnableInputCount()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getInputCount()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->mInputView:Lcom/coui/appcompat/input/COUILockScreenPwdInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/input/COUILockScreenPwdInputView;->getMinInputCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/input/COUILockScreenPwdInputLayout;->changeNextTransparentImageResource(Z)V

    :goto_1
    return-void
.end method

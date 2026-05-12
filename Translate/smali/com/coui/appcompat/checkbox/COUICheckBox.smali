.class public Lcom/coui/appcompat/checkbox/COUICheckBox;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;,
        Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;,
        Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;
    }
.end annotation


# static fields
.field private static final ALLSELECT_SET:[I

.field private static final BUTTON_DRAWABLE_BOUNDS:Landroid/graphics/Rect;

.field private static final COUI_DEBUG:Z

.field private static final DEBUG:Z = false

.field private static final DEFAULT_LOAD_DRAWABLE_DELAY:J = 0x64L

.field private static final MAX_INDEX:I = 0x2

.field private static final PARTSELECT_SET:[I

.field public static final SELECT_ALL:I = 0x2

.field public static final SELECT_NONE:I = 0x0

.field public static final SELECT_PART:I = 0x1

.field public static final SELECT_UNSPECIFIC:I = -0x1

.field private static final TAG:Ljava/lang/String; = "COUICheckBox"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAsyncLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mDrawableTextMargin:I

.field private mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

.field private mPendingState:I

.field private mState:I

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUICheckBox"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->COUI_DEBUG:Z

    sget v0, Lcom/support/appcompat/R$attr;->coui_state_allSelect:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->ALLSELECT_SET:[I

    sget v0, Lcom/support/appcompat/R$attr;->coui_state_partSelect:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->PARTSELECT_SET:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->BUTTON_DRAWABLE_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/appcompat/R$attr;->couiCheckBoxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mAsyncLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    goto :goto_0

    .line 7
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    .line 8
    :goto_0
    sget-object v0, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget v0, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiAsyncLoad:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 10
    sget v2, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 11
    sget v4, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiCheckBoxState:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 12
    iput v4, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    .line 13
    sget-boolean v5, Lcom/coui/appcompat/checkbox/COUICheckBox;->COUI_DEBUG:Z

    if-eqz v5, :cond_3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asyncLoad = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " drawable check = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/support/appcompat/R$drawable;->coui_checkbox_state:I

    const/4 v7, 0x1

    if-ne v2, v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " thread check = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v6, v8, :cond_2

    move v1, v7

    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v5, "COUICheckBox"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    .line 17
    sget v0, Lcom/support/appcompat/R$drawable;->coui_checkbox_state:I

    if-ne v2, v0, :cond_4

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 19
    new-instance v0, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;

    invoke-direct {v0, p0, p2, p3}, Lcom/coui/appcompat/checkbox/COUICheckBox$LoadDrawableRunnable;-><init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->asyncLoadAnimatedVectorDrawable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 21
    :cond_4
    sget v0, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iput v3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    .line 24
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    .line 25
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_6

    .line 26
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    if-nez p1, :cond_7

    .line 27
    iput p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    goto :goto_3

    .line 28
    :cond_6
    iput p3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    .line 29
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->configStateEffectBackground()V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_checkbox_margin_between_text_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mDrawableTextMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/checkbox/COUICheckBox;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->requestLock()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->COUI_DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/checkbox/COUICheckBox;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->configAnimatedVectorDrawableAndSetState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private asyncLoadAnimatedVectorDrawable(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->getInstance()Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->start(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->configDefaultDrawable(I)V

    return-void
.end method

.method private checkDrawableEnableState()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->setDrawableEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->setDrawableEnabled(Z)V

    :goto_0
    return-void
.end method

.method private configAnimatedVectorDrawableAndSetState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;I)V

    iget p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    return-void
.end method

.method private configDefaultDrawable(I)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_on_normal:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_on_disabled:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_part_check_on_normal:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_part_check_on_disabled:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_off_normal:I

    goto :goto_0

    :cond_5
    sget p1, Lcom/support/appcompat/R$drawable;->coui_btn_check_off_disabled:I

    :goto_0
    if-eq p1, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(I)V

    :cond_6
    return-void
.end method

.method private configStateDrawable()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    sget-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->BUTTON_DRAWABLE_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private configStateEffectBackground()V
    .locals 5

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->getMaskRippleRadiusByType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private getButtonStateDescription()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_checked:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_unchecked:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_partchecked:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private jumpToCurrentState(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    sget-object p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->PARTSELECT_SET:[I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    sget-object p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->ALLSELECT_SET:[I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method private requestLock()Z
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mAsyncLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method private updateButtonDrawableBounds()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    const/16 v3, 0x50

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v2, v1

    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v4, v3, v0

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_3
    sget-object p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->BUTTON_DRAWABLE_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    return-void
.end method

.method private updateStateDescription()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setHovered(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setHovered(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->updateButtonDrawableBounds()V

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->checkDrawableEnableState()V

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->configStateDrawable()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "android.widget.CompoundButton"

    return-object p0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mDrawableTextMargin:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mDrawableTextMargin:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getState()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    return p0
.end method

.method public isChecked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/checkbox/COUICheckBox;->PARTSELECT_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->ALLSELECT_SET:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coui/appcompat/checkbox/COUICheckBox;->BUTTON_DRAWABLE_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p1, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_0
    const-string v0, "android.widget.CompoundButton"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getButtonStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;->mState:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p0

    iput p0, v1, Lcom/coui/appcompat/checkbox/COUICheckBox$SavedState;->mState:I

    return-object v1
.end method

.method public performClick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    iget v4, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICheckBox:[I

    iget v4, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    sget v0, Lcom/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonResource:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonResource:I

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonResource:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    iget-object v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    iput-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13
    iget-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    return-void
.end method

.method public setState(I)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mPendingState:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->configDefaultDrawable(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mBroadcasting:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mBroadcasting:Z

    iget-object p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    invoke-interface {p1, p0, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/checkbox/COUICheckBox;I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mBroadcasting:Z

    invoke-direct {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->updateStateDescription()V

    :cond_3
    return-void
.end method

.method public toggle()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/checkbox/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

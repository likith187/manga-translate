.class public Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "COUITextViewCompatUtil"

.field private static final TEXT_VIEW_WRAPPER:Ljava/lang/String; = "android.view.OplusBaseView"

.field private static mTextViewCompatName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canReachFrameworkWrapper()Z
    .locals 1

    :try_start_0
    const-string v0, "android.view.OplusBaseView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getParaSpacing(Landroid/widget/TextView;)F
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.view.OplusBaseView"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getBaseViewName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->mTextViewCompatName:Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->reflectGetParaSpacing(Landroid/widget/TextView;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static reflectGetParaSpacing(Landroid/widget/TextView;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->mTextViewCompatName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParaSpacing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static reflectSetParaSpacing(Landroid/widget/TextView;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->mTextViewCompatName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setParaSpacing"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setButtonTextView(Landroid/widget/TextView;)V
    .locals 1

    invoke-static {p0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static setParaSpacing(Landroid/widget/TextView;F)Z
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.view.OplusBaseView"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getBaseViewName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->mTextViewCompatName:Ljava/lang/String;

    :try_start_0
    invoke-static {p0, p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->reflectSetParaSpacing(Landroid/widget/TextView;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setPressRippleDrawable(Landroid/view/View;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 4
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->text_ripple_bg_padding_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->text_ripple_bg_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 9
    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_2
    new-instance p1, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCustomRippleMask()V

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 13
    invoke-static {p0, p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method public static setPressRippleDrawable(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/view/View;Z)V

    return-void
.end method

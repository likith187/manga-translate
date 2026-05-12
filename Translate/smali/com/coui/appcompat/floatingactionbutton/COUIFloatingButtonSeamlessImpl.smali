.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_DURATION:I = 0xc8

.field private static final FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mSeamlessViewBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->FLOATING_BUTTON_SEAMLESS_SHADOW_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public getSeamlessViewBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSeamlessBundle(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->supportSeamlessAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    const-string v1, "view_seamless_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const-string v2, "view_seamless_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    new-instance v2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;Landroid/view/View;)V

    invoke-static {p1, v0, v1, v2}, Lcom/oplus/animation/OplusViewSeamless;->setSeamlessView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Lcom/oplus/animation/OplusViewSeamless$AnimationCallback;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->mSeamlessViewBundle:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

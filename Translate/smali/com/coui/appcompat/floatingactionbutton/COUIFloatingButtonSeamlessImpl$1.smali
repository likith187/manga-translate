.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;
.super Lcom/oplus/animation/OplusViewSeamless$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->setSeamlessBundle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lcom/oplus/animation/OplusViewSeamless$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public animationProgress(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_float_btn_shadow_elevation:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl$1;->val$view:Landroid/view/View;

    const-string v1, "elevation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->access$000()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

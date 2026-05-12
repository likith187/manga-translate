.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->narrowFloatingButton(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

.field final synthetic val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$11;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

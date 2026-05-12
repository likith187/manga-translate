.class Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->applyHintChangeAnimation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$902(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1100(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->pauseHintsAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1102(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$800(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.class Lcom/coui/appcompat/reddot/COUIHintRedDot$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeScaleAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-boolean p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->val$isShow:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->val$isShow:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->val$isShow:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

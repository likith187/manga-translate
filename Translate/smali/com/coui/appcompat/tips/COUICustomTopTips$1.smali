.class Lcom/coui/appcompat/tips/COUICustomTopTips$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tips/COUICustomTopTips;->showWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tips/COUICustomTopTips;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips$1;->this$0:Lcom/coui/appcompat/tips/COUICustomTopTips;

    invoke-static {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

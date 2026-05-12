.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initRecoverAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$202(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$202(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$300(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$300(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;->onRecoverAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$202(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$300(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;->this$0:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->access$300(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;->onRecoverAnimationStart()V

    :cond_0
    return-void
.end method

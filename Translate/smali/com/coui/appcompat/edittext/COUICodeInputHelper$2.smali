.class Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICodeInputHelper;->executeNumberAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$302(Lcom/coui/appcompat/edittext/COUICodeInputHelper;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$302(Lcom/coui/appcompat/edittext/COUICodeInputHelper;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

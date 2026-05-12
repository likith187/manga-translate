.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$900(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;ZZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$1000(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$000(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

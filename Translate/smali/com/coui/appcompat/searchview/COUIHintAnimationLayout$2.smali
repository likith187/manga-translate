.class Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->initTextHintAnimation()V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$300(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$400(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$500(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$600(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$700(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$800(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$900(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$800(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$900(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

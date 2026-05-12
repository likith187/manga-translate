.class Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICardMultiInputView;->handleWithCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "/"

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$200(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$400(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$500(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$attr;->couiColorHintNeutral:I

    invoke-static {v1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$600(Lcom/coui/appcompat/edittext/COUICardMultiInputView;II)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$100(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$700(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p0, v2}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$402(Lcom/coui/appcompat/edittext/COUICardMultiInputView;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$200(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v5}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v3}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$100(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$300(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$500(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorError:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$600(Lcom/coui/appcompat/edittext/COUICardMultiInputView;II)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$100(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$700(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$100(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$700(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$402(Lcom/coui/appcompat/edittext/COUICardMultiInputView;Z)Z

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

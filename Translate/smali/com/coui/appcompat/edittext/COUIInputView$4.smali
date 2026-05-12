.class Lcom/coui/appcompat/edittext/COUIInputView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->handleWithCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-boolean v1, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mEnableInputCount:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mOnEditTextChangeListener:Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coui/appcompat/edittext/COUIInputView$OnEditTextChangeListener;->afterTextChange(Landroid/text/Editable;)V

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    const-string v3, "/"

    if-ge v0, v2, :cond_1

    iget-object p1, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, p1, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$attr;->couiColorHintNeutral:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget v4, v4, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget v3, v3, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$attr;->couiColorError:I

    invoke-static {v1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget v2, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mMaxCount:I

    if-le v0, v2, :cond_2

    iget-object v0, v1, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$500(Lcom/coui/appcompat/edittext/COUIInputView;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->access$600(Lcom/coui/appcompat/edittext/COUIInputView;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-virtual {p2}, Lcom/coui/appcompat/edittext/COUIInputView;->isIsCardSingleInput()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p2}, Lcom/coui/appcompat/edittext/COUIInputView;->access$300(Lcom/coui/appcompat/edittext/COUIInputView;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->access$400(Lcom/coui/appcompat/edittext/COUIInputView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

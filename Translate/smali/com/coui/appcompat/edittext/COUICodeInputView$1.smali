.class Lcom/coui/appcompat/edittext/COUICodeInputView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICodeInputView;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$100(Lcom/coui/appcompat/edittext/COUICodeInputView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v2}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$300(Lcom/coui/appcompat/edittext/COUICodeInputView;)I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v2}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$300(Lcom/coui/appcompat/edittext/COUICodeInputView;)I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$300(Lcom/coui/appcompat/edittext/COUICodeInputView;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$202(Lcom/coui/appcompat/edittext/COUICodeInputView;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$400(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$500(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    :cond_3
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

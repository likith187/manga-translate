.class Lcom/coui/appcompat/button/COUILoadingButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/button/COUILoadingButton;->initTextChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/button/COUILoadingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUILoadingButton;->access$000(Lcom/coui/appcompat/button/COUILoadingButton;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coui/appcompat/button/COUILoadingButton;->access$102(Lcom/coui/appcompat/button/COUILoadingButton;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

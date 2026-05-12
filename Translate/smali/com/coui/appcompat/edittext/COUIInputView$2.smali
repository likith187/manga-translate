.class Lcom/coui/appcompat/edittext/COUIInputView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->initDeleteButton()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->getTextDeleteListener()Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p1, p1, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->getTextDeleteListener()Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->onFastDelete()V

    :cond_1
    return-void
.end method

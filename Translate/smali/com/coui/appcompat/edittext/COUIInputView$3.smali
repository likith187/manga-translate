.class Lcom/coui/appcompat/edittext/COUIInputView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIInputView;->handleWithError()V
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorStateChangeAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onErrorStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$000(Lcom/coui/appcompat/edittext/COUIInputView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$100(Lcom/coui/appcompat/edittext/COUIInputView;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$200(Lcom/coui/appcompat/edittext/COUIInputView;)Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$3;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->access$200(Lcom/coui/appcompat/edittext/COUIInputView;)Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView$ErrorStateChangeCallback;->callback(Z)V

    :cond_1
    return-void
.end method

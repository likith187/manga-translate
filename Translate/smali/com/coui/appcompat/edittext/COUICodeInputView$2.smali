.class Lcom/coui/appcompat/edittext/COUICodeInputView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$600(Lcom/coui/appcompat/edittext/COUICodeInputView;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x43

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p2}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$400(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputView$2;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputView;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputView;->access$500(Lcom/coui/appcompat/edittext/COUICodeInputView;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

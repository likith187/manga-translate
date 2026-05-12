.class Lcom/coui/appcompat/edittext/COUIInputView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    invoke-static {p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->access$500(Lcom/coui/appcompat/edittext/COUIInputView;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView$5;->this$0:Lcom/coui/appcompat/edittext/COUIInputView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->access$600(Lcom/coui/appcompat/edittext/COUIInputView;Z)V

    return-void
.end method

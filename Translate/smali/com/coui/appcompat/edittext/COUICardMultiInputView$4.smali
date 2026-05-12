.class Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICardMultiInputView;
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

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$400(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$500(Lcom/coui/appcompat/edittext/COUICardMultiInputView;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorHintNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$600(Lcom/coui/appcompat/edittext/COUICardMultiInputView;II)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICardMultiInputView$4;->this$0:Lcom/coui/appcompat/edittext/COUICardMultiInputView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/edittext/COUICardMultiInputView;->access$402(Lcom/coui/appcompat/edittext/COUICardMultiInputView;Z)Z

    :cond_0
    return-void
.end method

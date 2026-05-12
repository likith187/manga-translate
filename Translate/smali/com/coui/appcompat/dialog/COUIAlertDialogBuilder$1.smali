.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initBlurListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$000(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->isMaterialBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "operateBlur error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIAlertDialogBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$300(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->release()V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

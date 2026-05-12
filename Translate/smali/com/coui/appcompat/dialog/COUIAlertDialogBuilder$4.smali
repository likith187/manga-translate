.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
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

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$400(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-static {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->access$502(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateGravityWhileConfigChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

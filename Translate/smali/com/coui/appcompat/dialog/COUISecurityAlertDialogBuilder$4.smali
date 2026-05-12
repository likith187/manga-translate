.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$202(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Z

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;->onSelected(IZ)V

    :cond_1
    return-void
.end method

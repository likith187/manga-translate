.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
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

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$000(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Landroidx/appcompat/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$000(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Z

    move-result p0

    const/4 p2, -0x2

    invoke-interface {p1, p2, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;->onSelected(IZ)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

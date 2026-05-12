.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
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

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Z

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;->onSelected(IZ)V

    :cond_0
    return-void
.end method

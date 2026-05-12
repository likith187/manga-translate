.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getStatementStringBuilder(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
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

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$300(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->access$300(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;->onLinkTextClick()V

    :cond_0
    return-void
.end method

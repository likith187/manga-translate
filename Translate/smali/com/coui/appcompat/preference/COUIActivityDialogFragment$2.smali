.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$000(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Landroidx/appcompat/app/o;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    return-void
.end method

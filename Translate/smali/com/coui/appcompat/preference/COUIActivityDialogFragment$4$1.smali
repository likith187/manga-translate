.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->this$1:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iput p2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->this$1:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->val$position:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$102(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;I)I

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->this$1:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/preference/f;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;->this$1:Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$dialog:Landroidx/appcompat/app/o;

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    return-void
.end method

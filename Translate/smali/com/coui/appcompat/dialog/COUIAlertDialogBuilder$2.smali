.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initListPanel(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field final synthetic val$scrollView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->val$scrollView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->val$scrollView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->bottom_dialog_scroll_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/support/dialog/R$dimen;->bottom_dialog_scroll_padding_bottom:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

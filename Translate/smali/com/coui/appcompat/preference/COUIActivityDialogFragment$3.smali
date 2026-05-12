.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->val$appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->val$appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->support_preference_listview_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->val$appbarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

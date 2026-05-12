.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;
.super Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;
.source "SourceFile"


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

.field final synthetic val$dialog:Landroidx/appcompat/app/o;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;Landroidx/appcompat/app/o;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    iput-object p6, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$list:Landroid/widget/ListView;

    iput-object p7, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$dialog:Landroidx/appcompat/app/o;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {p3}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$100(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->val$list:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, v1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    sget p3, Lcom/support/preference/R$id;->item_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-eqz p3, :cond_3

    if-eq v1, v0, :cond_2

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    new-instance p3, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4$1;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$200(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(II)I

    move-result p0

    invoke-static {p2, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-object p2
.end method

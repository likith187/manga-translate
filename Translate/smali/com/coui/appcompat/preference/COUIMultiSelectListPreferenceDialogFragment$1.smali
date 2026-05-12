.class Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;
.super Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V
    .locals 7

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/support/dialog/R$id;->item_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCount()I

    move-result p0

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-object p2
.end method

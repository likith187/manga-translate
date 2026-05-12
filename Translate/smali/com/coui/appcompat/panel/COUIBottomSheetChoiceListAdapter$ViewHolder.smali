.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field itemText:Landroid/widget/TextView;

.field mLayout:Landroid/view/View;

.field radioButton:Landroid/widget/RadioButton;

.field summaryText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    sget v0, Lcom/support/dialog/R$id;->summary_text2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/dialog/R$id;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/dialog/R$id;->radio_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    :goto_0
    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$drawable;->coui_list_selector_background:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    return-void
.end method

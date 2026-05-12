.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->onBindViewHolder(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

.field final synthetic val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$100(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$holder:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$200(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-static {v0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$202(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;I)I

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;II)V

    return-void
.end method

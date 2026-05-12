.class Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iput p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/support/dialog/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$000(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)[Z

    move-result-object v0

    iget v4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->val$position:I

    aput-boolean v2, v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$200(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I

    move-result v4

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$300(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$300(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;

    move-result-object v0

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$100(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I

    move-result v4

    invoke-interface {v0, v4}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;->maxCheckedNotice(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$000(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)[Z

    move-result-object v0

    iget v4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->val$position:I

    aput-boolean v1, v0, v4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$400(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$400(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->val$position:I

    invoke-virtual {p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->getState()I

    move-result p1

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;->onClick(IZ)V

    goto :goto_2

    :cond_4
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$400(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->this$0:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->access$400(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;->val$position:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;->onClick(IZ)V

    :cond_5
    :goto_2
    return-void
.end method

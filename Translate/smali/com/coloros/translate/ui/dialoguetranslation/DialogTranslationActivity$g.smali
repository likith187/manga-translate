.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAddOrRemoveListData add data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const-string v1, "mDialogueTranslationAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->u(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    const-string v3, "aiSignTextView"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    .line 6
    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getExpandField1()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sample"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-static {v5, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->k2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    .line 10
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-nez p1, :cond_7

    .line 12
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->j0()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 13
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V

    .line 14
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 16
    :cond_7
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 17
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, "mToolbar"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_8
    invoke-virtual {v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    sget v5, Lcom/coloros/translate/R$id;->select_mode:I

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_a
    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->G1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result v1

    if-nez v1, :cond_b

    move v4, v0

    :cond_b
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    if-lez p1, :cond_d

    .line 18
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, "mRecyclerHistoryRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v2, p0

    :goto_2
    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollToPosition(I)V

    :cond_d
    return-void
.end method

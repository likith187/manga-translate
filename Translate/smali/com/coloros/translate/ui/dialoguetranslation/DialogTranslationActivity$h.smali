.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 7

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DialogTranslationActivity"

    const-string v2, "add data"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result v0

    const-string v1, "mDialogueTranslationAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y0(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "mToolbar"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$id;->select_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const-string v3, "mSingleDialogueAdapter"

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 9
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/Conversation;

    goto :goto_0

    :cond_8
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 11
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 12
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    invoke-virtual {v4, v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 14
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v5

    if-nez v5, :cond_a

    const-string v5, "mUpHistoryRecyclerView"

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_a
    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v6}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v2

    :cond_b
    invoke-virtual {v6}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    .line 15
    :cond_c
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    filled-new-array {p1}, [Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->u(Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v4

    if-nez v4, :cond_e

    const-string v4, "mRecyclerHistoryRecyclerView"

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v2

    :cond_e
    iget-object v5, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v2

    :cond_f
    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    .line 17
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->x2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 19
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    move-object v2, p1

    :goto_2
    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 20
    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    .line 21
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    .line 22
    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$h;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p0

    .line 23
    const-string v2, "event_translate_success_for_dialog"

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_11
    return-void
.end method

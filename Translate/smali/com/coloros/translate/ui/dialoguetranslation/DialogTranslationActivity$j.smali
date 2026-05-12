.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "mDialogueTranslationAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->s(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->y0(Lcom/coloros/translate/repository/local/Conversation;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const-string v2, "mSingleDialogueAdapter"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->s(Lcom/coloros/translate/repository/local/Conversation;)V

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "mRecyclerHistoryRecyclerView"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->V1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    .line 7
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$j;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Lcom/coloros/translate/repository/local/Conversation;)V

    :goto_1
    return-void
.end method

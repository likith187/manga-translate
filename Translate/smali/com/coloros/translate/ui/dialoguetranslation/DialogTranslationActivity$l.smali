.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->invoke(Lcom/coloros/translate/repository/local/Conversation;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->C0(Z)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "mDialogueTranslationAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "mRecyclerHistoryRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroidx/recyclerview/widget/COUIRecyclerView;I)V

    return-void
.end method

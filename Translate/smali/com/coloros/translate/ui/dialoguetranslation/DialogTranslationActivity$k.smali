.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln8/q;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->invoke(Ln8/q;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ln8/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/q;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentTtsItemIndexStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mRecordingButtonSpeaking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    .line 5
    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->e2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->A2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Ln8/q;)V

    .line 8
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->W()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->W()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewModel.mCancelTTsChange"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->j2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 13
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->S1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->n2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->p0(Z)V

    .line 17
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$k;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->r2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    :cond_4
    :goto_0
    return-void
.end method

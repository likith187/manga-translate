.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->invoke(I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 7
    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemLongClick setSelectionPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "historyAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/coloros/translate/ui/texttranslation/h;->A(I)V

    .line 9
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/t0;->a(Landroidx/lifecycle/s0;)Lkotlinx/coroutines/c0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v3

    new-instance v5, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v5, p0, p1, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$m$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ILkotlin/coroutines/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    :cond_3
    :goto_0
    return-void
.end method

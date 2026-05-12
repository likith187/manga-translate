.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v1, v4, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    iput v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "clearHistory"

    const-string v1, "TextTranslationActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "historyAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/h;->j()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    const-string v0, "clearHistory to refresh page"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

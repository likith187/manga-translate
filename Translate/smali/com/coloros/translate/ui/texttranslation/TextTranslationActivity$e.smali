.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->W2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isAITranslate:Z

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZLkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;",
            "Z",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->$isAITranslate:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->$isAITranslate:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->J$0:J

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e$a;

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iget-boolean v7, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->$isAITranslate:Z

    invoke-direct {v1, v6, v7, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZLkotlin/coroutines/d;)V

    iput-wide v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->J$0:J

    iput v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v4

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeTranslate saveHistory all cost : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextTranslationActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/repository/local/TextHistory;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeTranslate historyList size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "historyAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/coloros/translate/ui/texttranslation/h;->u(Ljava/util/ArrayList;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

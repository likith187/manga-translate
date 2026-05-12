.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $startTime:J

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;JLkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;",
            "J",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iput-wide p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iget-wide v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->$startTime:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;JLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v1, v4, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteHistory historyList size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextTranslationActivity"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->$startTime:J

    sub-long/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteHistory IO cost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;

    move-result-object v0

    const-string v2, "historyAdapter"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/h;->k()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/h;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/coloros/translate/ui/texttranslation/h;->u(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->$startTime:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteHistory all cost: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    const-string v0, "deleteHistory to change page"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$f;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.class final Lkotlin/text/n$f;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/n;->splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $limit:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/text/n;


# direct methods
.method constructor <init>(Lkotlin/text/n;Ljava/lang/CharSequence;ILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/text/n;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/text/n$f;->this$0:Lkotlin/text/n;

    iput-object p2, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/n$f;->$limit:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance v0, Lkotlin/text/n$f;

    iget-object v1, p0, Lkotlin/text/n$f;->this$0:Lkotlin/text/n;

    iget-object v2, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    iget p0, p0, Lkotlin/text/n$f;->$limit:I

    invoke-direct {v0, v1, v2, p0, p2}, Lkotlin/text/n$f;-><init>(Lkotlin/text/n;Ljava/lang/CharSequence;ILkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlin/text/n$f;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlin/text/n$f;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlin/text/n$f;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lkotlin/text/n$f;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lkotlin/text/n$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/text/n$f;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lkotlin/text/n$f;->I$0:I

    iget-object v5, p0, Lkotlin/text/n$f;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/regex/Matcher;

    iget-object v6, p0, Lkotlin/text/n$f;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/sequences/h;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/text/n$f;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/h;

    iget-object v1, p0, Lkotlin/text/n$f;->this$0:Lkotlin/text/n;

    invoke-static {v1}, Lkotlin/text/n;->access$getNativePattern$p(Lkotlin/text/n;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v5, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget v5, p0, Lkotlin/text/n$f;->$limit:I

    if-eq v5, v4, :cond_9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    move-object v6, p1

    move-object p1, v1

    move v1, v5

    :cond_5
    iget-object v7, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {v7, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v6, p0, Lkotlin/text/n$f;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/text/n$f;->L$1:Ljava/lang/Object;

    iput v1, p0, Lkotlin/text/n$f;->I$0:I

    iput v3, p0, Lkotlin/text/n$f;->label:I

    invoke-virtual {v6, v5, p0}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    add-int/2addr v1, v4

    iget v7, p0, Lkotlin/text/n$f;->$limit:I

    sub-int/2addr v7, v4

    if-eq v1, v7, :cond_7

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_7
    iget-object p1, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/text/n$f;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/text/n$f;->L$1:Ljava/lang/Object;

    iput v2, p0, Lkotlin/text/n$f;->label:I

    invoke-virtual {v6, p1, p0}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_9
    :goto_2
    iget-object v1, p0, Lkotlin/text/n$f;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput v4, p0, Lkotlin/text/n$f;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

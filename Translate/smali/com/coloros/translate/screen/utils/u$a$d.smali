.class final Lcom/coloros/translate/screen/utils/u$a$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/utils/u$a;->n(I)Lkotlinx/coroutines/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $duration:I

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/utils/u$a;


# direct methods
.method constructor <init>(ILcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/coloros/translate/screen/utils/u$a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/coloros/translate/screen/utils/u$a$d;->$duration:I

    iput-object p2, p0, Lcom/coloros/translate/screen/utils/u$a$d;->this$0:Lcom/coloros/translate/screen/utils/u$a;

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

    new-instance p1, Lcom/coloros/translate/screen/utils/u$a$d;

    iget v0, p0, Lcom/coloros/translate/screen/utils/u$a$d;->$duration:I

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a$d;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/screen/utils/u$a$d;-><init>(ILcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$d;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/utils/u$a$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/utils/u$a$d;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/utils/u$a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/utils/u$a$d;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/coloros/translate/screen/utils/u$a$d;->$duration:I

    if-nez p1, :cond_3

    const-wide/16 v4, 0x7d0

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0xbb8

    :goto_0
    iput v3, p0, Lcom/coloros/translate/screen/utils/u$a$d;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    new-instance v1, Lcom/coloros/translate/screen/utils/u$a$d$a;

    iget-object v3, p0, Lcom/coloros/translate/screen/utils/u$a$d;->this$0:Lcom/coloros/translate/screen/utils/u$a;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/coloros/translate/screen/utils/u$a$d$a;-><init>(Lcom/coloros/translate/screen/utils/u$a;Lkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coloros/translate/screen/utils/u$a$d;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

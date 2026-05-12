.class public abstract Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lm0/b;
    .locals 4

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->F0()Lkotlinx/coroutines/p1;

    move-result-object v0
    :try_end_0
    .catch Ln8/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    goto :goto_0

    :catch_1
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    :goto_0
    new-instance v1, Lm0/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/x1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object v0

    invoke-direct {v1, v0}, Lm0/b;-><init>(Lkotlin/coroutines/g;)V

    return-object v1
.end method

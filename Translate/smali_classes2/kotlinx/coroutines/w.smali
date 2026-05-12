.class public abstract Lkotlinx/coroutines/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    instance-of p1, p0, Lkotlinx/coroutines/t;

    if-eqz p1, :cond_0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    check-cast p0, Lkotlinx/coroutines/t;

    iget-object p0, p0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Lkotlinx/coroutines/i;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/t;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lkotlinx/coroutines/u;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/u;-><init>(Ljava/lang/Object;Lw8/l;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/t;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/w;->c(Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

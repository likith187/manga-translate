.class abstract Lkotlin/coroutines/intrinsics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/a;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/a;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne v0, v1, :cond_1

    new-instance v0, Lkotlin/coroutines/intrinsics/c$a;

    invoke-direct {v0, p2, p0, p1}, Lkotlin/coroutines/intrinsics/c$a;-><init>(Lkotlin/coroutines/d;Lw8/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/coroutines/intrinsics/c$b;

    invoke-direct {v1, p2, v0, p0, p1}, Lkotlin/coroutines/intrinsics/c$b;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Lw8/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private static final b(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne v0, v1, :cond_0

    new-instance v0, Lkotlin/coroutines/intrinsics/c$c;

    invoke-direct {v0, p0}, Lkotlin/coroutines/intrinsics/c$c;-><init>(Lkotlin/coroutines/d;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/coroutines/intrinsics/c$d;

    invoke-direct {v1, p0, v0}, Lkotlin/coroutines/intrinsics/c$d;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/g;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/d;->intercepted()Lkotlin/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/c;->b(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw8/p;

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lw8/q;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/h;->a(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p3

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/c;->b(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw8/q;

    invoke-interface {p0, p1, p2, p3}, Lw8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lkotlinx/coroutines/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;
    .locals 3

    invoke-static {p0}, Lkotlinx/coroutines/x;->c(Lkotlin/coroutines/g;)Z

    move-result v0

    invoke-static {p1}, Lkotlinx/coroutines/x;->c(Lkotlin/coroutines/g;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/c0;

    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    new-instance v2, Lkotlinx/coroutines/x$b;

    invoke-direct {v2, v0, p2}, Lkotlinx/coroutines/x$b;-><init>(Lkotlin/jvm/internal/c0;Z)V

    invoke-interface {p0, p1, v2}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/g;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/g;

    sget-object v1, Lkotlinx/coroutines/x$a;->INSTANCE:Lkotlinx/coroutines/x$a;

    invoke-interface {p2, p1, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/g;

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/g;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Lkotlin/coroutines/g;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lkotlinx/coroutines/x$c;->INSTANCE:Lkotlinx/coroutines/x$c;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/x;->c(Lkotlin/coroutines/g;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/x;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/c0;->c()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/x;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/jvm/internal/e;)Lkotlinx/coroutines/c2;
    .locals 2

    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/l0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/c2;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/c2;

    return-object p0
.end method

.method public static final g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/c2;
    .locals 2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/d2;->INSTANCE:Lkotlinx/coroutines/d2;

    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    invoke-static {p0}, Lkotlinx/coroutines/x;->f(Lkotlin/coroutines/jvm/internal/e;)Lkotlinx/coroutines/c2;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c2;->C0(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method

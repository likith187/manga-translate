.class public abstract Lkotlinx/coroutines/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/j;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->D()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/k0;->b(Lkotlin/coroutines/g;)Lkotlinx/coroutines/j0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lkotlinx/coroutines/j0;->x(JLkotlinx/coroutines/i;)V

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/g;)Lkotlinx/coroutines/j0;
    .locals 1

    sget-object v0, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/j0;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/j0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/i0;->a()Lkotlinx/coroutines/j0;

    move-result-object p0

    :cond_1
    return-object p0
.end method

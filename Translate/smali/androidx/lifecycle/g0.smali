.class public abstract Landroidx/lifecycle/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne v0, v1, :cond_0

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/lifecycle/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/lifecycle/g0$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/d0;->d(Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

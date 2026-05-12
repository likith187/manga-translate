.class public abstract Landroidx/lifecycle/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/l;)Landroidx/lifecycle/m;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/l;->c()Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/n;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroidx/lifecycle/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/x1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/coroutines/p1;->F0()Lkotlinx/coroutines/p1;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/l;Lkotlin/coroutines/g;)V

    invoke-virtual {p0}, Landroidx/lifecycle/l;->c()Landroidx/lifecycle/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/n;->b()V

    return-object v0
.end method

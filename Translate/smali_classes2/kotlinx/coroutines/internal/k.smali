.class public abstract Lkotlinx/coroutines/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/g0;

.field public static final b:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/k;->a:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/k;->b:Lkotlinx/coroutines/internal/g0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/k;->a:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final b(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;)V
    .locals 6

    instance-of v0, p0, Lkotlinx/coroutines/internal/j;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/j;

    invoke-static {p1, p2}, Lkotlinx/coroutines/w;->c(Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/y;->D0(Lkotlin/coroutines/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    iput v1, p0, Lkotlinx/coroutines/m0;->c:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/y;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lkotlinx/coroutines/z1;->INSTANCE:Lkotlinx/coroutines/z1;

    invoke-virtual {v0}, Lkotlinx/coroutines/z1;->a()Lkotlinx/coroutines/s0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/s0;->L0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Lkotlinx/coroutines/internal/j;->i:Ljava/lang/Object;

    iput v1, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/s0;->H0(Lkotlinx/coroutines/m0;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/s0;->J0(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/f1;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/f1;->N()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/internal/j;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/j;->j:Ljava/lang/Object;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/k0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, Lkotlinx/coroutines/x;->g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/c2;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/j;->h:Lkotlin/coroutines/d;

    invoke-interface {v5, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Lkotlinx/coroutines/c2;->B0()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/s0;->N0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/s0;->F0(Z)V

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_6

    :try_start_3
    invoke-virtual {p2}, Lkotlinx/coroutines/c2;->B0()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/k0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/m0;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/s0;->F0(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/k;->b(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;)V

    return-void
.end method

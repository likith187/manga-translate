.class final Lkotlinx/coroutines/flow/j;
.super Lkotlinx/coroutines/flow/internal/c;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/flow/j;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/h;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/j;->d(Lkotlinx/coroutines/flow/h;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lkotlin/coroutines/d;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/h;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/j;->f(Lkotlinx/coroutines/flow/h;)[Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public d(Lkotlinx/coroutines/flow/h;)Z
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lkotlinx/coroutines/internal/e;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlinx/coroutines/flow/i;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/e;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/j;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/j;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->D()V

    invoke-static {p0}, Lkotlinx/coroutines/flow/j;->c(Lkotlinx/coroutines/flow/j;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/flow/i;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/lifecycle/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public f(Lkotlinx/coroutines/flow/h;)[Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/e;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    sget-object p0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/d;

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/internal/e;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/flow/i;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/flow/i;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlinx/coroutines/flow/i;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/lifecycle/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_3
    iget-object v2, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlinx/coroutines/flow/i;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/lifecycle/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/j;

    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lkotlinx/coroutines/flow/i;->b()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/flow/i;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

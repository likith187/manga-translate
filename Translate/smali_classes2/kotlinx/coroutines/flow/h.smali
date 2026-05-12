.class final Lkotlinx/coroutines/flow/h;
.super Lkotlinx/coroutines/flow/internal/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;
.implements Lkotlinx/coroutines/flow/b;


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lkotlinx/coroutines/flow/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/a;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/h;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private static final synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/flow/h;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/flow/h;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/h;->f:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h;->f:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->e()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Lkotlinx/coroutines/flow/j;

    if-eqz p2, :cond_3

    array-length v1, p2

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/j;->g()V

    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lkotlinx/coroutines/flow/h;->f:I

    if-ne p2, p1, :cond_4

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->e()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p1

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :goto_2
    monitor-exit p0

    throw p1

    :cond_5
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lkotlinx/coroutines/flow/h;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic b()Lkotlinx/coroutines/flow/internal/c;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/h;->f()Lkotlinx/coroutines/flow/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(I)[Lkotlinx/coroutines/flow/internal/c;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/h;->g(I)[Lkotlinx/coroutines/flow/j;

    move-result-object p0

    return-object p0
.end method

.method public collect(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lkotlinx/coroutines/flow/h$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/h$a;

    iget v1, v0, Lkotlinx/coroutines/flow/h$a;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/h$a;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/h$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/h$a;-><init>(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/h$a;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/h$a;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    if-eq v2, p0, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/h$a;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/f1;

    iget-object v2, v0, Lkotlinx/coroutines/flow/h$a;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v6, v0, Lkotlinx/coroutines/flow/h$a;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/c;

    iget-object v7, v0, Lkotlinx/coroutines/flow/h$a;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/h;

    :try_start_0
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/h$a;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/f1;

    iget-object v2, v0, Lkotlinx/coroutines/flow/h$a;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v6, v0, Lkotlinx/coroutines/flow/h$a;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/c;

    iget-object v7, v0, Lkotlinx/coroutines/flow/h$a;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/h;

    :try_start_1
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$2:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    iget-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/h;

    :try_start_2
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, p0

    move-object p0, p1

    goto :goto_5

    :cond_4
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->a()Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/j;

    move-object v2, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    sget-object v6, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p2, v6}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/f1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, p0

    move-object v6, p1

    move-object p1, p2

    move-object p0, v3

    :cond_5
    :goto_2
    :try_start_4
    invoke-static {}, Lkotlinx/coroutines/flow/h;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlinx/coroutines/j1;->f(Lkotlinx/coroutines/f1;)V

    :cond_6
    if-eqz p0, :cond_7

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_7
    sget-object p0, Lkotlinx/coroutines/flow/internal/f;->a:Lkotlinx/coroutines/internal/g0;

    if-ne p2, p0, :cond_8

    move-object p0, v3

    goto :goto_3

    :cond_8
    move-object p0, p2

    :goto_3
    iput-object v7, v0, Lkotlinx/coroutines/flow/h$a;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/h$a;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/h$a;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/h$a;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/h$a;->L$4:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/h$a;->label:I

    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    move-object p0, p2

    :cond_a
    :goto_4
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/j;->h()Z

    move-result p2

    if-nez p2, :cond_5

    iput-object v7, v0, Lkotlinx/coroutines/flow/h$a;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/h$a;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/h$a;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/h$a;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/flow/h$a;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/h$a;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/j;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :goto_5
    invoke-virtual {v7, v2}, Lkotlinx/coroutines/flow/internal/a;->d(Lkotlinx/coroutines/flow/internal/c;)V

    throw p0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/h;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method protected f()Lkotlinx/coroutines/flow/j;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/flow/j;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/j;-><init>()V

    return-object p0
.end method

.method protected g(I)[Lkotlinx/coroutines/flow/j;
    .locals 0

    new-array p0, p1, [Lkotlinx/coroutines/flow/j;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlinx/coroutines/flow/internal/f;->a:Lkotlinx/coroutines/internal/g0;

    invoke-static {}, Lkotlinx/coroutines/flow/h;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/internal/f;->a:Lkotlinx/coroutines/internal/g0;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/h;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

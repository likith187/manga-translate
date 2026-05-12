.class final Lkotlinx/coroutines/channels/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/e;
.implements Lkotlinx/coroutines/e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lkotlinx/coroutines/j;

.field final synthetic c:Lkotlinx/coroutines/channels/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/channels/c;->k()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/b$a;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b$a;->h()V

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/j;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    return-void
.end method

.method public static final synthetic e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private final f(Lkotlinx/coroutines/channels/i;IJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10

    iget-object v6, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/l;->b(Lkotlin/coroutines/d;)Lkotlinx/coroutines/j;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/j;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/c;->p()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, Lkotlinx/coroutines/channels/b;->j(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/e2;Lkotlinx/coroutines/channels/i;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/c;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->K()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->c()V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/i;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->R()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lkotlinx/coroutines/channels/b$a;->c(Lkotlinx/coroutines/channels/b$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/b;->f()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lkotlinx/coroutines/channels/c;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, Lkotlinx/coroutines/internal/d0;->c:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    invoke-static {v6, v0, v1, p1}, Lkotlinx/coroutines/channels/b;->b(Lkotlinx/coroutines/channels/b;JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/c;->p()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, Lkotlinx/coroutines/channels/b;->j(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/e2;Lkotlinx/coroutines/channels/i;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/c;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->K()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->c()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/internal/g0;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->c()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/b$a;->e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/j;)V

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object p1, v6, Lkotlinx/coroutines/channels/b;->c:Lw8/l;

    if-eqz p1, :cond_8

    invoke-virtual {v7}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/internal/y;->a(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Lw8/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p0, v9}, Lkotlinx/coroutines/j;->e(Ljava/lang/Object;Lw8/l;)V

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/d;->c()V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/b$a;->e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/j;)V

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object p1, v6, Lkotlinx/coroutines/channels/b;->c:Lw8/l;

    if-eqz p1, :cond_8

    invoke-virtual {v7}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lkotlinx/coroutines/internal/y;->a(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Lw8/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_b

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_b
    return-object p0

    :goto_3
    invoke-virtual {v7}, Lkotlinx/coroutines/j;->M()V

    throw p0
.end method

.method private final g()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/channels/c;->x()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->B()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/f0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    invoke-static {}, Lkotlinx/coroutines/channels/c;->x()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->B()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 13

    iget-object v6, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-static {}, Lkotlinx/coroutines/channels/b;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/i;

    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/b$a;->g()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/b;->f()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v1, Lkotlinx/coroutines/channels/c;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    rem-long v4, v10, v4

    long-to-int v9, v4

    iget-wide v4, v0, Lkotlinx/coroutines/internal/d0;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {v6, v2, v3, v0}, Lkotlinx/coroutines/channels/b;->b(Lkotlinx/coroutines/channels/b;JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move-wide v3, v10

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->l(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/channels/c;->p()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/channels/c;->f()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->K()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/d;->c()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lkotlinx/coroutines/channels/b$a;->f(Lkotlinx/coroutines/channels/i;IJLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/d;->c()V

    iput-object v0, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unreachable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lkotlinx/coroutines/internal/d0;I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/internal/d0;I)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->c:Lw8/l;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkotlinx/coroutines/internal/y;->a(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Lw8/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/c;->s(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;)Z

    move-result p0

    return p0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->b:Lkotlinx/coroutines/j;

    invoke-static {}, Lkotlinx/coroutines/channels/c;->x()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->B()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/c;->k()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/channels/c;->k()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/c;->x()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/b$a;->c:Lkotlinx/coroutines/channels/b;

    invoke-static {p0}, Lkotlinx/coroutines/channels/b;->d(Lkotlinx/coroutines/channels/b;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/internal/f0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

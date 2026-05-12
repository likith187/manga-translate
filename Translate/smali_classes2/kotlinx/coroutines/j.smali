.class public Lkotlinx/coroutines/j;
.super Lkotlinx/coroutines/m0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/i;
.implements Lkotlin/coroutines/jvm/internal/e;
.implements Lkotlinx/coroutines/e2;


# static fields
.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private final f:Lkotlin/coroutines/d;

.field private final h:Lkotlin/coroutines/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Lkotlinx/coroutines/j;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/j;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/j;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/j;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/d;I)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/m0;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/j;->h:Lkotlin/coroutines/g;

    const p1, 0x1fffffff

    iput p1, p0, Lkotlinx/coroutines/j;->_decisionAndIndex$volatile:I

    sget-object p1, Lkotlinx/coroutines/d;->INSTANCE:Lkotlinx/coroutines/d;

    iput-object p1, p0, Lkotlinx/coroutines/j;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method private static final synthetic A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic B()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final E()Lkotlinx/coroutines/p0;
    .locals 7

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/f1;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Lkotlinx/coroutines/n;

    invoke-direct {v4, p0}, Lkotlinx/coroutines/n;-><init>(Lkotlinx/coroutines/j;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j1;->h(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;ILjava/lang/Object;)Lkotlinx/coroutines/p0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/j;->B()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final F(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, Lkotlinx/coroutines/d;

    if-eqz v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, v0, v11, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    instance-of v3, v11, Lkotlinx/coroutines/h;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v3, v11, Lkotlinx/coroutines/internal/d0;

    :goto_1
    if-eqz v3, :cond_3

    invoke-direct {v0, v1, v11}, Lkotlinx/coroutines/j;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v3, v11, Lkotlinx/coroutines/t;

    if-eqz v3, :cond_9

    move-object v2, v11

    check-cast v2, Lkotlinx/coroutines/t;

    invoke-virtual {v2}, Lkotlinx/coroutines/t;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {v0, v1, v11}, Lkotlinx/coroutines/j;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    instance-of v3, v11, Lkotlinx/coroutines/m;

    if-eqz v3, :cond_8

    instance-of v3, v11, Lkotlinx/coroutines/t;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    iget-object v4, v2, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    :cond_6
    instance-of v2, v1, Lkotlinx/coroutines/h;

    if-eqz v2, :cond_7

    check-cast v1, Lkotlinx/coroutines/h;

    invoke-virtual {v0, v1, v4}, Lkotlinx/coroutines/j;->n(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/coroutines/internal/d0;

    invoke-direct {v0, v1, v4}, Lkotlinx/coroutines/j;->p(Lkotlinx/coroutines/internal/d0;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    instance-of v3, v11, Lkotlinx/coroutines/s;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_d

    move-object v12, v11

    check-cast v12, Lkotlinx/coroutines/s;

    iget-object v3, v12, Lkotlinx/coroutines/s;->b:Lkotlinx/coroutines/h;

    if-eqz v3, :cond_a

    invoke-direct {v0, v1, v11}, Lkotlinx/coroutines/j;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    instance-of v3, v1, Lkotlinx/coroutines/internal/d0;

    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Lkotlinx/coroutines/h;

    invoke-virtual {v12}, Lkotlinx/coroutines/s;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, v12, Lkotlinx/coroutines/s;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v14, v1}, Lkotlinx/coroutines/j;->n(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/16 v18, 0x1d

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lkotlinx/coroutines/s;->b(Lkotlinx/coroutines/s;Ljava/lang/Object;Lkotlinx/coroutines/h;Lw8/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/s;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_d
    instance-of v3, v1, Lkotlinx/coroutines/internal/d0;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/h;

    new-instance v12, Lkotlinx/coroutines/s;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Lkotlinx/coroutines/s;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lw8/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, v0, v11, v12}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method private final I()Z
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-static {v0}, Lkotlinx/coroutines/n0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final J(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final O(Ljava/lang/Object;ILw8/l;)V
    .locals 9

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/s1;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/s1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/j;->Q(Lkotlinx/coroutines/s1;Ljava/lang/Object;ILw8/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/j;->t()V

    invoke-direct {p0, p2}, Lkotlinx/coroutines/j;->u(I)V

    return-void

    :cond_1
    instance-of p2, v1, Lkotlinx/coroutines/m;

    if-eqz p2, :cond_3

    check-cast v1, Lkotlinx/coroutines/m;

    invoke-virtual {v1}, Lkotlinx/coroutines/m;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/j;->o(Lw8/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->m(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method static synthetic P(Lkotlinx/coroutines/j;Ljava/lang/Object;ILw8/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/j;->O(Ljava/lang/Object;ILw8/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Q(Lkotlinx/coroutines/s1;Ljava/lang/Object;ILw8/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of p0, p2, Lkotlinx/coroutines/t;

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3}, Lkotlinx/coroutines/n0;->b(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    instance-of p0, p1, Lkotlinx/coroutines/h;

    if-nez p0, :cond_2

    if-eqz p5, :cond_4

    :cond_2
    new-instance p0, Lkotlinx/coroutines/s;

    instance-of p3, p1, Lkotlinx/coroutines/h;

    if-eqz p3, :cond_3

    check-cast p1, Lkotlinx/coroutines/h;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/s;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lw8/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, p0

    :cond_4
    :goto_2
    return-object p2
.end method

.method private final R()Z
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method private final S(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Lkotlinx/coroutines/internal/g0;
    .locals 9

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/s1;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/s1;

    iget v6, p0, Lkotlinx/coroutines/m0;->c:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lkotlinx/coroutines/j;->Q(Lkotlinx/coroutines/s1;Ljava/lang/Object;ILw8/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/j;->t()V

    sget-object p0, Lkotlinx/coroutines/k;->a:Lkotlinx/coroutines/internal/g0;

    return-object p0

    :cond_1
    instance-of p0, v1, Lkotlinx/coroutines/s;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    check-cast v1, Lkotlinx/coroutines/s;

    iget-object p0, v1, Lkotlinx/coroutines/s;->d:Ljava/lang/Object;

    if-ne p0, p2, :cond_2

    sget-object p1, Lkotlinx/coroutines/k;->a:Lkotlinx/coroutines/internal/g0;

    :cond_2
    return-object p1
.end method

.method private final T()Z
    .locals 5

    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final m(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final p(Lkotlinx/coroutines/internal/d0;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lkotlinx/coroutines/internal/d0;->s(ILjava/lang/Throwable;Lkotlin/coroutines/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final r(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/j;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j;->r(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private final t()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/j;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->s()V

    :cond_0
    return-void
.end method

.method private final u(I)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/j;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/n0;->a(Lkotlinx/coroutines/m0;I)V

    return-void
.end method

.method private final w()Lkotlinx/coroutines/p0;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/j;->B()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/p0;

    return-object p0
.end method

.method private final z()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->y()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/s1;

    if-eqz v0, :cond_0

    const-string p0, "Active"

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lkotlinx/coroutines/m;

    if-eqz p0, :cond_1

    const-string p0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string p0, "Completed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public D()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/j;->E()Lkotlinx/coroutines/p0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/p0;->a()V

    invoke-static {}, Lkotlinx/coroutines/j;->B()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final G(Lkotlinx/coroutines/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public H()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->y()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/s1;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected K()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final L(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->r(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->q(Ljava/lang/Throwable;)Z

    invoke-direct {p0}, Lkotlinx/coroutines/j;->t()V

    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/j;->t(Lkotlinx/coroutines/i;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/j;->s()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j;->q(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final N()Z
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/s;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/s;

    iget-object v0, v0, Lkotlinx/coroutines/s;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->s()V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const v1, 0x1fffffff

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/d;->INSTANCE:Lkotlinx/coroutines/d;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/j;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/internal/j;->f:Lkotlinx/coroutines/y;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/m0;->c:I

    goto :goto_1

    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->P(Lkotlinx/coroutines/j;Ljava/lang/Object;ILw8/l;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lkotlinx/coroutines/internal/d0;I)V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/j;->A()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->F(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invokeOnCancellation should be called at most once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Lkotlinx/coroutines/s1;

    if-nez v2, :cond_4

    instance-of v2, v10, Lkotlinx/coroutines/t;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    instance-of v2, v10, Lkotlinx/coroutines/s;

    if-eqz v2, :cond_3

    move-object v2, v10

    check-cast v2, Lkotlinx/coroutines/s;

    invoke-virtual {v2}, Lkotlinx/coroutines/s;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, Lkotlinx/coroutines/s;->b(Lkotlinx/coroutines/s;Ljava/lang/Object;Lkotlinx/coroutines/h;Lw8/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/s;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, v0, v10, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v11}, Lkotlinx/coroutines/s;->d(Lkotlinx/coroutines/j;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v11, p2

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v12

    new-instance v13, Lkotlinx/coroutines/s;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lkotlinx/coroutines/s;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/h;Lw8/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v12, v0, v10, v13}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/j;->S(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Lkotlinx/coroutines/internal/g0;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Object;Lw8/l;)V
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/j;->O(Ljava/lang/Object;ILw8/l;)V

    return-void
.end method

.method public f(Lw8/l;)V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/h$a;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/h$a;-><init>(Lw8/l;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/l;->c(Lkotlinx/coroutines/i;Lkotlinx/coroutines/h;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->u(I)V

    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/j;->h:Lkotlin/coroutines/g;

    return-object p0
.end method

.method public final h()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lkotlinx/coroutines/m0;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/s;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/s;

    iget-object p1, p1, Lkotlinx/coroutines/s;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public l()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->y()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Lkotlinx/coroutines/h;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final o(Lw8/l;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/s1;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, Lkotlinx/coroutines/m;

    instance-of v4, v1, Lkotlinx/coroutines/h;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    instance-of v4, v1, Lkotlinx/coroutines/internal/d0;

    if-eqz v4, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    invoke-direct {v2, p0, p1, v3}, Lkotlinx/coroutines/m;-><init>(Lkotlin/coroutines/d;Ljava/lang/Throwable;Z)V

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/s1;

    instance-of v2, v0, Lkotlinx/coroutines/h;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlinx/coroutines/h;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/j;->n(Lkotlinx/coroutines/h;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    instance-of v0, v0, Lkotlinx/coroutines/internal/d0;

    if-eqz v0, :cond_5

    check-cast v1, Lkotlinx/coroutines/internal/d0;

    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/j;->p(Lkotlinx/coroutines/internal/d0;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/j;->t()V

    iget p1, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/j;->u(I)V

    return v5
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, Lkotlinx/coroutines/w;->b(Ljava/lang/Object;Lkotlinx/coroutines/i;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/m0;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->P(Lkotlinx/coroutines/j;Ljava/lang/Object;ILw8/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/j;->w()Lkotlinx/coroutines/p0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/p0;->a()V

    invoke-static {}, Lkotlinx/coroutines/j;->B()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/r1;->INSTANCE:Lkotlinx/coroutines/r1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/j;->f:Lkotlin/coroutines/d;

    invoke-static {v1}, Lkotlinx/coroutines/g0;->c(Lkotlin/coroutines/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/j;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Lkotlinx/coroutines/f1;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Lkotlinx/coroutines/f1;->N()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final x()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lkotlinx/coroutines/j;->I()Z

    move-result v0

    invoke-direct {p0}, Lkotlinx/coroutines/j;->T()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/j;->w()Lkotlinx/coroutines/p0;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/j;->E()Lkotlinx/coroutines/p0;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->M()V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->M()V

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/j;->y()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-nez v1, :cond_6

    iget v1, p0, Lkotlinx/coroutines/m0;->c:I

    invoke-static {v1}, Lkotlinx/coroutines/n0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/f1;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/f1;->N()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/j;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast v0, Lkotlinx/coroutines/t;

    iget-object p0, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public final y()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/j;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public Lkotlinx/coroutines/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/r$a;
    }
.end annotation


# static fields
.field private static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _prev$volatile:Ljava/lang/Object;

.field private volatile synthetic _removedRef$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next$volatile"

    const-class v1, Lkotlinx/coroutines/internal/r;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/r;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/r;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lkotlinx/coroutines/internal/r;->_next$volatile:Ljava/lang/Object;

    iput-object p0, p0, Lkotlinx/coroutines/internal/r;->_prev$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r;->j(Lkotlinx/coroutines/internal/r;)V

    return-void
.end method

.method public static final synthetic f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private final h(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;
    .locals 7

    :goto_0
    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    move-object v3, v1

    :goto_2
    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_2

    if-ne v0, v2, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->q()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-ne v4, p1, :cond_4

    return-object v2

    :cond_4
    instance-of v5, v4, Lkotlinx/coroutines/internal/z;

    if-eqz v5, :cond_5

    check-cast v4, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Lkotlinx/coroutines/internal/a0;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    check-cast v4, Lkotlinx/coroutines/internal/a0;

    iget-object v4, v4, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    invoke-static {v5, v3, v2, v4}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v3

    goto :goto_1

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/r;

    goto :goto_2

    :cond_8
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/r;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2
.end method

.method private final i(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/internal/r;
    .locals 0

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->q()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/internal/r;

    goto :goto_0
.end method

.method private final j(Lkotlinx/coroutines/internal/r;)V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    invoke-static {v2, p1, v1, p0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/r;->h(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    :cond_2
    return-void
.end method

.method private static final synthetic n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/r;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/r;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/r;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final t()Lkotlinx/coroutines/internal/a0;
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/internal/r;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/a0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/a0;-><init>(Lkotlinx/coroutines/internal/r;)V

    invoke-static {}, Lkotlinx/coroutines/internal/r;->p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final g(Lkotlinx/coroutines/internal/r;)Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-static {v0, p0, p0, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/r;->j(Lkotlinx/coroutines/internal/r;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/z;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final l()Lkotlinx/coroutines/internal/r;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/internal/a0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    :cond_2
    return-object v0
.end method

.method public final m()Lkotlinx/coroutines/internal/r;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/r;->h(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/r;->i(Lkotlinx/coroutines/internal/r;)Lkotlinx/coroutines/internal/r;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public q()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/internal/a0;

    return p0
.end method

.method public r()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s()Lkotlinx/coroutines/internal/r;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/internal/a0;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/a0;

    iget-object p0, v0, Lkotlinx/coroutines/internal/a0;->a:Lkotlinx/coroutines/internal/r;

    return-object p0

    :cond_1
    if-ne v0, p0, :cond_2

    check-cast v0, Lkotlinx/coroutines/internal/r;

    return-object v0

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/r;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/a0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/r;->h(Lkotlinx/coroutines/internal/z;)Lkotlinx/coroutines/internal/r;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/r$b;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/r$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r$a;)I
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/internal/r;->o()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p3, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    invoke-static {}, Lkotlinx/coroutines/internal/r;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

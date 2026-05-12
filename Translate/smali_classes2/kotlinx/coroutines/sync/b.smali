.class public Lkotlinx/coroutines/sync/b;
.super Lkotlinx/coroutines/sync/d;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/sync/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/b$a;
    }
.end annotation


# static fields
.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final h:Lw8/q;

.field private volatile synthetic owner$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "owner$volatile"

    const-class v2, Lkotlinx/coroutines/sync/b;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/sync/d;-><init>(II)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/c;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/sync/b;->owner$volatile:Ljava/lang/Object;

    new-instance p1, Lkotlinx/coroutines/sync/b$b;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/sync/b$b;-><init>(Lkotlinx/coroutines/sync/b;)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/b;->h:Lw8/q;

    return-void
.end method

.method public static final synthetic q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final s(Ljava/lang/Object;)I
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/b;->t()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/c;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method static synthetic u(Lkotlinx/coroutines/sync/b;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/b;->w(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/b;->v(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method private final v(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/l;->b(Lkotlin/coroutines/d;)Lkotlinx/coroutines/j;

    move-result-object v0

    :try_start_0
    new-instance v1, Lkotlinx/coroutines/sync/b$a;

    invoke-direct {v1, p0, v0, p1}, Lkotlinx/coroutines/sync/b$a;-><init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/j;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/sync/d;->c(Lkotlinx/coroutines/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->x()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/coroutines/j;->M()V

    throw p0
.end method

.method private final x(Ljava/lang/Object;)I
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/b;->s(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v0, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/b;->u(Lkotlinx/coroutines/sync/b;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/b;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/c;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This mutex is locked by "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/sync/c;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/d;->m()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This mutex is not locked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/d;->g()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mutex@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/b;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lkotlinx/coroutines/sync/b;->r()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/b;->x(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This mutex is already locked by the specified owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

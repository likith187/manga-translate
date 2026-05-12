.class public Lt9/c;
.super Lt9/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/c$a;,
        Lt9/c$b;
    }
.end annotation


# static fields
.field public static final i:Lt9/c$a;

.field private static final j:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final k:Ljava/util/concurrent/locks/Condition;

.field private static final l:J

.field private static final m:J

.field private static n:Lt9/c;


# instance fields
.field private f:Z

.field private g:Lt9/c;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt9/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt9/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt9/c;->i:Lt9/c$a;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lt9/c;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    const-string v1, "newCondition(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lt9/c;->k:Ljava/util/concurrent/locks/Condition;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lt9/c;->l:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lt9/c;->m:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt9/b0;-><init>()V

    return-void
.end method

.method public static final synthetic i()Ljava/util/concurrent/locks/Condition;
    .locals 1

    sget-object v0, Lt9/c;->k:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic j()Lt9/c;
    .locals 1

    sget-object v0, Lt9/c;->n:Lt9/c;

    return-object v0
.end method

.method public static final synthetic k()J
    .locals 2

    sget-wide v0, Lt9/c;->l:J

    return-wide v0
.end method

.method public static final synthetic l()J
    .locals 2

    sget-wide v0, Lt9/c;->m:J

    return-wide v0
.end method

.method public static final synthetic m(Lt9/c;)Z
    .locals 0

    iget-boolean p0, p0, Lt9/c;->f:Z

    return p0
.end method

.method public static final synthetic n()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lt9/c;->j:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic o(Lt9/c;)Lt9/c;
    .locals 0

    iget-object p0, p0, Lt9/c;->g:Lt9/c;

    return-object p0
.end method

.method public static final synthetic q(Lt9/c;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lt9/c;->y(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic r(Lt9/c;)V
    .locals 0

    sput-object p0, Lt9/c;->n:Lt9/c;

    return-void
.end method

.method public static final synthetic s(Lt9/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lt9/c;->f:Z

    return-void
.end method

.method public static final synthetic t(Lt9/c;Lt9/c;)V
    .locals 0

    iput-object p1, p0, Lt9/c;->g:Lt9/c;

    return-void
.end method

.method public static final synthetic u(Lt9/c;J)V
    .locals 0

    iput-wide p1, p0, Lt9/c;->h:J

    return-void
.end method

.method private final y(J)J
    .locals 2

    iget-wide v0, p0, Lt9/c;->h:J

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final A(Lt9/a0;)Lt9/a0;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt9/c$d;

    invoke-direct {v0, p0, p1}, Lt9/c$d;-><init>(Lt9/c;Lt9/a0;)V

    return-object v0
.end method

.method protected B()V
    .locals 0

    return-void
.end method

.method public final p(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-virtual {p0, p1}, Lt9/c;->x(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final v()V
    .locals 5

    invoke-virtual {p0}, Lt9/b0;->h()J

    move-result-wide v0

    invoke-virtual {p0}, Lt9/b0;->e()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v3, Lt9/c;->i:Lt9/c$a;

    invoke-static {v3, p0, v0, v1, v2}, Lt9/c$a;->b(Lt9/c$a;Lt9/c;JZ)V

    return-void
.end method

.method public final w()Z
    .locals 1

    sget-object v0, Lt9/c;->i:Lt9/c$a;

    invoke-static {v0, p0}, Lt9/c$a;->a(Lt9/c$a;Lt9/c;)Z

    move-result p0

    return p0
.end method

.method protected x(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public final z(Lt9/y;)Lt9/y;
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt9/c$c;

    invoke-direct {v0, p0, p1}, Lt9/c$c;-><init>(Lt9/c;Lt9/y;)V

    return-object v0
.end method

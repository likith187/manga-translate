.class public final Lo9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/f$a;,
        Lo9/f$b;,
        Lo9/f$c;,
        Lo9/f$d;
    }
.end annotation


# static fields
.field public static final F:Lo9/f$b;

.field private static final G:Lo9/m;


# instance fields
.field private A:J

.field private final B:Ljava/net/Socket;

.field private final C:Lo9/j;

.field private final D:Lo9/f$d;

.field private final E:Ljava/util/Set;

.field private final a:Z

.field private final b:Lo9/f$c;

.field private final c:Ljava/util/Map;

.field private final f:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private final k:Ll9/e;

.field private final l:Ll9/d;

.field private final m:Ll9/d;

.field private final n:Ll9/d;

.field private final o:Lo9/l;

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private final v:Lo9/m;

.field private w:Lo9/m;

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo9/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo9/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo9/f;->F:Lo9/f$b;

    new-instance v0, Lo9/m;

    invoke-direct {v0}, Lo9/m;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lo9/m;->h(II)Lo9/m;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lo9/m;->h(II)Lo9/m;

    sput-object v0, Lo9/f;->G:Lo9/m;

    return-void
.end method

.method public constructor <init>(Lo9/f$a;)V
    .locals 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lo9/f$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lo9/f;->a:Z

    invoke-virtual {p1}, Lo9/f$a;->d()Lo9/f$c;

    move-result-object v1

    iput-object v1, p0, Lo9/f;->b:Lo9/f$c;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo9/f$a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lo9/f$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lo9/f;->i:I

    invoke-virtual {p1}, Lo9/f$a;->j()Ll9/e;

    move-result-object v2

    iput-object v2, p0, Lo9/f;->k:Ll9/e;

    invoke-virtual {v2}, Ll9/e;->i()Ll9/d;

    move-result-object v3

    iput-object v3, p0, Lo9/f;->l:Ll9/d;

    invoke-virtual {v2}, Ll9/e;->i()Ll9/d;

    move-result-object v4

    iput-object v4, p0, Lo9/f;->m:Ll9/d;

    invoke-virtual {v2}, Ll9/e;->i()Ll9/d;

    move-result-object v2

    iput-object v2, p0, Lo9/f;->n:Ll9/d;

    invoke-virtual {p1}, Lo9/f$a;->f()Lo9/l;

    move-result-object v2

    iput-object v2, p0, Lo9/f;->o:Lo9/l;

    new-instance v2, Lo9/m;

    invoke-direct {v2}, Lo9/m;-><init>()V

    invoke-virtual {p1}, Lo9/f$a;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    const/high16 v5, 0x1000000

    invoke-virtual {v2, v4, v5}, Lo9/m;->h(II)Lo9/m;

    :cond_1
    iput-object v2, p0, Lo9/f;->v:Lo9/m;

    sget-object v2, Lo9/f;->G:Lo9/m;

    iput-object v2, p0, Lo9/f;->w:Lo9/m;

    invoke-virtual {v2}, Lo9/m;->c()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lo9/f;->A:J

    invoke-virtual {p1}, Lo9/f$a;->h()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lo9/f;->B:Ljava/net/Socket;

    new-instance v2, Lo9/j;

    invoke-virtual {p1}, Lo9/f$a;->g()Lt9/e;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lo9/j;-><init>(Lt9/e;Z)V

    iput-object v2, p0, Lo9/f;->C:Lo9/j;

    new-instance v2, Lo9/f$d;

    new-instance v4, Lo9/h;

    invoke-virtual {p1}, Lo9/f$a;->i()Lt9/f;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lo9/h;-><init>(Lt9/f;Z)V

    invoke-direct {v2, p0, v4}, Lo9/f$d;-><init>(Lo9/f;Lo9/h;)V

    iput-object v2, p0, Lo9/f;->D:Lo9/f$d;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo9/f;->E:Ljava/util/Set;

    invoke-virtual {p1}, Lo9/f$a;->e()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lo9/f$a;->e()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lo9/f$j;

    invoke-direct {v0, p1, p0, v4, v5}, Lo9/f$j;-><init>(Ljava/lang/String;Lo9/f;J)V

    invoke-virtual {v3, v0, v4, v5}, Ll9/d;->i(Ll9/a;J)V

    :cond_2
    return-void
.end method

.method public static final synthetic B(Lo9/f;)J
    .locals 2

    iget-wide v0, p0, Lo9/f;->p:J

    return-wide v0
.end method

.method public static final synthetic D(Lo9/f;)J
    .locals 2

    iget-wide v0, p0, Lo9/f;->q:J

    return-wide v0
.end method

.method public static final synthetic D0(Lo9/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lo9/f;->j:Z

    return-void
.end method

.method public static final synthetic E0(Lo9/f;J)V
    .locals 0

    iput-wide p1, p0, Lo9/f;->A:J

    return-void
.end method

.method public static final synthetic G(Lo9/f;)Lo9/l;
    .locals 0

    iget-object p0, p0, Lo9/f;->o:Lo9/l;

    return-object p0
.end method

.method private final G0(Ljava/io/IOException;)V
    .locals 1

    sget-object v0, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    invoke-virtual {p0, v0, v0, p1}, Lo9/f;->F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic I(Lo9/f;)Ll9/d;
    .locals 0

    iget-object p0, p0, Lo9/f;->n:Ll9/d;

    return-object p0
.end method

.method public static final synthetic N(Lo9/f;)Ll9/e;
    .locals 0

    iget-object p0, p0, Lo9/f;->k:Ll9/e;

    return-object p0
.end method

.method private final T0(ILjava/util/List;Z)Lo9/i;
    .locals 11

    const/4 v0, 0x1

    xor-int/lit8 v7, p3, 0x1

    iget-object v8, p0, Lo9/f;->C:Lo9/j;

    monitor-enter v8

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lo9/f;->i:I

    const v2, 0x3fffffff    # 1.9999999f

    if-le v1, v2, :cond_0

    sget-object v1, Lo9/b;->REFUSED_STREAM:Lo9/b;

    invoke-virtual {p0, v1}, Lo9/f;->e1(Lo9/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lo9/f;->j:Z

    if-nez v1, :cond_7

    iget v9, p0, Lo9/f;->i:I

    add-int/lit8 v1, v9, 0x2

    iput v1, p0, Lo9/f;->i:I

    new-instance v10, Lo9/i;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v9

    move-object v3, p0

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lo9/i;-><init>(ILo9/f;ZZLokhttp3/t;)V

    if-eqz p3, :cond_2

    iget-wide v1, p0, Lo9/f;->z:J

    iget-wide v3, p0, Lo9/f;->A:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    invoke-virtual {v10}, Lo9/i;->r()J

    move-result-wide v1

    invoke-virtual {v10}, Lo9/i;->q()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v10}, Lo9/i;->u()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_4

    iget-object p1, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p1, v7, v9, p2}, Lo9/j;->D(ZILjava/util/List;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    iget-boolean p3, p0, Lo9/f;->a:Z

    if-nez p3, :cond_6

    iget-object p3, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p3, p1, v9, p2}, Lo9/j;->N(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit v8

    if-eqz v0, :cond_5

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p0}, Lo9/j;->flush()V

    :cond_5
    return-object v10

    :cond_6
    :try_start_3
    const-string p0, "client streams shouldn\'t have associated stream IDs"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :try_start_4
    new-instance p1, Lo9/a;

    invoke-direct {p1}, Lo9/a;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit v8

    throw p0
.end method

.method public static final synthetic X(Lo9/f;)Ll9/d;
    .locals 0

    iget-object p0, p0, Lo9/f;->l:Ll9/d;

    return-object p0
.end method

.method public static final synthetic a0(Lo9/f;)Z
    .locals 0

    iget-boolean p0, p0, Lo9/f;->j:Z

    return p0
.end method

.method public static final synthetic b0(Lo9/f;J)V
    .locals 0

    iput-wide p1, p0, Lo9/f;->t:J

    return-void
.end method

.method public static final synthetic c(Lo9/f;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lo9/f;->G0(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic g1(Lo9/f;ZLl9/e;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Ll9/e;->INSTANCE:Ll9/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lo9/f;->f1(ZLl9/e;)V

    return-void
.end method

.method public static final synthetic i(Lo9/f;)J
    .locals 2

    iget-wide v0, p0, Lo9/f;->t:J

    return-wide v0
.end method

.method public static final synthetic k(Lo9/f;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo9/f;->E:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic q0(Lo9/f;J)V
    .locals 0

    iput-wide p1, p0, Lo9/f;->s:J

    return-void
.end method

.method public static final synthetic v()Lo9/m;
    .locals 1

    sget-object v0, Lo9/f;->G:Lo9/m;

    return-object v0
.end method

.method public static final synthetic v0(Lo9/f;J)V
    .locals 0

    iput-wide p1, p0, Lo9/f;->p:J

    return-void
.end method

.method public static final synthetic x(Lo9/f;)J
    .locals 2

    iget-wide v0, p0, Lo9/f;->s:J

    return-wide v0
.end method

.method public static final synthetic x0(Lo9/f;J)V
    .locals 0

    iput-wide p1, p0, Lo9/f;->q:J

    return-void
.end method


# virtual methods
.method public final F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lo9/f;->e1(Lo9/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lo9/i;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_1
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    check-cast p1, [Lo9/i;

    if-eqz p1, :cond_3

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lo9/i;->d(Lo9/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :try_start_3
    iget-object p1, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p1}, Lo9/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lo9/f;->B:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lo9/f;->l:Ll9/d;

    invoke-virtual {p1}, Ll9/d;->n()V

    iget-object p1, p0, Lo9/f;->m:Ll9/d;

    invoke-virtual {p1}, Ll9/d;->n()V

    iget-object p0, p0, Lo9/f;->n:Ll9/d;

    invoke-virtual {p0}, Ll9/d;->n()V

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final H0()Z
    .locals 0

    iget-boolean p0, p0, Lo9/f;->a:Z

    return p0
.end method

.method public final I0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo9/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final J0()I
    .locals 0

    iget p0, p0, Lo9/f;->h:I

    return p0
.end method

.method public final K0()Lo9/f$c;
    .locals 0

    iget-object p0, p0, Lo9/f;->b:Lo9/f$c;

    return-object p0
.end method

.method public final L0()I
    .locals 0

    iget p0, p0, Lo9/f;->i:I

    return p0
.end method

.method public final M0()Lo9/m;
    .locals 0

    iget-object p0, p0, Lo9/f;->v:Lo9/m;

    return-object p0
.end method

.method public final N0()Lo9/m;
    .locals 0

    iget-object p0, p0, Lo9/f;->w:Lo9/m;

    return-object p0
.end method

.method public final declared-synchronized O0(I)Lo9/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo9/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final P0()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lo9/f;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final Q0()J
    .locals 2

    iget-wide v0, p0, Lo9/f;->A:J

    return-wide v0
.end method

.method public final R0()Lo9/j;
    .locals 0

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    return-object p0
.end method

.method public final declared-synchronized S0(J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo9/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lo9/f;->s:J

    iget-wide v4, p0, Lo9/f;->r:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lo9/f;->u:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, p1, v2

    if-ltz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final U0(Ljava/util/List;Z)Lo9/i;
    .locals 1

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lo9/f;->T0(ILjava/util/List;Z)Lo9/i;

    move-result-object p0

    return-object p0
.end method

.method public final V0(ILt9/f;IZ)V
    .locals 9

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lt9/d;

    invoke-direct {v6}, Lt9/d;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lt9/f;->r0(J)V

    invoke-interface {p2, v6, v0, v1}, Lt9/a0;->i0(Lt9/d;J)J

    iget-object p2, p0, Lo9/f;->m:Ll9/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] onData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lo9/f$e;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lo9/f$e;-><init>(Ljava/lang/String;ZLo9/f;ILt9/d;IZ)V

    const-wide/16 p0, 0x0

    invoke-virtual {p2, v0, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public final W0(ILjava/util/List;Z)V
    .locals 10

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f;->m:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onHeaders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$f;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lo9/f$f;-><init>(Ljava/lang/String;ZLo9/f;ILjava/util/List;Z)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public final X0(ILjava/util/List;)V
    .locals 9

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo9/f;->E:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lo9/b;->PROTOCOL_ERROR:Lo9/b;

    invoke-virtual {p0, p1, p2}, Lo9/f;->m1(ILo9/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo9/f;->E:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lo9/f;->m:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$g;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lo9/f$g;-><init>(Ljava/lang/String;ZLo9/f;ILjava/util/List;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final Y0(ILo9/b;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f;->m:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$h;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lo9/f$h;-><init>(Ljava/lang/String;ZLo9/f;ILo9/b;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public final Z0(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized a1(I)Lo9/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo9/i;

    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b1()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lo9/f;->s:J

    iget-wide v2, p0, Lo9/f;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, p0, Lo9/f;->r:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo9/f;->u:J

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lo9/f;->l:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo9/f$i;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, p0}, Lo9/f$i;-><init>(Ljava/lang/String;ZLo9/f;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ll9/d;->i(Ll9/a;J)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c1(I)V
    .locals 0

    iput p1, p0, Lo9/f;->h:I

    return-void
.end method

.method public close()V
    .locals 3

    sget-object v0, Lo9/b;->NO_ERROR:Lo9/b;

    sget-object v1, Lo9/b;->CANCEL:Lo9/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo9/f;->F0(Lo9/b;Lo9/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d1(Lo9/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo9/f;->w:Lo9/m;

    return-void
.end method

.method public final e1(Lo9/b;)V
    .locals 3

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f;->C:Lo9/j;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/a0;

    invoke-direct {v1}, Lkotlin/jvm/internal/a0;-><init>()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v2, p0, Lo9/f;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lo9/f;->j:Z

    iget v2, p0, Lo9/f;->h:I

    iput v2, v1, Lkotlin/jvm/internal/a0;->element:I

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    sget-object v1, Li9/d;->a:[B

    invoke-virtual {p0, v2, p1, v1}, Lo9/j;->B(ILo9/b;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final f1(ZLl9/e;)V
    .locals 4

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p1}, Lo9/j;->i()V

    iget-object p1, p0, Lo9/f;->C:Lo9/j;

    iget-object v0, p0, Lo9/f;->v:Lo9/m;

    invoke-virtual {p1, v0}, Lo9/j;->a0(Lo9/m;)V

    iget-object p1, p0, Lo9/f;->v:Lo9/m;

    invoke-virtual {p1}, Lo9/m;->c()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lo9/f;->C:Lo9/j;

    sub-int/2addr p1, v0

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lo9/j;->b0(IJ)V

    :cond_0
    invoke-virtual {p2}, Ll9/e;->i()Ll9/d;

    move-result-object p1

    iget-object p2, p0, Lo9/f;->f:Ljava/lang/String;

    iget-object p0, p0, Lo9/f;->D:Lo9/f$d;

    new-instance v0, Ll9/c;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p0}, Ll9/c;-><init>(Ljava/lang/String;ZLw8/a;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p0}, Lo9/j;->flush()V

    return-void
.end method

.method public final declared-synchronized h1(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lo9/f;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo9/f;->x:J

    iget-wide p1, p0, Lo9/f;->y:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lo9/f;->v:Lo9/m;

    invoke-virtual {p1}, Lo9/m;->c()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo9/f;->n1(IJ)V

    iget-wide p1, p0, Lo9/f;->y:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lo9/f;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i1(IZLt9/d;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p0, p2, p1, p3, v3}, Lo9/j;->k(ZILt9/d;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lo9/f;->z:J

    iget-wide v6, p0, Lo9/f;->A:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, Lo9/f;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {v4}, Lo9/j;->G()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lo9/f;->z:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo9/f;->z:J

    sget-object v4, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lo9/f;->C:Lo9/j;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lo9/j;->k(ZILt9/d;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final j1(IZLjava/util/List;)V
    .locals 1

    const-string v0, "alternating"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p0, p2, p1, p3}, Lo9/j;->D(ZILjava/util/List;)V

    return-void
.end method

.method public final k1(ZII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {v0, p1, p2, p3}, Lo9/j;->I(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lo9/f;->G0(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final l1(ILo9/b;)V
    .locals 1

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo9/f;->C:Lo9/j;

    invoke-virtual {p0, p1, p2}, Lo9/j;->X(ILo9/b;)V

    return-void
.end method

.method public final m1(ILo9/b;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo9/f;->l:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] writeSynReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$k;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lo9/f$k;-><init>(Ljava/lang/String;ZLo9/f;ILo9/b;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

.method public final n1(IJ)V
    .locals 10

    iget-object v0, p0, Lo9/f;->l:Ll9/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo9/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] windowUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lo9/f$l;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v6, p0

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v3 .. v9}, Lo9/f$l;-><init>(Ljava/lang/String;ZLo9/f;IJ)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method

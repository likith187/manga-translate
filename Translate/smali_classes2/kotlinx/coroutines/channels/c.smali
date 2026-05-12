.class public abstract Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/channels/i;

.field public static final b:I

.field private static final c:I

.field public static final d:Lkotlinx/coroutines/internal/g0;

.field private static final e:Lkotlinx/coroutines/internal/g0;

.field private static final f:Lkotlinx/coroutines/internal/g0;

.field private static final g:Lkotlinx/coroutines/internal/g0;

.field private static final h:Lkotlinx/coroutines/internal/g0;

.field private static final i:Lkotlinx/coroutines/internal/g0;

.field private static final j:Lkotlinx/coroutines/internal/g0;

.field private static final k:Lkotlinx/coroutines/internal/g0;

.field private static final l:Lkotlinx/coroutines/internal/g0;

.field private static final m:Lkotlinx/coroutines/internal/g0;

.field private static final n:Lkotlinx/coroutines/internal/g0;

.field private static final o:Lkotlinx/coroutines/internal/g0;

.field private static final p:Lkotlinx/coroutines/internal/g0;

.field private static final q:Lkotlinx/coroutines/internal/g0;

.field private static final r:Lkotlinx/coroutines/internal/g0;

.field private static final s:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lkotlinx/coroutines/channels/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/i;-><init>(JLkotlinx/coroutines/channels/i;Lkotlinx/coroutines/channels/b;I)V

    sput-object v6, Lkotlinx/coroutines/channels/c;->a:Lkotlinx/coroutines/channels/i;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/c;->b:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/c;->c:I

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->d:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->e:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->f:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->g:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->h:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->i:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->j:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->k:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->l:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->m:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->n:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->o:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->p:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->q:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->r:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/c;->s:Lkotlinx/coroutines/internal/g0;

    return-void
.end method

.method static synthetic A(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->z(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->t(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->u(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->v(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->i:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Lkotlinx/coroutines/channels/c;->c:I

    return v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->o:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->k:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic h()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->j:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic i()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->e:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic j()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->s:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic k()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->p:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic l()Lkotlinx/coroutines/channels/i;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->a:Lkotlinx/coroutines/channels/i;

    return-object v0
.end method

.method public static final synthetic m()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->h:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic n()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->g:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic o()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->f:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic p()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->m:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic q()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->n:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic r(I)J
    .locals 2

    invoke-static {p0}, Lkotlinx/coroutines/channels/c;->y(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic s(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->z(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;)Z

    move-result p0

    return p0
.end method

.method private static final t(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final u(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final v(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/channels/i;

    invoke-virtual {p2}, Lkotlinx/coroutines/channels/i;->y()Lkotlinx/coroutines/channels/b;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/i;-><init>(JLkotlinx/coroutines/channels/i;Lkotlinx/coroutines/channels/b;I)V

    return-object v6
.end method

.method public static final w()Lc9/g;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c$a;->INSTANCE:Lkotlinx/coroutines/channels/c$a;

    return-object v0
.end method

.method public static final x()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/c;->l:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method private static final y(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static final z(Lkotlinx/coroutines/i;Ljava/lang/Object;Lw8/l;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lkotlinx/coroutines/i;->d(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/i;->g(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

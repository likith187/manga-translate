.class public Lcom/google/android/gms/common/api/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final p:Lcom/google/android/gms/common/api/Status;

.field private static final q:Lcom/google/android/gms/common/api/Status;

.field private static final r:Ljava/lang/Object;

.field private static s:Lcom/google/android/gms/common/api/internal/e;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/google/android/gms/common/internal/TelemetryData;

.field private d:Lcom/google/android/gms/common/internal/n;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/common/a;

.field private final g:Lcom/google/android/gms/common/internal/z;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/Map;

.field private k:Lcom/google/android/gms/common/api/internal/p;

.field private final l:Ljava/util/Set;

.field private final m:Ljava/util/Set;

.field private final n:Landroid/os/Handler;

.field private volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->q:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/e;->r:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/e;->b:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    new-instance v1, Landroidx/collection/b;

    invoke-direct {v1}, Landroidx/collection/b;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/Set;

    new-instance v1, Landroidx/collection/b;

    invoke-direct {v1}, Landroidx/collection/b;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/e;->o:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    new-instance v1, Lt3/i;

    invoke-direct {v1, p2, p0}, Lt3/i;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/e;->f:Lcom/google/android/gms/common/a;

    new-instance p2, Lcom/google/android/gms/common/internal/z;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/z;-><init>(Lcom/google/android/gms/common/b;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/internal/z;

    invoke-static {p1}, Lr3/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/e;->o:Z

    :cond_0
    const/4 p0, 0x6

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/common/api/internal/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/e;->o:Z

    return p0
.end method

.method private static f(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return-object v0
.end method

.method private final g(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/internal/x;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/d;->d()Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/x;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/x;-><init>(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/d;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/x;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/x;->E()V

    return-object v0
.end method

.method private final h()Lcom/google/android/gms/common/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->d:Lcom/google/android/gms/common/internal/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->d:Lcom/google/android/gms/common/internal/n;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->d:Lcom/google/android/gms/common/internal/n;

    return-object p0
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->D0()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e;->h()Lcom/google/android/gms/common/internal/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/TelemetryData;)Lw3/i;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    :cond_2
    return-void
.end method

.method private final j(Lw3/j;ILcom/google/android/gms/common/api/d;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/d;->d()Lcom/google/android/gms/common/api/internal/b;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/g0;->b(Lcom/google/android/gms/common/api/internal/e;ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/g0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lw3/j;->a()Lw3/i;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {p3, p0}, Lcom/google/android/gms/common/api/internal/r;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, p3, p2}, Lw3/i;->a(Ljava/util/concurrent/Executor;Lw3/d;)Lw3/i;

    :cond_0
    return-void
.end method

.method static bridge synthetic l(Lcom/google/android/gms/common/api/internal/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/e;->a:J

    return-wide v0
.end method

.method static bridge synthetic m(Lcom/google/android/gms/common/api/internal/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/google/android/gms/common/api/internal/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->f:Lcom/google/android/gms/common/a;

    return-object p0
.end method

.method static bridge synthetic p()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->q:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static bridge synthetic q(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/e;->f(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic r(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/api/internal/p;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/e;
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/e;->s:Lcom/google/android/gms/common/api/internal/e;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/g;->b()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/a;->l()Lcom/google/android/gms/common/a;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/a;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/e;->s:Lcom/google/android/gms/common/api/internal/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/e;->s:Lcom/google/android/gms/common/api/internal/e;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic u(Lcom/google/android/gms/common/api/internal/e;)Lcom/google/android/gms/common/internal/z;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/internal/z;

    return-object p0
.end method

.method static bridge synthetic v()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic w(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/google/android/gms/common/api/internal/e;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/e;->b:Z

    return-void
.end method


# virtual methods
.method final A(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/api/internal/h0;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/h0;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final B(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/e;->e(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final D(Lcom/google/android/gms/common/api/d;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/p;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/p;->t()Landroidx/collection/b;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final b(Lcom/google/android/gms/common/api/internal/p;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/api/internal/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->k:Lcom/google/android/gms/common/api/internal/p;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->l:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/e;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/l;->b()Lcom/google/android/gms/common/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/l;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->g:Lcom/google/android/gms/common/internal/z;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    const v2, 0xc1fa340

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/common/internal/z;->a(Landroid/content/Context;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method final e(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->f:Lcom/google/android/gms/common/a;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/a;->v(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p0

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x0

    const-string v4, "GoogleApiManager"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown message id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/e;->b:Z

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/h0;

    iget-wide v0, p1, Lcom/google/android/gms/common/api/internal/h0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v1, p1, Lcom/google/android/gms/common/api/internal/h0;->b:I

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/h0;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    filled-new-array {p1}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e;->h()Lcom/google/android/gms/common/internal/n;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/TelemetryData;)Lw3/i;

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->E0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->D0()I

    move-result v0

    iget v2, p1, Lcom/google/android/gms/common/api/internal/h0;->b:I

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/common/api/internal/h0;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/h0;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryData;->F0(Lcom/google/android/gms/common/internal/MethodInvocation;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e;->i()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/h0;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v2, p1, Lcom/google/android/gms/common/api/internal/h0;->b:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/common/api/internal/h0;->c:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e;->i()V

    goto/16 :goto_6

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/z;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->b(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->b(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->C(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/api/internal/z;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/z;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->b(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/z;->b(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->B(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/api/internal/z;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw v6

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/x;->e()Z

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/x;->L()V

    goto/16 :goto_6

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/x;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/x;->K()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->m:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/16 :goto_6

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/x;->J()V

    goto/16 :goto_6

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/d;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/e;->g(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/internal/x;

    goto/16 :goto_6

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/c;->c(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->b()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/s;-><init>(Lcom/google/android/gms/common/api/internal/e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c;->a(Lcom/google/android/gms/common/api/internal/c$a;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->b()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/google/android/gms/common/api/internal/c;->e(Z)Z

    move-result p1

    if-nez p1, :cond_d

    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/e;->a:J

    goto/16 :goto_6

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/x;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/x;->s()I

    move-result v3

    if-ne v3, v0, :cond_6

    move-object v6, v2

    :cond_7
    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->D0()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->f:Lcom/google/android/gms/common/a;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->D0()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/a;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->E0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v7, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/google/android/gms/common/api/internal/x;->y(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v6}, Lcom/google/android/gms/common/api/internal/x;->w(Lcom/google/android/gms/common/api/internal/x;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/e;->f(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/google/android/gms/common/api/internal/x;->y(Lcom/google/android/gms/common/api/internal/x;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not find API instance "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/i0;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/i0;->c:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/d;->d()Lcom/google/android/gms/common/api/internal/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/x;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/i0;->c:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/e;->g(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/internal/x;

    move-result-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/x;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    iget v1, p1, Lcom/google/android/gms/common/api/internal/i0;->b:I

    if-eq p0, v1, :cond_b

    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/i0;->a:Lcom/google/android/gms/common/api/internal/s0;

    sget-object p1, Lcom/google/android/gms/common/api/internal/e;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/s0;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/x;->K()V

    goto :goto_6

    :cond_b
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/i0;->a:Lcom/google/android/gms/common/api/internal/s0;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/x;->F(Lcom/google/android/gms/common/api/internal/s0;)V

    goto :goto_6

    :pswitch_e
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/x;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/x;->D()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/x;->E()V

    goto :goto_3

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw v6

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v5, p1, :cond_c

    goto :goto_4

    :cond_c
    const-wide/16 v1, 0x2710

    :goto_4
    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/e;->a:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/e;->a:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_d
    :goto_6
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method final s(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/x;

    return-object p0
.end method

.method public final z(Lcom/google/android/gms/common/api/d;ILcom/google/android/gms/common/api/internal/m;Lw3/j;Lcom/google/android/gms/common/api/internal/l;)V
    .locals 1

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/m;->d()I

    move-result v0

    invoke-direct {p0, p4, v0, p1}, Lcom/google/android/gms/common/api/internal/e;->j(Lw3/j;ILcom/google/android/gms/common/api/d;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/q0;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/q0;-><init>(ILcom/google/android/gms/common/api/internal/m;Lw3/j;Lcom/google/android/gms/common/api/internal/l;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lcom/google/android/gms/common/api/internal/i0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, Lcom/google/android/gms/common/api/internal/i0;-><init>(Lcom/google/android/gms/common/api/internal/s0;ILcom/google/android/gms/common/api/d;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/e;->n:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

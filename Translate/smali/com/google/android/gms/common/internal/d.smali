.class public abstract Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$a;,
        Lcom/google/android/gms/common/internal/d$b;,
        Lcom/google/android/gms/common/internal/d$d;,
        Lcom/google/android/gms/common/internal/d$c;,
        Lcom/google/android/gms/common/internal/d$e;
    }
.end annotation


# static fields
.field public static final D:[Ljava/lang/String;

.field private static final E:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private A:Z

.field private volatile B:Lcom/google/android/gms/common/internal/zzk;

.field protected C:Ljava/util/concurrent/atomic/AtomicInteger;

.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private volatile f:Ljava/lang/String;

.field g:Lcom/google/android/gms/common/internal/f1;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Looper;

.field private final j:Lcom/google/android/gms/common/internal/g;

.field private final k:Lcom/google/android/gms/common/b;

.field final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

.field protected p:Lcom/google/android/gms/common/internal/d$c;

.field private q:Landroid/os/IInterface;

.field private final r:Ljava/util/ArrayList;

.field private s:Lcom/google/android/gms/common/internal/r0;

.field private t:I

.field private final u:Lcom/google/android/gms/common/internal/d$a;

.field private final v:Lcom/google/android/gms/common/internal/d$b;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private volatile y:Ljava/lang/String;

.field private z:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/d;->D:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzk;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->i:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/d;->k:Lcom/google/android/gms/common/b;

    new-instance p1, Lcom/google/android/gms/common/internal/o0;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/o0;-><init>(Lcom/google/android/gms/common/internal/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/d;->w:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/d;->u:Lcom/google/android/gms/common/internal/d$a;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/d;->v:Lcom/google/android/gms/common/internal/d$b;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/d;->x:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic Q(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static bridge synthetic R(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->u:Lcom/google/android/gms/common/internal/d$a;

    return-object p0
.end method

.method static bridge synthetic S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->v:Lcom/google/android/gms/common/internal/d$b;

    return-object p0
.end method

.method static bridge synthetic T(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic V(Lcom/google/android/gms/common/internal/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic W(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method static bridge synthetic X(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-void
.end method

.method static bridge synthetic Y(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void
.end method

.method static bridge synthetic Z(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->P()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/common/internal/zzk;->f:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    invoke-static {}, Lcom/google/android/gms/common/internal/l;->b()Lcom/google/android/gms/common/internal/l;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->I0()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/l;->c(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic a0(Lcom/google/android/gms/common/internal/d;I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/d;->t:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic c0(Lcom/google/android/gms/common/internal/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    return p0
.end method

.method static bridge synthetic d0(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic e0(Lcom/google/android/gms/common/internal/d;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->C()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method

.method private final f0(ILandroid/os/IInterface;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->q:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/d;->I(Landroid/os/IInterface;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_4
    iget-object v9, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/r0;

    if-eqz v9, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->c()Z

    move-result v11

    const/16 v8, 0x1081

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/internal/g;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Lcom/google/android/gms/common/internal/r0;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/r0;-><init>(Lcom/google/android/gms/common/internal/d;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/r0;

    iget p2, p0, Lcom/google/android/gms/common/internal/d;->t:I

    if-ne p2, v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->z()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->w()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->z()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1081

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/f1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->G()Z

    move-result v9

    const/4 v7, 0x0

    const/16 v8, 0x1081

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/f1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/f1;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->g()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/f1;->c()Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->u()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/common/internal/z0;

    const/16 v8, 0x1081

    invoke-direct {v7, v1, v2, v8, v5}, Lcom/google/android/gms/common/internal/z0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v7, p1, v4, v6}, Lcom/google/android/gms/common/internal/g;->e(Lcom/google/android/gms/common/internal/z0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "GmsClient"

    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to connect to service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x10

    invoke-virtual {p0, p2, v3, p1}, Lcom/google/android/gms/common/internal/d;->b0(ILandroid/os/Bundle;I)V

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/r0;

    if-eqz v8, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f1;->c()Z

    move-result v10

    const/16 v7, 0x1081

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/internal/g;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/r0;

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected abstract A()Ljava/util/Set;
.end method

.method public final B()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->p()V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->q:Landroid/os/IInterface;

    const-string v1, "Client is connected but service is null"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract C()Ljava/lang/String;
.end method

.method protected abstract D()Ljava/lang/String;
.end method

.method protected E()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms"

    return-object p0
.end method

.method public F()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzk;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzk;->f:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object p0
.end method

.method protected G()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->g()I

    move-result p0

    const v0, 0xc9e4920

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public H()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzk;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected I(Landroid/os/IInterface;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->c:J

    return-void
.end method

.method protected J(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->D0()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/d;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->e:J

    return-void
.end method

.method protected K(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/common/internal/d;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->b:J

    return-void
.end method

.method protected L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/s0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/s0;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    const/4 p2, 0x1

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->y:Ljava/lang/String;

    return-void
.end method

.method public O(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public P()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final U()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/internal/d$e;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/d$e;->a()V

    return-void
.end method

.method protected final b0(ILandroid/os/Bundle;I)V
    .locals 2

    new-instance p2, Lcom/google/android/gms/common/internal/t0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/common/internal/t0;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->y()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget-object v14, v1, Lcom/google/android/gms/common/internal/d;->y:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/common/b;->a:I

    sget-object v9, Lcom/google/android/gms/common/internal/GetServiceRequest;->r:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget v5, v1, Lcom/google/android/gms/common/internal/d;->w:I

    sget-object v13, Lcom/google/android/gms/common/internal/GetServiceRequest;->s:[Lcom/google/android/gms/common/Feature;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x1

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v14

    move/from16 v14, v18

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    iput-object v3, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->s()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->k:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/os/IBinder;

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->s()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->k:Landroid/accounts/Account;

    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->l:[Lcom/google/android/gms/common/Feature;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->t()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->m:[Lcom/google/android/gms/common/Feature;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->P()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->p:Z

    :cond_4
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v0, :cond_5

    new-instance v3, Lcom/google/android/gms/common/internal/q0;

    iget-object v5, v1, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/common/internal/q0;-><init>(Lcom/google/android/gms/common/internal/d;I)V

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :goto_3
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/google/android/gms/common/internal/d;->L(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :goto_4
    throw v0

    :goto_5
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d;->O(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->m()V

    return-void
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract g()I
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzk;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzk;->b:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/f1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f1;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to connect when checking package"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public l(Lcom/google/android/gms/common/internal/d$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->p:Lcom/google/android/gms/common/internal/d$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/p0;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/p0;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract q(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected r()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract s()Landroid/accounts/Account;
.end method

.method public t()[Lcom/google/android/gms/common/Feature;
    .locals 0

    sget-object p0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method protected abstract u()Ljava/util/concurrent/Executor;
.end method

.method public v()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final w()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    return-object p0
.end method

.method public x()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/d;->w:I

    return p0
.end method

.method protected abstract y()Landroid/os/Bundle;
.end method

.method protected z()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

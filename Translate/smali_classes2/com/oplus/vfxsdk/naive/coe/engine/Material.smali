.class public final Lcom/oplus/vfxsdk/naive/coe/engine/Material;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 3

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    const-string v1, "mLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v1, v1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-virtual {p1, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;->e(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setNativeObjectLocked(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final synthetic a(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->nativeAddPass(JJ)V

    return-void
.end method

.method public static final synthetic b(JLjava/lang/String;[Ljava/lang/Object;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->nativeSetProperty(JLjava/lang/String;[Ljava/lang/Object;J)V

    return-void
.end method

.method public static final synthetic c(JLjava/util/ArrayList;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->nativeSetPropertyBatch(JLjava/util/ArrayList;J)V

    return-void
.end method

.method private static final native nativeAddPass(JJ)V
.end method

.method public static final native nativeInit(J)J
.end method

.method private static final native nativeSetProperty(JLjava/lang/String;[Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/lang/String;",
            "[TT;J)V"
        }
    .end annotation
.end method

.method private static final native nativeSetPropertyBatch(JLjava/util/ArrayList;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry<",
            "*>;>;J)V"
        }
    .end annotation
.end method


# virtual methods
.method public final d(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)I
    .locals 7

    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    const-string v1, "mLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    invoke-static {v3, v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;->a(Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;JJ)V

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, -0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    const-string v1, "mLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckEngine()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    iget-wide v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v6, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static/range {v2 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;->c(Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;JLjava/util/ArrayList;J)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public varargs h(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    const-string p1, "paraName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    const-string v0, "mLock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_0
    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckEngine()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v6, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;->b(Lcom/oplus/vfxsdk/naive/coe/engine/Material$a;JLjava/lang/String;[Ljava/lang/Object;J)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public varargs i(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    const-string v0, "paraName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    const-string v1, "mLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckEngine()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/ParameterEntry;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public j(Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;I)V
    .locals 1

    const-string v0, "renderTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->e(Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;)V

    :cond_0
    return-void
.end method

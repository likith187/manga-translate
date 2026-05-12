.class public abstract Lx1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/b$a;
    }
.end annotation


# static fields
.field public static final d:Lx1/b$a;


# instance fields
.field private final a:Ljava/util/Queue;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx1/b;->d:Lx1/b$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lx1/b;->a:Ljava/util/Queue;

    const/high16 v0, 0x10000

    iput v0, p0, Lx1/b;->b:I

    const/16 v0, 0x20

    iput v0, p0, Lx1/b;->c:I

    if-lez p1, :cond_0

    iput p1, p0, Lx1/b;->b:I

    const/high16 v0, 0x200000

    div-int/2addr v0, p1

    iput v0, p0, Lx1/b;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lx1/b;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lx1/b;->a:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx1/b;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lx1/b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    iget v0, p0, Lx1/b;->b:I

    invoke-virtual {p0, v0}, Lx1/b;->d(I)Ljava/lang/Object;

    move-result-object v1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ByteArrayPool"

    const-string v2, "Created temp bytes"

    invoke-virtual {p0, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected abstract c(Ljava/lang/Object;)I
.end method

.method protected abstract d(I)Ljava/lang/Object;
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lx1/b;->c(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lx1/b;->b:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lx1/b;->a:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lx1/b;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, p0, Lx1/b;->c:I

    if-ge v2, v3, :cond_2

    iget-object p0, p0, Lx1/b;->a:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1

    throw p0
.end method

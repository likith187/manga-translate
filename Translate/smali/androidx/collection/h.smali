.class public Landroidx/collection/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final lock:Lk/b;

.field private final map:Lk/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/c;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/collection/h;->maxSize:I

    if-lez p1, :cond_0

    new-instance p1, Lk/c;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p1, v0, v1}, Lk/c;-><init>(IF)V

    iput-object p1, p0, Landroidx/collection/h;->map:Lk/c;

    new-instance p1, Lk/b;

    invoke-direct {p1}, Lk/b;-><init>()V

    iput-object p1, p0, Landroidx/collection/h;->lock:Lk/b;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/collection/h;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createCount()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "oldValue"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final evictAll()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/h;->trimToSize(I)V

    return-void
.end method

.method public final evictionCount()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1, p1}, Lk/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, p0, Landroidx/collection/h;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/h;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/collection/h;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/h;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, p1}, Landroidx/collection/h;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v1

    :try_start_2
    iget v2, p0, Landroidx/collection/h;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/h;->createCount:I

    iget-object v2, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v2, p1, v0}, Lk/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v3, p1, v2}, Lk/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    iget v3, p0, Landroidx/collection/h;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/h;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/h;->size:I

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v1

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroidx/collection/h;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    iget p1, p0, Landroidx/collection/h;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/h;->trimToSize(I)V

    :goto_1
    return-object v0

    :goto_2
    monitor-exit v1

    throw p0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final hitCount()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final maxSize()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final missCount()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/collection/h;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/h;->putCount:I

    iget v1, p0, Landroidx/collection/h;->size:I

    invoke-direct {p0, p1, p2}, Landroidx/collection/h;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/h;->size:I

    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1, p1, p2}, Lk/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Landroidx/collection/h;->size:I

    invoke-direct {p0, p1, v1}, Landroidx/collection/h;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/h;->size:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/collection/h;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget p1, p0, Landroidx/collection/h;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/h;->trimToSize(I)V

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final putCount()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1, p1}, Lk/c;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Landroidx/collection/h;->size:I

    invoke-direct {p0, p1, v1}, Landroidx/collection/h;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/h;->size:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/collection/h;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public resize(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroidx/collection/h;->maxSize:I

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, p1}, Landroidx/collection/h;->trimToSize(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const-string p0, "maxSize <= 0"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/collection/h;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final snapshot()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {p0}, Lk/c;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/collection/h;->hitCount:I

    iget v2, p0, Landroidx/collection/h;->missCount:I

    add-int/2addr v2, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LruCache[maxSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/h;->maxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/h;->hitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",misses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/collection/h;->missCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",hitRate="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public trimToSize(I)V
    .locals 5

    :goto_0
    iget-object v0, p0, Landroidx/collection/h;->lock:Lk/b;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/collection/h;->size:I

    if-ltz v1, :cond_4

    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1}, Lk/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/collection/h;->size:I

    if-nez v1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    iget v1, p0, Landroidx/collection/h;->size:I

    if-le v1, p1, :cond_3

    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1}, Lk/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v1}, Lk/c;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/o;->R(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/collection/h;->map:Lk/c;

    invoke-virtual {v3, v2}, Lk/c;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/h;->size:I

    invoke-direct {p0, v2, v1}, Landroidx/collection/h;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/h;->size:I

    iget v3, p0, Landroidx/collection/h;->evictionCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/h;->evictionCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v2, v1, v0}, Landroidx/collection/h;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :cond_4
    :try_start_2
    const-string p0, "LruCache.sizeOf() is reporting inconsistent results!"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

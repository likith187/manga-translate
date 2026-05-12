.class public final Lm0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm0/f;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/f;

    invoke-direct {v0}, Lm0/f;-><init>()V

    iput-object v0, p0, Lm0/g;->a:Lm0/f;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lm0/g;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lm0/g;->c:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lm0/g;Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-direct {p0, p1}, Lm0/g;->f(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public static final synthetic b(Lm0/g;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lm0/g;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic c(Lm0/g;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lm0/g;->b:Ljava/util/Map;

    return-object p0
.end method

.method private final f(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lm0/g;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lm0/g;->f(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lm0/g;->a:Lm0/f;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lm0/g;->c(Lm0/g;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0, p1}, Lm0/g;->f(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lm0/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0/g;->d:Z

    iget-object v0, p0, Lm0/g;->a:Lm0/f;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lm0/g;->c(Lm0/g;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Lm0/g;->a(Lm0/g;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lm0/g;->b(Lm0/g;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Lm0/g;->a(Lm0/g;Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lm0/g;->b(Lm0/g;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/AutoCloseable;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm0/g;->a:Lm0/f;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lm0/g;->c(Lm0/g;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

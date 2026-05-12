.class public Lcom/coloros/translate/engine/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/service/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/coloros/translate/engine/service/a;->p()V

    return-void
.end method

.method static bridge synthetic a(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/coloros/translate/engine/service/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private h()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/utils/t0;->g()V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p0, La2/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyEngineMap packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranslateEngineManager"

    invoke-static {p2, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    check-cast p0, La2/a;

    invoke-interface {p0}, La2/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyEngineMap e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private o(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    invoke-static {p1}, Lcom/coloros/translate/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUidEngineMap packageName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranslateEngineManager"

    invoke-static {v0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private p()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/utils/t0;->f()V

    return-void
.end method


# virtual methods
.method public declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/coloros/translate/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58cbbb64

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    const v1, -0xbde89d4

    if-eq v0, v1, :cond_1

    const v1, 0x56282727

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TtsEngineMap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string v0, "TranslateEngineMap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "RtAsrEngineMap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/coloros/translate/engine/service/a;->h()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->j(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized k(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TranslateEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTranslateEngine type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/engine/offline/a0;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "TranslateEngineManager"

    const-string p2, "generateOfflineTranslateEngine invalid type"

    invoke-static {p1, p2}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TranslateEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateRtasrEngine type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->o(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRtasrEngine;

    if-nez v1, :cond_1

    sget-object v1, Lx1/c;->INSTANCE:Lx1/c;

    invoke-virtual {v1, p1, p2}, Lx1/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "TranslateEngineManager"

    const-string p2, "generateRtasrEngine invalid type"

    invoke-static {p1, p2}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized m(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TranslateEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTranslateEngine type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->o(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/ITranslateEngine;

    if-nez v1, :cond_1

    sget-object v1, Lcom/coloros/translate/engine/text/e;->INSTANCE:Lcom/coloros/translate/engine/text/e;

    invoke-virtual {v1, p1, p2}, Lcom/coloros/translate/engine/text/e;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "TranslateEngineManager"

    const-string p2, "generateTranslateEngine invalid type"

    invoke-static {p1, p2}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized n(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TranslateEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateTtsEngine type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/engine/service/a;->o(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/ITtsEngine;

    if-nez v1, :cond_0

    sget-object v1, Lcom/coloros/translate/engine/tts/p;->INSTANCE:Lcom/coloros/translate/engine/tts/p;

    invoke-virtual {v1, p1, p2}, Lcom/coloros/translate/engine/tts/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized q(Landroid/content/Context;Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/coloros/translate/engine/text/e;->INSTANCE:Lcom/coloros/translate/engine/text/e;

    invoke-virtual {v0, p2}, Lcom/coloros/translate/engine/text/e;->a(Lcom/coloros/translate/engine/IRegisterListener;)V

    invoke-static {p1}, Lcom/coloros/translate/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranslateEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/engine/service/a$a;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/translate/engine/service/a$a;-><init>(Lcom/coloros/translate/engine/service/a;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "TranslateEngineManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClient e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public r(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/engine/text/e;->INSTANCE:Lcom/coloros/translate/engine/text/e;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/text/e;->d(Lcom/coloros/translate/engine/IRegisterListener;)V

    return-void
.end method

.method public s(Lcom/coloros/translate/engine/IRegisterListener;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEngineAutoDestroyWhenBinderDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateEngineManager"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/service/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/coloros/translate/engine/service/a$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public t(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 2

    const-string v0, "TranslateEngineManager"

    const-string v1, "unRegisterClient"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/text/e;->INSTANCE:Lcom/coloros/translate/engine/text/e;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/engine/text/e;->c(Lcom/coloros/translate/engine/IRegisterListener;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public Lcom/coloros/translate/engine/offline/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/offline/x;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/engine/offline/x;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p2}, Lcom/coloros/translate/engine/offline/m0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_0

    const-string v0, "event_download_success"

    goto :goto_0

    :cond_0
    const-string v0, "event_download_fial"

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "language"

    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcom/coloros/translate/utils/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addDownloadDecompressStatis, success:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", languageCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OfflineDownloadManager"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private f(Lt1/a;)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/coloros/translate/engine/offline/e;->c()Lcom/coloros/translate/engine/offline/e;

    move-result-object v1

    iget-object v2, p1, Lt1/a;->r:Ljava/lang/String;

    iget-object v3, p1, Lt1/a;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/coloros/translate/engine/offline/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p1, Lt1/a;->a:J

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    new-array v5, v0, [J

    aput-wide v1, v5, v4

    invoke-virtual {v3, v5}, Lcom/coloros/translate/engine/offline/x;->n([J)V

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/translate/engine/offline/d;->o(Lt1/a;Z)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->e(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/engine/offline/x$b;

    invoke-interface {v2, p1}, Lcom/coloros/translate/engine/offline/x$b;->q(Lt1/a;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lt1/a;->r:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/coloros/translate/engine/offline/x$c;->e(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/coloros/translate/engine/offline/d;->o(Lt1/a;Z)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->e(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$b;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$b;->v(Lt1/a;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lt1/a;->r:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v4}, Lcom/coloros/translate/engine/offline/x$c;->e(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method private g(Lt1/a;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadStateChange downloadInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineDownloadManager"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/engine/offline/d;->n(Landroid/content/Context;Lt1/a;)V

    :cond_0
    iget v0, p1, Lt1/a;->g:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDownloadStateChange bad status, DownloadInfoData = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$e;

    iget-object v2, p1, Lt1/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$e;->p(Lt1/a;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-wide v2, p1, Lt1/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lt1/a;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/coloros/translate/engine/offline/x$c;->e(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$e;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$e;->b(Lt1/a;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-wide v2, p1, Lt1/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x$c;->h(Lt1/a;)V

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$e;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$e;->c(Lt1/a;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-wide v2, p1, Lt1/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$e;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$e;->g(Lt1/a;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-wide v2, p1, Lt1/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$e;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$e;->o(Lt1/a;)V

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-wide v2, p1, Lt1/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method private h(Lt1/a;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/x;->e(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/x$b;

    invoke-interface {v1, p1}, Lcom/coloros/translate/engine/offline/x$b;->e(Lt1/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lt1/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x$c;->f(Lt1/a;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lt1/a;->d:Ljava/lang/String;

    const-string v1, "\\.data"

    const-string v2, "_.data"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lt1/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lt1/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/x$c;->f(Lt1/a;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "OfflineDownloadManager"

    const-string p1, "onDownloadInserted downloadInfos is null"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/a;

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/offline/x$c;->g(Lt1/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/a;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v1}, Lcom/coloros/translate/engine/offline/x;->f(Lcom/coloros/translate/engine/offline/x;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/engine/offline/x$e;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v3}, Lcom/coloros/translate/engine/offline/x;->h(Lcom/coloros/translate/engine/offline/x;)Lcom/coloros/translate/engine/offline/d;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v4}, Lcom/coloros/translate/engine/offline/x;->d(Lcom/coloros/translate/engine/offline/x;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v0, Lt1/a;->a:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/coloros/translate/engine/offline/d;->p(Landroid/content/Context;J)V

    :cond_1
    iget-wide v3, v0, Lt1/a;->a:J

    invoke-interface {v2, v3, v4}, Lcom/coloros/translate/engine/offline/x$e;->t(J)V

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/x$c;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {v2}, Lcom/coloros/translate/engine/offline/x;->g(Lcom/coloros/translate/engine/offline/x;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    iget-wide v3, v0, Lt1/a;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "OfflineDownloadManager"

    const-string p1, "onDownloadUpdated downloadInfos is null"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/a;

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/offline/x$c;->g(Lt1/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    const-string p0, "OfflineDownloadManager"

    const-string p1, "onDownloadTimeout:"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint$Method;,
        Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint$EventId;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "146200"

.field private static final TAG:Ljava/lang/String; = "DcsTrackingPoint"

.field public static final TRANSLATION:Ljava/lang/String; = "translation"

.field private static volatile instance:Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;


# instance fields
.field private appContext:Landroid/content/Context;

.field private isInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    return-void
.end method

.method private checkInitialized()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "DcsTrackingPoint"

    const-string v1, "opus track sdk is not initialized, call init() first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    return p0
.end method

.method public static getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;
    .locals 2

    sget-object v0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->instance:Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    if-nez v0, :cond_1

    const-class v0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->instance:Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    invoke-direct {v1}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;-><init>()V

    sput-object v1, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->instance:Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->instance:Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DcsTrackingPoint"

    iget-boolean v1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->appContext:Landroid/content/Context;

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->appContext:Landroid/content/Context;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->appContext:Landroid/content/Context;

    const-string v1, "146200"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lm7/k;->f(Landroid/content/Context;Ljava/lang/String;Lm7/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    const-string p1, "init oplus track success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init oplus track failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->isInitialized:Z

    :cond_2
    :goto_2
    return-void
.end method

.method public trackBatchEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "DcsTrackingPoint"

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->appContext:Landroid/content/Context;

    const-string v3, "146200"

    const/4 v7, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lm7/k;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batch trackEvent success: category="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", event="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "batch trackEvent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DcsTrackingPoint"

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->appContext:Landroid/content/Context;

    const-string v1, "146200"

    invoke-static {p0, v1, p1, p2, p3}, Lm7/k;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trackEvent success: category="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", event="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trackEvent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public trackEventCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackEventCommon sdk\uff1a-------sessionId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", method="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", desc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DcsTrackingPoint"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "request_id"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "tracking_type"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "method"

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "code"

    invoke-interface {p0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "code_description"

    invoke-interface {p0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->getInstance()Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;

    move-result-object p2

    const-string p3, "translation"

    invoke-virtual {p2, p3, p1, p0}, Lcom/oplus/aiunit/translation/dcsTrackingPoint/DcsTrackingPoint;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

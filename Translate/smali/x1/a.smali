.class public abstract Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;


# instance fields
.field protected volatile a:Ljava/util/concurrent/CountDownLatch;

.field protected volatile b:Lcom/coloros/translate/engine/info/AsrParams;

.field protected volatile c:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lx1/a;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lx1/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract h()V
.end method

.method public setConfig(Lcom/coloros/translate/engine/info/AsrParams;)V
    .locals 2

    const-string v0, "AbsRtAsrWrapper"

    if-nez p1, :cond_0

    const-string p0, "setConfig , params is null"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "set config : ${asrParams.toString()}"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {p0}, Lx1/a;->h()V

    return-void
.end method

.method public startRecord()V
    .locals 4

    iget-object v0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    if-nez v0, :cond_0

    const-string v0, "mAsrParams = null , need wait ..."

    const-string v1, "AbsRtAsrWrapper"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lx1/a;->a:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord e = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

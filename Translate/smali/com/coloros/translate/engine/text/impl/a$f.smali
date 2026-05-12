.class public final Lcom/coloros/translate/engine/text/impl/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/impl/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/coloros/translate/engine/text/impl/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/coloros/translate/engine/text/impl/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/impl/a$f;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/impl/a$f;->b:Lcom/coloros/translate/engine/text/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "AiUnitOnlineTextTranslateClient"

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/engine/text/impl/a$f;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/impl/a$f;->b:Lcom/coloros/translate/engine/text/impl/a;

    invoke-static {p0}, Lcom/coloros/translate/engine/text/impl/a;->c(Lcom/coloros/translate/engine/text/impl/a;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/16 v3, -0x7d0

    :try_start_1
    invoke-interface {p0, v1, v2, v3}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTranslate, onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "initTranslate, onFailure error"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSuccess()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitOnlineTextTranslateClient"

    const-string v2, "initTranslate, onSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/text/impl/a$f;->b:Lcom/coloros/translate/engine/text/impl/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/translate/engine/text/impl/a;->d(Lcom/coloros/translate/engine/text/impl/a;Z)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/impl/a$f;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.class public final Lcom/coloros/translate/engine/text/impl/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/text/impl/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/engine/text/impl/a;

.field final synthetic b:Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/text/impl/a;Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/engine/text/impl/a$d;->a:Lcom/coloros/translate/engine/text/impl/a;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/impl/a$d;->b:Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/impl/a$d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/coloros/translate/engine/text/impl/a$d;->d:I

    iput-object p5, p0, Lcom/coloros/translate/engine/text/impl/a$d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/coloros/translate/engine/text/impl/a$d;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4

    const-string v0, "AiUnitOnlineTextTranslateClient"

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/engine/text/impl/a$d;->a:Lcom/coloros/translate/engine/text/impl/a;

    invoke-static {v1}, Lcom/coloros/translate/engine/text/impl/a;->c(Lcom/coloros/translate/engine/text/impl/a;)Lcom/coloros/translate/engine/ITranslateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/engine/text/impl/a$d;->b:Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->getRequestId()Ljava/lang/String;

    move-result-object p0

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const v3, 0x186be

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, -0x7d0

    :goto_1
    invoke-interface {v1, p0, v2, v3}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateTextTranslate, onFailure:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "generateTextTranslate, onFailure error"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/util/List;I)V
    .locals 11

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/impl/a$d;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateTextTranslate, requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitOnlineTextTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/engine/text/impl/a$d;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/engine/text/impl/a$d;->a:Lcom/coloros/translate/engine/text/impl/a;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/impl/a$d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/translate/engine/text/impl/a$d;->f:Ljava/lang/String;

    move-object v5, p2

    move v6, p3

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/engine/text/impl/a;->a(Lcom/coloros/translate/engine/text/impl/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/coloros/translate/engine/text/impl/a$d;->a:Lcom/coloros/translate/engine/text/impl/a;

    iget-object v6, p0, Lcom/coloros/translate/engine/text/impl/a$d;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/coloros/translate/engine/text/impl/a$d;->f:Ljava/lang/String;

    move-object v8, p2

    move v9, p3

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/coloros/translate/engine/text/impl/a;->b(Lcom/coloros/translate/engine/text/impl/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

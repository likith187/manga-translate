.class public final Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;
.super Lcom/oplus/aiunit/toolkits/IAICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/toolkits/AISettings;->startAuthorizeGuide(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;

    invoke-direct {p0}, Lcom/oplus/aiunit/toolkits/IAICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCall "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorCommunication:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onFail(I)V

    return-void

    :cond_0
    const-string v0, "ai::key::authorize_status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;

    invoke-interface {p0}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    const-string v1, "ai::key::authorize_result_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$startAuthorizeGuide$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/AuthorizeCallback;->onFail(I)V

    :goto_0
    return-void
.end method

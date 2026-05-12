.class public final Lcom/oplus/aiunit/toolkits/AISettings$requestConfigurationUpdate$extras$1$1;
.super Lcom/oplus/aiunit/toolkits/IAICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/toolkits/AISettings;->requestConfigurationUpdate(Landroid/content/Context;Lcom/oplus/aiunit/toolkits/callback/RequestCallback;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/oplus/aiunit/toolkits/callback/RequestCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/toolkits/callback/RequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/toolkits/AISettings$requestConfigurationUpdate$extras$1$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/RequestCallback;

    invoke-direct {p0}, Lcom/oplus/aiunit/toolkits/IAICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestConfigurationUpdate onCall:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$requestConfigurationUpdate$extras$1$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/RequestCallback;

    if-nez p1, :cond_0

    invoke-interface {p0, v0}, Lcom/oplus/aiunit/toolkits/callback/RequestCallback;->onResult(I)V

    goto :goto_0

    :cond_0
    const-string v1, "package::request_config_update_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/RequestCallback;->onResult(I)V

    :goto_0
    return-void
.end method

.class public final Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;
.super Lcom/oplus/aiunit/toolkits/IAICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/toolkits/AISettings;->checkUpdate(Landroid/content/Context;ZLcom/oplus/aiunit/toolkits/callback/SettingsCallback;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;

    invoke-direct {p0}, Lcom/oplus/aiunit/toolkits/IAICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCall "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AISettings"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorCommunication:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onError(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v1

    const-string v2, "package::error_code"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;

    invoke-interface {p0, v1}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onError(I)V

    return-void

    :cond_1
    const-string v0, "ai::key::settings_callback_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/oplus/aiunit/toolkits/AISettings$checkUpdate$c$1;->$callback:Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;

    if-nez v0, :cond_2

    const-string v0, "ai::key::settings_status"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onSwitch(I)V

    goto :goto_0

    :cond_2
    const-string v0, "ai::key::settings_ui_status"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;->onUI(I)V

    :goto_0
    return-void
.end method

.class public final Lcom/coloros/translate/repository/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/toolkits/callback/SettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/repository/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/a$e;->a:Lcom/coloros/translate/repository/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUpdate, code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadAiManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v2, "CONFIG_UPDATE_ERROR"

    const-string v3, "main_app"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/coloros/translate/utils/n;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/coloros/translate/repository/a$e;->a:Lcom/coloros/translate/repository/a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "privacy_aiunit_guide_error"

    invoke-interface {p0, p1}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSwitch(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configUpdate, onSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadAiManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/a$e;->a:Lcom/coloros/translate/repository/a;

    invoke-static {p0, v0}, Lcom/coloros/translate/repository/a;->a(Lcom/coloros/translate/repository/a;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v1, "CONFIG_UPDATE_SWITCH_CLOSE"

    const-string v2, "main_app"

    invoke-virtual {v0, p1, v1, v2}, Lcom/coloros/translate/utils/n;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/a$e;->a:Lcom/coloros/translate/repository/a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "privacy_aiunit_guide_switch_close"

    invoke-interface {p0, p1}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUI(I)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configUpdate, onUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadAiManager"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

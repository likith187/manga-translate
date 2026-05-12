.class public final Lcom/coloros/translate/repository/a$g;
.super Lcom/coloros/translate/repository/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/translate/repository/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    const-string p1, "registerListener"

    invoke-direct {p0, p1}, Lcom/coloros/translate/repository/a$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "DownloadAiManager"

    const-string v2, "onCancel"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v2, "CANCEL"

    const-string v3, "main_app"

    invoke-virtual {v1, v0, v2, v3}, Lcom/coloros/translate/utils/n;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "download_aiunit_cancel"

    invoke-interface {v0, v1}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->h()V

    return-void
.end method

.method public onFail(I)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail, err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadAiManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string v2, "SDK_FAIL"

    const-string v3, "main_app"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/coloros/translate/utils/n;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "download_aiunit_fail"

    invoke-interface {p1, v0}, Lcom/coloros/translate/repository/a$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->h()V

    return-void
.end method

.method public onInstall()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "DownloadAiManager"

    const-string v1, "onInstall"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(JJZ)V
    .locals 0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "DownloadAiManager"

    const-string p3, "onSuccess"

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/repository/e;->b()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p3, "main_app"

    invoke-virtual {p2, p1, p3}, Lcom/coloros/translate/utils/n;->U(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/a;->e()Lcom/coloros/translate/repository/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/translate/repository/a$b;->b()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/a$g;->b:Lcom/coloros/translate/repository/a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->h()V

    return-void
.end method

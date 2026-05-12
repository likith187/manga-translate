.class public final Lcom/coloros/translate/engine/offline/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/engine/offline/e0;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOfflinePackageInfo: errorMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OfflinePackageConfigClient"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_download_offline_info"

    invoke-static {}, Lcom/coloros/translate/engine/offline/e0;->d()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/u0;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/e0;->f(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOfflinePackageInfo: onSuccess: response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflinePackageConfigClient"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_download_offline_info"

    invoke-static {}, Lcom/coloros/translate/engine/offline/e0;->d()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/u0;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/e0;->e(Lcom/coloros/translate/engine/offline/e0;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/e0;->f(Z)V

    return-void
.end method

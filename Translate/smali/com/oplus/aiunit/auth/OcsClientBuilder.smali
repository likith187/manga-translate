.class public final Lcom/oplus/aiunit/auth/OcsClientBuilder;
.super Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder<",
        "Lcom/oplus/ocs/base/common/api/Api$Client;",
        "Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ocs/base/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/ClientSettings;Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;)Lcom/oplus/ocs/base/common/api/Api$Client;
    .locals 0

    .line 1
    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "looper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientSettings"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/auth/OcsClient;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/auth/OcsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method

.method public bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/oplus/ocs/base/common/api/Api$Client;
    .locals 0

    .line 2
    check-cast p4, Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/aiunit/auth/OcsClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/oplus/ocs/base/internal/ClientSettings;Lcom/oplus/ocs/base/common/api/Api$ApiOptions$NoOptions;)Lcom/oplus/ocs/base/common/api/Api$Client;

    move-result-object p0

    return-object p0
.end method

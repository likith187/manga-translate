.class public final Lcom/oplus/aiunit/auth/OcsClient;
.super Lcom/oplus/ocs/base/common/api/BaseClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/ocs/base/common/api/BaseClient<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/BaseClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 0

    const-string p0, "AI_CLIENT"

    return-object p0
.end method

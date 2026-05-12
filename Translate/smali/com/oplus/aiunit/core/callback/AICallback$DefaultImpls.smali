.class public final Lcom/oplus/aiunit/core/callback/AICallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/callback/AICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onDestroy(Lcom/oplus/aiunit/core/callback/AICallback;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback$DefaultImpls;->onDestroy(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

.method public static onFail(Lcom/oplus/aiunit/core/callback/AICallback;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/callback/DetectStateCallback$DefaultImpls;->onFail(Lcom/oplus/aiunit/core/callback/DetectStateCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static onServiceConnect(Lcom/oplus/aiunit/core/callback/AICallback;)V
    .locals 0

    return-void
.end method

.method public static onServiceConnectFailed(Lcom/oplus/aiunit/core/callback/AICallback;I)V
    .locals 0

    return-void
.end method

.method public static onStart(Lcom/oplus/aiunit/core/callback/AICallback;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback$DefaultImpls;->onStart(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method

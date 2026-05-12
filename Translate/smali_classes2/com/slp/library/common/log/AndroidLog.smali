.class public Lcom/slp/library/common/log/AndroidLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slp/library/common/log/SlpLogs$ISystemLog;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SLP"

    iput-object v0, p0, Lcom/slp/library/common/log/AndroidLog;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SLP"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SLP"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SLP"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SLP"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

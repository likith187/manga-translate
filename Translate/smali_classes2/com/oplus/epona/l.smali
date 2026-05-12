.class public abstract Lcom/oplus/epona/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.class public abstract Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/d$b;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lk7/d;->a:Z

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lk7/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lk7/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppPlatform.Shield"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lk7/d;->a:Z

    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Lk7/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lk7/d$b;-><init>(Lk7/d$a;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

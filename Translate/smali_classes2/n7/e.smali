.class public abstract Ln7/e;
.super Ln7/c;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln7/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordCommon: addTrackEvent exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lo7/c;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lp7/n;->c()Lp7/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lp7/n;->a(Landroid/content/Context;Lo7/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ln7/d;

    invoke-direct {p1, p0}, Ln7/d;-><init>(Ljava/lang/Throwable;)V

    const-string p0, "CommonAgent"

    invoke-static {p0, p1}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V

    :goto_0
    return-void
.end method

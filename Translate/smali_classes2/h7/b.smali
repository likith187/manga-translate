.class public abstract Lh7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Li7/a;
    .locals 8

    invoke-static {p0, p1}, Lk7/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lh7/b;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lh7/b;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x3ea

    :try_start_0
    const-string v4, ";"

    invoke-static {v0, v4}, Lk7/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v5, p0}, Lh7/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B

    move-result-object v5

    aget-object v6, v5, v3

    aget-byte v6, v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    aget-object p0, v5, v7

    new-instance v4, Li7/a;

    const/16 v5, 0x3e9

    invoke-direct {v4, p1, v5, p0, v0}, Li7/a;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object v4

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    new-instance p0, Li7/a;

    new-array v0, v3, [B

    invoke-direct {p0, p1, v1, v0, v2}, Li7/a;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check key get exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    new-instance p0, Li7/a;

    new-array v0, v3, [B

    invoke-direct {p0, p1, v1, v0, v2}, Li7/a;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object p0

    :cond_3
    :goto_1
    new-instance p0, Li7/a;

    const/16 p1, 0x3ec

    new-array v0, v3, [B

    const-string v1, ""

    invoke-direct {p0, v1, p1, v0, v2}, Li7/a;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    filled-new-array {v1}, [[B

    move-result-object v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lh7/b;->g(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Signature verify failed."

    invoke-static {p0}, Lk7/d;->d(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-array p0, v0, [B

    aput-byte v0, p0, v2

    invoke-static {p1}, Lh7/b;->d(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1}, Lh7/b;->c(Ljava/lang/String;)[B

    move-result-object p1

    filled-new-array {p0, p2, p1}, [[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Check key get exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lk7/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lk7/f;->d([B)[B

    move-result-object v0

    invoke-static {v0}, Lk7/h;->b([B)I

    move-result v0

    invoke-static {p0, v0}, Lk7/f;->b([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p0}, Lk7/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lk7/f;->d([B)[B

    move-result-object v0

    invoke-static {v0}, Lk7/h;->b([B)I

    move-result v0

    invoke-static {p0, v0}, Lk7/f;->c([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Get target application authCode is empty"

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Get target packageName is empty"

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    invoke-static {p1}, Lk7/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lk7/f;->e([B)[B

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [B

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    invoke-static {p1}, Lk7/f;->d([B)[B

    move-result-object v0

    invoke-static {v0}, Lk7/h;->b([B)I

    move-result v3

    invoke-static {p1, v3}, Lk7/f;->c([BI)[B

    move-result-object v6

    invoke-static {p1, v3}, Lk7/f;->b([BI)[B

    move-result-object v5

    invoke-static {p1, v3}, Lk7/f;->a([BI)[B

    move-result-object v7

    move-object v0, p2

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lk7/g;->e(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z

    move-result p0

    return p0
.end method

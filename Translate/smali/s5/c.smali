.class public abstract Ls5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ls5/c;->f(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lu5/a;
    .locals 3

    invoke-static {p0}, Ls5/c;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Not get data from db cause user is locked."

    invoke-static {p0}, Lw5/d;->b(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lw5/e;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->t(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->s()Lt5/a;

    move-result-object p0

    const-string v2, "APP_PLATFORM_CLIENT"

    invoke-interface {p0, v0, p1, v2, p2}, Lt5/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lt5/c;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p2, Lu5/a;

    const/16 v0, 0x3e9

    invoke-virtual {p0}, Lt5/c;->h()[B

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Lu5/a;-><init>(Ljava/lang/String;I[B)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lu5/a;
    .locals 9

    invoke-static {p0, p1}, Lw5/e;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3ec

    const-string v2, ""

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Get target packageName is empty"

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    new-instance p0, Lu5/a;

    new-array p1, v6, [B

    invoke-direct {p0, v2, v1, p1}, Lu5/a;-><init>(Ljava/lang/String;I[B)V

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lw5/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Get target application authCode is empty"

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    new-instance p0, Lu5/a;

    new-array p1, v6, [B

    invoke-direct {p0, v2, v1, p1}, Lu5/a;-><init>(Ljava/lang/String;I[B)V

    return-object p0

    :cond_1
    const/16 v7, 0x3ea

    :try_start_0
    const-string v0, ";"

    invoke-static {v4, v0}, Lw5/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, p0}, Ls5/c;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B

    move-result-object v1

    aget-object v2, v1, v6

    aget-byte v2, v2, v6

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    aget-object v8, v1, v5

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Lw5/i;->a([B)Ljava/util/Calendar;

    move-result-object v5

    move-object v0, p0

    move-object v1, v4

    move-object v2, p1

    move-object v4, v5

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Ls5/c;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Calendar;[B)V

    const-string p0, "Auth code check ok"

    invoke-static {p0}, Lw5/d;->d(Ljava/lang/String;)V

    new-instance p0, Lu5/a;

    const/16 v0, 0x3e9

    invoke-direct {p0, p1, v0, v8}, Lu5/a;-><init>(Ljava/lang/String;I[B)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signature verify failed, package : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    new-instance p0, Lu5/a;

    new-array v0, v6, [B

    invoke-direct {p0, p1, v7, v0}, Lu5/a;-><init>(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check key get exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    new-instance p0, Lu5/a;

    new-array v0, v6, [B

    invoke-direct {p0, p1, v7, v0}, Lu5/a;-><init>(Ljava/lang/String;I[B)V

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[[B
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    filled-new-array {v1}, [[B

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lw5/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lw5/f;->e([B)[B

    move-result-object v5

    new-array v7, v0, [B

    const/16 v3, 0x8

    aput-byte v3, v7, v2

    invoke-static {p1}, Lw5/f;->d([B)[B

    move-result-object v3

    invoke-static {v3}, Lw5/h;->b([B)I

    move-result v6

    invoke-static {p1, v6}, Lw5/f;->c([BI)[B

    move-result-object v11

    invoke-static {p1, v6}, Lw5/f;->b([BI)[B

    move-result-object v12

    invoke-static {p1, v6}, Lw5/f;->a([BI)[B

    move-result-object v10

    move-object v3, p2

    move-object v4, p0

    move-object v8, v12

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lw5/g;->c(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Signature verify failed."

    invoke-static {p0}, Lw5/d;->d(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-array p0, v0, [B

    aput-byte v0, p0, v2

    filled-new-array {p0, v11, v12}, [[B

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

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic f(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V
    .locals 14

    new-instance v13, Lt5/c;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v2, 0x1

    const-string v5, "APP_PLATFORM_CLIENT"

    move-object v0, v13

    move-object v1, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v12}, Lt5/c;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V

    invoke-static/range {p5 .. p5}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->t(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->s()Lt5/a;

    move-result-object v0

    invoke-interface {v0, v13}, Lt5/a;->a(Lt5/c;)V

    return-void
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Calendar;[B)V
    .locals 9

    invoke-static {p0}, Ls5/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Not save to db cause user is locked."

    invoke-static {p0}, Lw5/d;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Ls5/b;

    move-object v1, v8

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Ls5/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

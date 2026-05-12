.class public Lm7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm7/m;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lm7/m;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm7/m;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "StatisticsExceptionHand"

    new-instance v1, Lm7/i;

    invoke-direct {v1, p0}, Lm7/i;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1, v1}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    throw p0
.end method

.method private static synthetic c()Ljava/lang/String;
    .locals 1

    const-string v0, "StatisticsExceptionHandler: get the uncaughtException."

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lm7/m;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    new-instance p1, Lm7/l;

    invoke-direct {p1}, Lm7/l;-><init>()V

    const-string v0, "StatisticsExceptionHand"

    invoke-static {v0, p1}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-direct {p0, p2}, Lm7/m;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lo7/d;

    iget-object v2, p0, Lm7/m;->a:Landroid/content/Context;

    invoke-direct {p2, v2}, Lo7/d;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lo7/d;->o(I)V

    invoke-virtual {p2, v0, v1}, Lo7/d;->p(J)V

    invoke-virtual {p2, p1}, Lo7/d;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lm7/m;->a:Landroid/content/Context;

    invoke-static {p0, p2}, Ln7/f;->a(Landroid/content/Context;Lo7/d;)V

    :cond_0
    return-void
.end method

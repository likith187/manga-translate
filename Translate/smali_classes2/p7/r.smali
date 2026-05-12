.class public Lp7/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/r$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lp7/r;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lp7/r;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lp7/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp7/r;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)J
    .locals 2

    const-string p0, "AppExitTime"

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lq7/c;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "AppSessionId"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lq7/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lp7/r;
    .locals 1

    invoke-static {}, Lp7/r$b;->a()Lp7/r;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;)Z
    .locals 4

    iget-wide v0, p0, Lp7/r;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lp7/r;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lp7/r;->b:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lp7/r;->b:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide/16 p0, 0x7530

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j(Landroid/content/Context;J)V
    .locals 0

    const-string p0, "AppExitTime"

    invoke-static {p1, p0, p2, p3}, Lq7/c;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p0, "AppSessionId"

    invoke-static {p1, p0, p2}, Lq7/c;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp7/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lp7/r;->i(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lp7/r;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lp7/r;->b:J

    invoke-direct {p0, p1, v0, v1}, Lp7/r;->j(Landroid/content/Context;J)V

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lp7/r;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp7/r;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lp7/r;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lp7/r;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lp7/r;->h(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lp7/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp7/r;->a:Ljava/lang/String;

    :goto_0
    return-void
.end method

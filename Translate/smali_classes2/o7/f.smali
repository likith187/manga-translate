.class public abstract Lo7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/util/ArrayMap;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo7/f;->c:Ljava/lang/String;

    iput-object v0, p0, Lo7/f;->d:Ljava/lang/String;

    iput-object v0, p0, Lo7/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lo7/f;->f:Ljava/lang/String;

    const-string v0, "TrackEvent: context is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lo7/f;->a:Landroid/content/Context;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Lo7/f;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lo7/f;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lo7/f;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataType"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    const-string v1, "ssoid"

    invoke-static {p1}, Ls7/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {}, Lp7/r;->e()Lp7/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lp7/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statSId"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ls7/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lo7/e;

    invoke-direct {v1}, Lo7/e;-><init>()V

    const-string v2, "TrackEvent"

    invoke-static {v2, v1}, Ls7/f;->f(Ljava/lang/String;Ls7/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lo7/f;->k(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lm7/d;->e(Ljava/lang/String;)Lm7/d;

    move-result-object v0

    const-string v1, "appName"

    const-string v2, "appPackage"

    const-string v3, "appVersion"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lm7/d;->f()Lm7/b;

    move-result-object v4

    invoke-virtual {v4}, Lm7/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "headerFlag"

    invoke-virtual {p1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lm7/d;->f()Lm7/b;

    move-result-object v4

    invoke-virtual {v4}, Lm7/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lm7/d;->f()Lm7/b;

    move-result-object v3

    invoke-virtual {v3}, Lm7/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lm7/d;->f()Lm7/b;

    move-result-object p1

    invoke-virtual {p1}, Lm7/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {p1}, Ls7/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {p1}, Ls7/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {p1}, Ls7/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private static synthetic j()Ljava/lang/String;
    .locals 1

    const-string v0, "appId is empty"

    return-object v0
.end method


# virtual methods
.method b(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo7/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo7/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method public abstract g()I
.end method

.method public h()Ljava/util/Map;
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    iget-object p0, p0, Lo7/f;->b:Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lo7/f;->c:Ljava/lang/String;

    const-string v0, "appIdStr"

    invoke-virtual {p0, v0, p1}, Lo7/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo7/f;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo7/f;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "appId"

    invoke-virtual {p0, v0, p1}, Lo7/f;->b(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

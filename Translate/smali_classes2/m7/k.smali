.class public abstract Lm7/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ln7/g;

.field private static final c:Lr7/f;

.field private static volatile d:Lm7/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^[a-zA-Z0-9\\_\\-]{1,64}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lm7/k;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ln7/g;

    invoke-direct {v0}, Ln7/g;-><init>()V

    sput-object v0, Lm7/k;->b:Ln7/g;

    new-instance v0, Lr7/f$b;

    const/16 v1, 0x78

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v0, v1, v2, v3}, Lr7/f$b;-><init>(IJ)V

    invoke-virtual {v0}, Lr7/f$b;->c()Lr7/f;

    move-result-object v0

    sput-object v0, Lm7/k;->c:Lr7/f;

    return-void
.end method

.method public static synthetic a(Lo7/c;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lm7/k;->h(Lo7/c;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm7/k;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lo7/c;)V
    .locals 0

    invoke-static {p0}, Lm7/k;->i(Lo7/c;)V

    return-void
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lm7/k;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lo7/c;)V
    .locals 0

    invoke-static {p0}, Lm7/k;->j(Lo7/c;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Lm7/b;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp7/a;->a()Lp7/a;

    move-result-object v1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lp7/a;->b(Landroid/app/Application;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lm7/e;

    invoke-direct {v0}, Lm7/e;-><init>()V

    const-string v1, "OplusTrack"

    invoke-static {v1, v0}, Ls7/f;->f(Ljava/lang/String;Ls7/g;)V

    :cond_1
    invoke-static {p0, p1}, Ls7/d;->i(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lm7/d;->d(Ljava/lang/String;Landroid/content/Context;Lm7/b;)Lm7/d;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lm7/b;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ls7/f;->d(Z)V

    :cond_3
    invoke-static {p0}, Lm7/k;->p(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic g()Ljava/lang/String;
    .locals 1

    const-string v0, "AppCode is empty."

    return-object v0
.end method

.method private static synthetic h(Lo7/c;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommon logTag is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",eventID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",flagSendTo:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i(Lo7/c;)V
    .locals 1

    invoke-virtual {p0}, Lo7/f;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ln7/e;->c(Landroid/content/Context;Lo7/c;)V

    return-void
.end method

.method private static synthetic j(Lo7/c;)V
    .locals 1

    invoke-virtual {p0}, Lo7/f;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ln7/b;->d(Landroid/content/Context;Lo7/c;)V

    return-void
.end method

.method private static synthetic k()Ljava/lang/String;
    .locals 1

    const-string v0, "onError..."

    return-object v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    new-instance v0, Lo7/c;

    invoke-direct {v0, p0}, Lo7/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo7/f;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lo7/c;->r(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lo7/c;->p(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lo7/c;->q(Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lm7/k;->n(Lo7/c;I)Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    new-instance v0, Lo7/c;

    invoke-direct {v0, p0}, Lo7/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo7/c;->r(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lo7/c;->p(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lo7/c;->q(Ljava/util/Map;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lm7/k;->n(Lo7/c;I)Z

    move-result p0

    return p0
.end method

.method public static n(Lo7/c;I)Z
    .locals 4

    const-string v0, "OplusTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo7/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lm7/k;->c:Lr7/f;

    invoke-virtual {v2, v1}, Lr7/f;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lr7/d;->e()Lr7/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr7/d;->j(Lo7/c;)V

    return v2

    :cond_0
    :try_start_0
    new-instance v1, Lm7/f;

    invoke-direct {v1, p0, p1}, Lm7/f;-><init>(Lo7/c;I)V

    invoke-static {v0, v1}, Ls7/f;->e(Ljava/lang/String;Ls7/g;)V

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v1, Lm7/g;

    invoke-direct {v1, p0}, Lm7/g;-><init>(Lo7/c;)V

    invoke-static {v1}, Lr7/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    new-instance p1, Lm7/h;

    invoke-direct {p1, p0}, Lm7/h;-><init>(Lo7/c;)V

    invoke-static {p1}, Lr7/h;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v3

    :goto_1
    new-instance p1, Lm7/i;

    invoke-direct {p1, p0}, Lm7/i;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0, p1}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V

    return v2
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Z
    .locals 1

    new-instance v0, Lo7/b;

    invoke-direct {v0, p0}, Lo7/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo7/f;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lo7/c;->r(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lo7/c;->p(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lo7/b;->s(Ljava/util/List;)V

    invoke-static {v0, p5}, Lm7/k;->n(Lo7/c;I)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized p(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lm7/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "OplusTrack"

    new-instance v2, Lm7/j;

    invoke-direct {v2}, Lm7/j;-><init>()V

    invoke-static {v1, v2}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    sget-object v1, Lm7/k;->d:Lm7/m;

    if-nez v1, :cond_0

    new-instance v1, Lm7/m;

    invoke-direct {v1, p0}, Lm7/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lm7/k;->d:Lm7/m;

    sget-object p0, Lm7/k;->d:Lm7/m;

    invoke-virtual {p0}, Lm7/m;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "OplusTrack"

    new-instance v2, Lm7/i;

    invoke-direct {v2, p0}, Lm7/i;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

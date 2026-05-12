.class public Ly2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/q;


# static fields
.field private static volatile e:Ly2/s;


# instance fields
.field private final a:Lh3/a;

.field private final b:Lh3/a;

.field private final c:Ld3/e;

.field private final d:Le3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lh3/a;Lh3/a;Ld3/e;Le3/j;Le3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/r;->a:Lh3/a;

    iput-object p2, p0, Ly2/r;->b:Lh3/a;

    iput-object p3, p0, Ly2/r;->c:Ld3/e;

    iput-object p4, p0, Ly2/r;->d:Le3/j;

    invoke-virtual {p5}, Le3/n;->a()V

    return-void
.end method

.method private b(Ly2/l;)Ly2/h;
    .locals 3

    invoke-static {}, Ly2/h;->a()Ly2/h$a;

    move-result-object v0

    iget-object v1, p0, Ly2/r;->a:Lh3/a;

    invoke-interface {v1}, Lh3/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly2/h$a;->i(J)Ly2/h$a;

    move-result-object v0

    iget-object p0, p0, Ly2/r;->b:Lh3/a;

    invoke-interface {p0}, Lh3/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly2/h$a;->k(J)Ly2/h$a;

    move-result-object p0

    invoke-virtual {p1}, Ly2/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly2/h$a;->j(Ljava/lang/String;)Ly2/h$a;

    move-result-object p0

    new-instance v0, Ly2/g;

    invoke-virtual {p1}, Ly2/l;->b()Lw2/b;

    move-result-object v1

    invoke-virtual {p1}, Ly2/l;->d()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly2/g;-><init>(Lw2/b;[B)V

    invoke-virtual {p0, v0}, Ly2/h$a;->h(Ly2/g;)Ly2/h$a;

    move-result-object p0

    invoke-virtual {p1}, Ly2/l;->c()Lw2/c;

    move-result-object p1

    invoke-virtual {p1}, Lw2/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly2/h$a;->g(Ljava/lang/Integer;)Ly2/h$a;

    move-result-object p0

    invoke-virtual {p0}, Ly2/h$a;->d()Ly2/h;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ly2/r;
    .locals 2

    sget-object v0, Ly2/r;->e:Ly2/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly2/s;->i()Ly2/r;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ly2/e;)Ljava/util/Set;
    .locals 1

    instance-of v0, p0, Ly2/f;

    if-eqz v0, :cond_0

    check-cast p0, Ly2/f;

    invoke-interface {p0}, Ly2/f;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Lw2/b;->b(Ljava/lang/String;)Lw2/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Ly2/r;->e:Ly2/s;

    if-nez v0, :cond_1

    const-class v0, Ly2/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ly2/r;->e:Ly2/s;

    if-nez v1, :cond_0

    invoke-static {}, Ly2/d;->k()Ly2/s$a;

    move-result-object v1

    invoke-interface {v1, p0}, Ly2/s$a;->b(Landroid/content/Context;)Ly2/s$a;

    move-result-object p0

    invoke-interface {p0}, Ly2/s$a;->a()Ly2/s;

    move-result-object p0

    sput-object p0, Ly2/r;->e:Ly2/s;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ly2/l;Lw2/h;)V
    .locals 3

    iget-object v0, p0, Ly2/r;->c:Ld3/e;

    invoke-virtual {p1}, Ly2/l;->f()Ly2/m;

    move-result-object v1

    invoke-virtual {p1}, Ly2/l;->c()Lw2/c;

    move-result-object v2

    invoke-virtual {v2}, Lw2/c;->c()Lw2/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/m;->e(Lw2/d;)Ly2/m;

    move-result-object v1

    invoke-direct {p0, p1}, Ly2/r;->b(Ly2/l;)Ly2/h;

    move-result-object p0

    invoke-interface {v0, v1, p0, p2}, Ld3/e;->a(Ly2/m;Ly2/h;Lw2/h;)V

    return-void
.end method

.method public e()Le3/j;
    .locals 0

    iget-object p0, p0, Ly2/r;->d:Le3/j;

    return-object p0
.end method

.method public g(Ly2/e;)Lw2/g;
    .locals 4

    new-instance v0, Ly2/n;

    invoke-static {p1}, Ly2/r;->d(Ly2/e;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Ly2/m;->a()Ly2/m$a;

    move-result-object v2

    invoke-interface {p1}, Ly2/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ly2/m$a;->b(Ljava/lang/String;)Ly2/m$a;

    move-result-object v2

    invoke-interface {p1}, Ly2/e;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ly2/m$a;->c([B)Ly2/m$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/m$a;->a()Ly2/m;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Ly2/n;-><init>(Ljava/util/Set;Ly2/m;Ly2/q;)V

    return-object v0
.end method

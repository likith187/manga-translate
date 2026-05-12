.class public Ll8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll8/d$b;,
        Ll8/d$c;
    }
.end annotation


# static fields
.field private static e:Ll8/d;


# instance fields
.field private a:Ll8/d$b;

.field private b:Ljava/util/Stack;

.field private c:Ll8/d$c;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Ll8/d;->b:Ljava/util/Stack;

    new-instance v0, Ll8/d$c;

    invoke-direct {v0}, Ll8/d$c;-><init>()V

    iput-object v0, p0, Ll8/d;->c:Ll8/d$c;

    const-class v0, Ll8/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll8/d;->d:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll8/d;->a:Ll8/d$b;

    invoke-static {v0}, Ll8/d$b;->b(Ll8/d$b;)Ll8/d$c;

    iget-object v0, p0, Ll8/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll8/d;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll8/d$b;

    :goto_0
    iput-object v0, p0, Ll8/d;->a:Ll8/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object p0, p0, Ll8/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static declared-synchronized d()Ll8/d;
    .locals 2

    const-class v0, Ll8/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll8/d;->e:Ll8/d;

    if-nez v1, :cond_0

    new-instance v1, Ll8/d;

    invoke-direct {v1}, Ll8/d;-><init>()V

    sput-object v1, Ll8/d;->e:Ll8/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ll8/d;->e:Ll8/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll8/d;->a:Ll8/d$b;

    invoke-static {v0, p1}, Ll8/d$b;->a(Ll8/d$b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Ll8/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Ll8/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Ll8/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "%s/start"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ll8/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ll8/d;->a:Ll8/d$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll8/d;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ll8/d$b;

    iget-object v1, p0, Ll8/d;->c:Ll8/d$c;

    if-nez p2, :cond_1

    const-class p2, Ll8/d;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Ll8/d$b;-><init>(Ljava/lang/String;Ll8/d$c;Ljava/lang/String;Ll8/d$a;)V

    iput-object v0, p0, Ll8/d;->a:Ll8/d$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Ll8/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ll8/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

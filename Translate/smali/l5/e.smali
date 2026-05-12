.class public Ll5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/e$b;,
        Ll5/e$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/heytap/epona/h;

.field private final b:Lcom/heytap/epona/Request;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/heytap/epona/h;Lcom/heytap/epona/Request;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ll5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    iput-object p2, p0, Ll5/e;->b:Lcom/heytap/epona/Request;

    return-void
.end method

.method static synthetic a(Ll5/e;Lcom/heytap/epona/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll5/e;->f(Lcom/heytap/epona/a;Z)V

    return-void
.end method

.method static synthetic b(Ll5/e;)Lcom/heytap/epona/h;
    .locals 0

    iget-object p0, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    return-object p0
.end method

.method public static e(Lcom/heytap/epona/h;Lcom/heytap/epona/Request;)Ll5/e;
    .locals 1

    new-instance v0, Ll5/e;

    invoke-direct {v0, p0, p1}, Ll5/e;-><init>(Lcom/heytap/epona/h;Lcom/heytap/epona/Request;)V

    return-object v0
.end method

.method private f(Lcom/heytap/epona/a;Z)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/heytap/epona/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lk5/a;

    invoke-direct {v0}, Lk5/a;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/c;

    invoke-direct {v0}, Lk5/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/d;

    invoke-direct {v0}, Lk5/d;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/b;

    invoke-direct {v0}, Lk5/b;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ll5/f;

    const/4 v2, 0x0

    iget-object v3, p0, Ll5/e;->b:Lcom/heytap/epona/Request;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ll5/f;-><init>(Ljava/util/List;ILcom/heytap/epona/Request;Lcom/heytap/epona/a;Z)V

    invoke-virtual {v6}, Ll5/f;->b()V

    return-void
.end method


# virtual methods
.method public c(Lcom/heytap/epona/a;)V
    .locals 4

    new-instance v0, Ll5/e$b;

    invoke-direct {v0, p0, p1}, Ll5/e$b;-><init>(Ll5/e;Lcom/heytap/epona/a;)V

    iget-object v1, p0, Ll5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RealCall"

    const-string v3, "asyncExecute has been executed"

    invoke-static {v2, v3, v1}, Lq5/a;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    :cond_0
    iget-object p0, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    invoke-virtual {p0, v0}, Lcom/heytap/epona/h;->b(Ll5/e$b;)V

    return-void
.end method

.method public d()Lcom/heytap/epona/Response;
    .locals 3

    iget-object v0, p0, Ll5/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "execute has been executed"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "RealCall"

    invoke-static {v1, p0, v0}, Lq5/a;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    invoke-virtual {v0, p0}, Lcom/heytap/epona/h;->d(Ll5/e;)V

    new-instance v0, Ll5/e$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ll5/e$c;-><init>(Ll5/e$a;)V

    invoke-direct {p0, v0, v1}, Ll5/e;->f(Lcom/heytap/epona/a;Z)V

    invoke-virtual {v0}, Ll5/e$c;->a()Lcom/heytap/epona/Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    invoke-virtual {v1, p0}, Lcom/heytap/epona/h;->g(Ll5/e;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ll5/e;->a:Lcom/heytap/epona/h;

    invoke-virtual {v1, p0}, Lcom/heytap/epona/h;->g(Ll5/e;)V

    throw v0
.end method

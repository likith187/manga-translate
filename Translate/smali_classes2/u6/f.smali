.class public Lu6/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/f$b;,
        Lu6/f$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/oplus/epona/k;

.field private final b:Lcom/oplus/epona/Request;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/oplus/epona/k;Lcom/oplus/epona/Request;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lu6/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    iput-object p2, p0, Lu6/f;->b:Lcom/oplus/epona/Request;

    return-void
.end method

.method static synthetic a(Lu6/f;Lcom/oplus/epona/Call$Callback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu6/f;->f(Lcom/oplus/epona/Call$Callback;Z)V

    return-void
.end method

.method static synthetic b(Lu6/f;)Lcom/oplus/epona/k;
    .locals 0

    iget-object p0, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    return-object p0
.end method

.method public static e(Lcom/oplus/epona/k;Lcom/oplus/epona/Request;)Lu6/f;
    .locals 1

    new-instance v0, Lu6/f;

    invoke-direct {v0, p0, p1}, Lu6/f;-><init>(Lcom/oplus/epona/k;Lcom/oplus/epona/Request;)V

    return-object v0
.end method

.method private f(Lcom/oplus/epona/Call$Callback;Z)V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/oplus/epona/d;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ls6/a;

    invoke-direct {v0}, Ls6/a;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ls6/c;

    invoke-direct {v0}, Ls6/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ls6/e;

    invoke-direct {v0}, Ls6/e;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oplus/epona/d;->i()Lcom/oplus/epona/f;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lu6/g;

    const/4 v2, 0x0

    iget-object v3, p0, Lu6/f;->b:Lcom/oplus/epona/Request;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lu6/g;-><init>(Ljava/util/List;ILcom/oplus/epona/Request;Lcom/oplus/epona/Call$Callback;Z)V

    invoke-virtual {v6}, Lu6/g;->b()V

    return-void
.end method


# virtual methods
.method public c(Lcom/oplus/epona/Call$Callback;)V
    .locals 4

    new-instance v0, Lu6/f$b;

    invoke-direct {v0, p0, p1}, Lu6/f$b;-><init>(Lu6/f;Lcom/oplus/epona/Call$Callback;)V

    iget-object v1, p0, Lu6/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Epona->RealCall"

    const-string v3, "asyncExecute has been executed"

    invoke-static {v2, v3, v1}, Lc8/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :cond_0
    iget-object p0, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    invoke-virtual {p0, v0}, Lcom/oplus/epona/k;->b(Lu6/f$b;)V

    return-void
.end method

.method public d()Lcom/oplus/epona/Response;
    .locals 5

    iget-object v0, p0, Lu6/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "Epona->RealCall"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "execute has been executed"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lc8/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    invoke-virtual {v0, p0}, Lcom/oplus/epona/k;->d(Lu6/f;)V

    new-instance v0, Lu6/f$c;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lu6/f$c;-><init>(Lu6/f$a;)V

    invoke-direct {p0, v0, v2}, Lu6/f;->f(Lcom/oplus/epona/Call$Callback;Z)V

    invoke-virtual {v0}, Lu6/f$c;->a()Lcom/oplus/epona/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    invoke-virtual {v1, p0}, Lcom/oplus/epona/k;->g(Lu6/f;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call has exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lu6/f;->a:Lcom/oplus/epona/k;

    invoke-virtual {v1, p0}, Lcom/oplus/epona/k;->g(Lu6/f;)V

    throw v0
.end method

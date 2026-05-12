.class public Le3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lf3/c;

.field private final c:Le3/p;

.field private final d:Lg3/b;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lf3/c;Le3/p;Lg3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/n;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Le3/n;->b:Lf3/c;

    iput-object p3, p0, Le3/n;->c:Le3/p;

    iput-object p4, p0, Le3/n;->d:Lg3/b;

    return-void
.end method

.method static synthetic b(Le3/n;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le3/n;->b:Lf3/c;

    invoke-interface {v0}, Lf3/c;->Y()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/m;

    iget-object v2, p0, Le3/n;->c:Le3/p;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Le3/p;->a(Ly2/m;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Le3/n;)V
    .locals 1

    iget-object v0, p0, Le3/n;->d:Lg3/b;

    invoke-static {p0}, Le3/m;->a(Le3/n;)Lg3/b$a;

    move-result-object p0

    invoke-interface {v0, p0}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Le3/n;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Le3/l;->a(Le3/n;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

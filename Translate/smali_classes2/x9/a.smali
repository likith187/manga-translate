.class Lx9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lx9/l;


# instance fields
.field private final a:Lx9/k;

.field private final b:Lx9/c;


# direct methods
.method constructor <init>(Lx9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/a;->b:Lx9/c;

    new-instance p1, Lx9/k;

    invoke-direct {p1}, Lx9/k;-><init>()V

    iput-object p1, p0, Lx9/a;->a:Lx9/k;

    return-void
.end method


# virtual methods
.method public a(Lx9/q;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lx9/j;->a(Lx9/q;Ljava/lang/Object;)Lx9/j;

    move-result-object p1

    iget-object p2, p0, Lx9/a;->a:Lx9/k;

    invoke-virtual {p2, p1}, Lx9/k;->a(Lx9/j;)V

    iget-object p1, p0, Lx9/a;->b:Lx9/c;

    invoke-virtual {p1}, Lx9/c;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lx9/a;->a:Lx9/k;

    invoke-virtual {v0}, Lx9/k;->b()Lx9/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx9/a;->b:Lx9/c;

    invoke-virtual {p0, v0}, Lx9/c;->g(Lx9/j;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No pending post available"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Landroidx/lifecycle/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/q0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/u;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/q0$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/s;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/u;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/q0;->b:Landroid/os/Handler;

    return-void
.end method

.method private final f(Landroidx/lifecycle/l$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/q0;->c:Landroidx/lifecycle/q0$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/q0$a;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/q0$a;

    iget-object v1, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/u;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/q0$a;-><init>(Landroidx/lifecycle/u;Landroidx/lifecycle/l$a;)V

    iput-object v0, p0, Landroidx/lifecycle/q0;->c:Landroidx/lifecycle/q0$a;

    iget-object p0, p0, Landroidx/lifecycle/q0;->b:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/l;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/u;

    return-object p0
.end method

.method public b()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q0;->f(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q0;->f(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q0;->f(Landroidx/lifecycle/l$a;)V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q0;->f(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public e()V
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/q0;->f(Landroidx/lifecycle/l$a;)V

    return-void
.end method

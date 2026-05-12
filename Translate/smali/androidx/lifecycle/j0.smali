.class public final Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/lifecycle/h0;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/h0;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/j0;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/j0;->b:Landroidx/lifecycle/h0;

    return-void
.end method


# virtual methods
.method public final c(Lq0/e;Landroidx/lifecycle/l;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/lifecycle/j0;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/j0;->c:Z

    invoke-virtual {p2, p0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    iget-object p2, p0, Landroidx/lifecycle/j0;->a:Ljava/lang/String;

    iget-object p0, p0, Landroidx/lifecycle/j0;->b:Landroidx/lifecycle/h0;

    invoke-virtual {p0}, Landroidx/lifecycle/h0;->a()Lq0/e$b;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lq0/e;->c(Ljava/lang/String;Lq0/e$b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached to lifecycleOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final i()Landroidx/lifecycle/h0;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/j0;->b:Landroidx/lifecycle/h0;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/lifecycle/j0;->c:Z

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/j0;->c:Z

    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    :cond_0
    return-void
.end method

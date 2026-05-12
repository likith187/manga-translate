.class public final Landroidx/lifecycle/n;
.super Landroidx/lifecycle/m;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field private final a:Landroidx/lifecycle/l;

.field private final b:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;Lkotlin/coroutines/g;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/m;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/n;->b:Lkotlin/coroutines/g;

    invoke-virtual {p0}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/n;->c()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lkotlinx/coroutines/j1;->d(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/l;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/l;

    return-object p0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->F0()Lkotlinx/coroutines/p1;

    move-result-object v2

    new-instance v4, Landroidx/lifecycle/n$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/n;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public c()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/n;->b:Lkotlin/coroutines/g;

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    invoke-virtual {p0}, Landroidx/lifecycle/n;->c()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lkotlinx/coroutines/j1;->d(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

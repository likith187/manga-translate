.class public Lkotlinx/coroutines/internal/c0;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;


# instance fields
.field public final f:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/g;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method protected final R()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected m(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {p1, p0}, Lkotlinx/coroutines/w;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, p1}, Lkotlinx/coroutines/internal/k;->c(Lkotlin/coroutines/d;Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/c0;->f:Lkotlin/coroutines/d;

    invoke-static {p1, p0}, Lkotlinx/coroutines/w;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

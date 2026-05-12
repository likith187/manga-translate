.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/m1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/f1;
.implements Lkotlin/coroutines/d;
.implements Lkotlinx/coroutines/c0;


# instance fields
.field private final c:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;ZZ)V
    .locals 0

    invoke-direct {p0, p3}, Lkotlinx/coroutines/m1;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/f1;

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/m1;->O(Lkotlinx/coroutines/f1;)V

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->c:Lkotlin/coroutines/g;

    return-void
.end method


# virtual methods
.method public final A0(Lkotlinx/coroutines/e0;Ljava/lang/Object;Lw8/p;)V
    .locals 0

    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/e0;->invoke(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-void
.end method

.method public final M(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/coroutines/g;

    invoke-static {p0, p1}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Y()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/coroutines/g;

    invoke-static {v0}, Lkotlinx/coroutines/x;->b(Lkotlin/coroutines/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lkotlinx/coroutines/m1;->Y()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/m1;->Y()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/coroutines/g;

    return-object p0
.end method

.method protected final f0(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/t;

    iget-object v0, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/t;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->y0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->z0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getContext()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/coroutines/g;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/m1;->isActive()Z

    move-result p0

    return p0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/g0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/w;->d(Ljava/lang/Object;Lw8/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/n1;->b:Lkotlinx/coroutines/internal/g0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->x0(Ljava/lang/Object;)V

    return-void
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->m(Ljava/lang/Object;)V

    return-void
.end method

.method protected y0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method protected z0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

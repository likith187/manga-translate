.class public final Lkotlinx/coroutines/p;
.super Lkotlinx/coroutines/h1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/o;


# instance fields
.field public final h:Lkotlinx/coroutines/q;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/q;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/p;->h:Lkotlinx/coroutines/q;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/p;->h:Lkotlinx/coroutines/q;

    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->v()Lkotlinx/coroutines/m1;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/q;->a0(Lkotlinx/coroutines/t1;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->v()Lkotlinx/coroutines/m1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1;->s(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getParent()Lkotlinx/coroutines/f1;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->v()Lkotlinx/coroutines/m1;

    move-result-object p0

    return-object p0
.end method

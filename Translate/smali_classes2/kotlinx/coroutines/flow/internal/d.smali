.class public final Lkotlinx/coroutines/flow/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field private final synthetic b:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lkotlin/coroutines/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/d;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/d;->b:Lkotlin/coroutines/g;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/d;->b:Lkotlin/coroutines/g;

    invoke-interface {p0, p1, p2}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/d;->b:Lkotlin/coroutines/g;

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/d;->b:Lkotlin/coroutines/g;

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/d;->b:Lkotlin/coroutines/g;

    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

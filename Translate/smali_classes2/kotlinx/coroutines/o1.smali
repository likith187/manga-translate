.class final Lkotlinx/coroutines/o1;
.super Lkotlinx/coroutines/v1;
.source "SourceFile"


# instance fields
.field private final f:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Lw8/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/v1;-><init>(Lkotlin/coroutines/g;Z)V

    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/b;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/o1;->f:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method protected g0()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/o1;->f:Lkotlin/coroutines/d;

    invoke-static {v0, p0}, Lf9/a;->b(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)V

    return-void
.end method

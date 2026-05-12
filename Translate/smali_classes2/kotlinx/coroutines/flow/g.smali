.class final Lkotlinx/coroutines/flow/g;
.super Lkotlinx/coroutines/flow/a;
.source "SourceFile"


# instance fields
.field private final a:Lw8/p;


# direct methods
.method public constructor <init>(Lw8/p;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/flow/a;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/g;->a:Lw8/p;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/g;->a:Lw8/p;

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

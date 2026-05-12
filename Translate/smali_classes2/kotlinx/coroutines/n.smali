.class public final Lkotlinx/coroutines/n;
.super Lkotlinx/coroutines/h1;
.source "SourceFile"


# instance fields
.field public final h:Lkotlinx/coroutines/j;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/j;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/n;->h:Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/n;->h:Lkotlinx/coroutines/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->v()Lkotlinx/coroutines/m1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/j;->v(Lkotlinx/coroutines/f1;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/j;->L(Ljava/lang/Throwable;)V

    return-void
.end method

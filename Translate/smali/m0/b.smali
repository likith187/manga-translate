.class public final Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lkotlinx/coroutines/c0;


# instance fields
.field private final a:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b;->a:Lkotlin/coroutines/g;

    return-void
.end method


# virtual methods
.method public c()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lm0/b;->a:Lkotlin/coroutines/g;

    return-object p0
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Lm0/b;->c()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/j1;->d(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

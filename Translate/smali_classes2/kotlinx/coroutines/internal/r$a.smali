.class public abstract Lkotlinx/coroutines/internal/r$a;
.super Lkotlinx/coroutines/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/internal/r;

.field public c:Lkotlinx/coroutines/internal/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/r$a;->f(Lkotlinx/coroutines/internal/r;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lkotlinx/coroutines/internal/r;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/internal/r;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/r$a;->b:Lkotlinx/coroutines/internal/r;

    iget-object p0, p0, Lkotlinx/coroutines/internal/r$a;->c:Lkotlinx/coroutines/internal/r;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/r;->d(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)V

    :cond_2
    return-void
.end method

.class final Lkotlinx/coroutines/sync/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/i;
.implements Lkotlinx/coroutines/e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/j;

.field public final b:Ljava/lang/Object;

.field final synthetic c:Lkotlinx/coroutines/sync/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/j;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$a;->c:Lkotlinx/coroutines/sync/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    iput-object p3, p0, Lkotlinx/coroutines/sync/b$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ln8/h0;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/b$a;->h(Lkotlinx/coroutines/y;Ln8/h0;)V

    return-void
.end method

.method public b(Lkotlinx/coroutines/internal/d0;I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/internal/d0;I)V

    return-void
.end method

.method public c(Ln8/h0;Lw8/l;)V
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->c:Lkotlinx/coroutines/sync/b;

    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    new-instance v0, Lkotlinx/coroutines/sync/b$a$a;

    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a;->c:Lkotlinx/coroutines/sync/b;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/sync/b$a$a;-><init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V

    invoke-virtual {p2, p1, v0}, Lkotlinx/coroutines/j;->e(Ljava/lang/Object;Lw8/l;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln8/h0;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/b$a;->i(Ln8/h0;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lw8/l;)V
    .locals 0

    check-cast p1, Ln8/h0;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/b$a;->c(Ln8/h0;Lw8/l;)V

    return-void
.end method

.method public f(Lw8/l;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->f(Lw8/l;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/j;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public h(Lkotlinx/coroutines/y;Ln8/h0;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/j;->a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ln8/h0;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;
    .locals 2

    iget-object p3, p0, Lkotlinx/coroutines/sync/b$a;->c:Lkotlinx/coroutines/sync/b;

    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    new-instance v1, Lkotlinx/coroutines/sync/b$a$b;

    invoke-direct {v1, p3, p0}, Lkotlinx/coroutines/sync/b$a$b;-><init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/coroutines/j;->d(Ljava/lang/Object;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, Lkotlinx/coroutines/sync/b$a;->c:Lkotlinx/coroutines/sync/b;

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->b:Ljava/lang/Object;

    invoke-virtual {p2, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->a:Lkotlinx/coroutines/j;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

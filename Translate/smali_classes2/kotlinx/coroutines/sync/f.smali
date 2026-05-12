.class final Lkotlinx/coroutines/sync/f;
.super Lkotlinx/coroutines/internal/d0;
.source "SourceFile"


# instance fields
.field private final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/sync/f;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/internal/d0;-><init>(JLkotlinx/coroutines/internal/d0;I)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {}, Lkotlinx/coroutines/sync/e;->f()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public r()I
    .locals 0

    invoke-static {}, Lkotlinx/coroutines/sync/e;->f()I

    move-result p0

    return p0
.end method

.method public s(ILjava/lang/Throwable;Lkotlin/coroutines/g;)V
    .locals 0

    invoke-static {}, Lkotlinx/coroutines/sync/e;->c()Lkotlinx/coroutines/internal/g0;

    move-result-object p2

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/f;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d0;->t()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemaphoreSegment[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/internal/d0;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic v()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

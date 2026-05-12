.class public final Lkotlinx/coroutines/flow/internal/g;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlin/coroutines/jvm/internal/e;


# instance fields
.field public final collectContext:Lkotlin/coroutines/g;

.field public final collectContextSize:I

.field public final collector:Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c;"
        }
    .end annotation
.end field

.field private completion_:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d;"
        }
    .end annotation
.end field

.field private lastEmissionContext:Lkotlin/coroutines/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Lkotlin/coroutines/g;",
            ")V"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/flow/internal/e;->INSTANCE:Lkotlinx/coroutines/flow/internal/e;

    sget-object v1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/g;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/g;->collector:Lkotlinx/coroutines/flow/c;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/g;->collectContext:Lkotlin/coroutines/g;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/flow/internal/g$a;->INSTANCE:Lkotlinx/coroutines/flow/internal/g$a;

    invoke-interface {p2, p1, v0}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/flow/internal/g;->collectContextSize:I

    return-void
.end method

.method private final checkContext(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "Lkotlin/coroutines/g;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/d;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlinx/coroutines/flow/internal/d;

    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/flow/internal/g;->exceptionTransparencyViolated(Lkotlinx/coroutines/flow/internal/d;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/internal/i;->a(Lkotlinx/coroutines/flow/internal/g;Lkotlin/coroutines/g;)V

    return-void
.end method

.method private final emit(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/j1;->e(Lkotlin/coroutines/g;)V

    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/g;->lastEmissionContext:Lkotlin/coroutines/g;

    if-eq v1, v0, :cond_0

    .line 8
    invoke-direct {p0, v0, v1, p2}, Lkotlinx/coroutines/flow/internal/g;->checkContext(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->lastEmissionContext:Lkotlin/coroutines/g;

    .line 10
    :cond_0
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/g;->completion_:Lkotlin/coroutines/d;

    .line 11
    invoke-static {}, Lkotlinx/coroutines/flow/internal/h;->a()Lw8/q;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->collector:Lkotlinx/coroutines/flow/c;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p0}, Lw8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/g;->completion_:Lkotlin/coroutines/d;

    :cond_1
    return-object p1
.end method

.method private final exceptionTransparencyViolated(Lkotlinx/coroutines/flow/internal/d;Ljava/lang/Object;)V
    .locals 2

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lkotlinx/coroutines/flow/internal/d;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but then emission attempt of value \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/r;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/flow/internal/g;->emit(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Lkotlinx/coroutines/flow/internal/d;

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/flow/internal/d;-><init>(Ljava/lang/Throwable;Lkotlin/coroutines/g;)V

    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->lastEmissionContext:Lkotlin/coroutines/g;

    .line 4
    throw p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->completion_:Lkotlin/coroutines/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->lastEmissionContext:Lkotlin/coroutines/g;

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    :cond_0
    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lkotlinx/coroutines/flow/internal/d;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/g;->getContext()Lkotlin/coroutines/g;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/flow/internal/d;-><init>(Ljava/lang/Throwable;Lkotlin/coroutines/g;)V

    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/g;->lastEmissionContext:Lkotlin/coroutines/g;

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->completion_:Lkotlin/coroutines/d;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public releaseIntercepted()V
    .locals 0

    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/d;->releaseIntercepted()V

    return-void
.end method

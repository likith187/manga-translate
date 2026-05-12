.class final Lkotlinx/coroutines/flow/internal/i$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/i;->a(Lkotlinx/coroutines/flow/internal/g;Lkotlin/coroutines/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_checkContext:Lkotlinx/coroutines/flow/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/internal/g;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/internal/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/internal/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/i$a;->$this_checkContext:Lkotlinx/coroutines/flow/internal/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;
    .locals 2

    .line 2
    invoke-interface {p2}, Lkotlin/coroutines/g$b;->getKey()Lkotlin/coroutines/g$c;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/i$a;->$this_checkContext:Lkotlinx/coroutines/flow/internal/g;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/g;->collectContext:Lkotlin/coroutines/g;

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    .line 4
    sget-object v1, Lkotlinx/coroutines/f1;->g:Lkotlinx/coroutines/f1$b;

    if-eq v0, v1, :cond_1

    if-eq p2, p0, :cond_0

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    .line 5
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    check-cast p0, Lkotlinx/coroutines/f1;

    .line 7
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlinx/coroutines/f1;

    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/internal/i;->b(Lkotlinx/coroutines/f1;Lkotlinx/coroutines/f1;)Lkotlinx/coroutines/f1;

    move-result-object p2

    if-ne p2, p0, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 8
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p2, ", expected child of "

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/i$a;->invoke(ILkotlin/coroutines/g$b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

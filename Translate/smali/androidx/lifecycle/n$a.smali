.class final Landroidx/lifecycle/n$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/lifecycle/n;


# direct methods
.method constructor <init>(Landroidx/lifecycle/n;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/n$a;->this$0:Landroidx/lifecycle/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/n$a;

    iget-object p0, p0, Landroidx/lifecycle/n$a;->this$0:Landroidx/lifecycle/n;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/n;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/lifecycle/n$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/n$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/n$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/n$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Landroidx/lifecycle/n$a;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/n$a;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/c0;

    iget-object v0, p0, Landroidx/lifecycle/n$a;->this$0:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/n$a;->this$0:Landroidx/lifecycle/n;

    invoke-virtual {p1}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/l;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/n$a;->this$0:Landroidx/lifecycle/n;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/c0;->c()Lkotlin/coroutines/g;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lkotlinx/coroutines/j1;->d(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

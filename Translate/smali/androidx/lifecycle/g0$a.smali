.class final Landroidx/lifecycle/g0$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0;->a(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lw8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/p;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/lifecycle/l$b;

.field final synthetic $this_repeatOnLifecycle:Landroidx/lifecycle/l;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l;",
            "Landroidx/lifecycle/l$b;",
            "Lw8/p;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/g0$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/g0$a;->$state:Landroidx/lifecycle/l$b;

    iput-object p3, p0, Landroidx/lifecycle/g0$a;->$block:Lw8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/g0$a;

    iget-object v1, p0, Landroidx/lifecycle/g0$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iget-object v2, p0, Landroidx/lifecycle/g0$a;->$state:Landroidx/lifecycle/l$b;

    iget-object p0, p0, Landroidx/lifecycle/g0$a;->$block:Lw8/p;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/lifecycle/g0$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/lifecycle/g0$a;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/g0$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/g0$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/g0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/lifecycle/g0$a;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/g0$a;->L$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/c0;

    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/p1;->F0()Lkotlinx/coroutines/p1;

    move-result-object p1

    new-instance v1, Landroidx/lifecycle/g0$a$a;

    iget-object v4, p0, Landroidx/lifecycle/g0$a;->$this_repeatOnLifecycle:Landroidx/lifecycle/l;

    iget-object v5, p0, Landroidx/lifecycle/g0$a;->$state:Landroidx/lifecycle/l$b;

    iget-object v7, p0, Landroidx/lifecycle/g0$a;->$block:Lw8/p;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/lifecycle/g0$a$a;-><init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lkotlinx/coroutines/c0;Lw8/p;Lkotlin/coroutines/d;)V

    iput v2, p0, Landroidx/lifecycle/g0$a;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

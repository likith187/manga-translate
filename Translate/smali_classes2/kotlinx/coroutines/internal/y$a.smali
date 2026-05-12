.class final Lkotlinx/coroutines/internal/y$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/y;->a(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Lw8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/g;

.field final synthetic $element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $this_bindCancellationFun:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/y$a;->$this_bindCancellationFun:Lw8/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/y$a;->$element:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/y$a;->$context:Lkotlin/coroutines/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/y$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/internal/y$a;->$this_bindCancellationFun:Lw8/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/y$a;->$element:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/internal/y$a;->$context:Lkotlin/coroutines/g;

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/internal/y;->b(Lw8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    return-void
.end method

.class final Lkotlinx/coroutines/channels/b$b$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/b$b;->invoke(Lh9/a;Ljava/lang/Object;Ljava/lang/Object;)Lw8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $element:Ljava/lang/Object;

.field final synthetic $select:Lh9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh9/a;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lh9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/b;",
            "Lh9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$b$a;->$element:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/channels/b$b$a;->this$0:Lkotlinx/coroutines/channels/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b$b$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/b$b$a;->$element:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/channels/c;->x()Lkotlinx/coroutines/internal/g0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/b$b$a;->this$0:Lkotlinx/coroutines/channels/b;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->c:Lw8/l;

    const/4 p0, 0x0

    throw p0
.end method

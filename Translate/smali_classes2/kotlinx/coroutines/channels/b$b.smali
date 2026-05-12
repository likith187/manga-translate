.class final Lkotlinx/coroutines/channels/b$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/b;-><init>(ILw8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/b$b;->this$0:Lkotlinx/coroutines/channels/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/b$b;->invoke(Lh9/a;Ljava/lang/Object;Ljava/lang/Object;)Lw8/l;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lh9/a;Ljava/lang/Object;Ljava/lang/Object;)Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh9/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lw8/l;"
        }
    .end annotation

    .line 2
    new-instance p2, Lkotlinx/coroutines/channels/b$b$a;

    iget-object p0, p0, Lkotlinx/coroutines/channels/b$b;->this$0:Lkotlinx/coroutines/channels/b;

    invoke-direct {p2, p3, p0, p1}, Lkotlinx/coroutines/channels/b$b$a;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/b;Lh9/a;)V

    return-object p2
.end method

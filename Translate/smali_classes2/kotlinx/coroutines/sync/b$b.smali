.class final Lkotlinx/coroutines/sync/b$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/b;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/b;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$b;->this$0:Lkotlinx/coroutines/sync/b;

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

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/b$b;->invoke(Lh9/a;Ljava/lang/Object;Ljava/lang/Object;)Lw8/l;

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
    new-instance p1, Lkotlinx/coroutines/sync/b$b$a;

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$b;->this$0:Lkotlinx/coroutines/sync/b;

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/sync/b$b$a;-><init>(Lkotlinx/coroutines/sync/b;Ljava/lang/Object;)V

    return-object p1
.end method

.class final Lkotlinx/coroutines/sync/b$a$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/b$a;->i(Ln8/h0;Ljava/lang/Object;Lw8/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/b;

.field final synthetic this$1:Lkotlinx/coroutines/sync/b$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/b;Lkotlinx/coroutines/sync/b$a;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iput-object p2, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/b$a$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    invoke-static {}, Lkotlinx/coroutines/sync/b;->q()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iget-object v1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    iget-object v1, v1, Lkotlinx/coroutines/sync/b$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/sync/b$a$b;->this$0:Lkotlinx/coroutines/sync/b;

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a$b;->this$1:Lkotlinx/coroutines/sync/b$a;

    iget-object p0, p0, Lkotlinx/coroutines/sync/b$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-void
.end method

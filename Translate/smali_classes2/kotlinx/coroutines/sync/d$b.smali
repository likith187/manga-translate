.class final Lkotlinx/coroutines/sync/d$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/d;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/d;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/d$b;->this$0:Lkotlinx/coroutines/sync/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/d$b;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/sync/d$b;->this$0:Lkotlinx/coroutines/sync/d;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/d;->m()V

    return-void
.end method

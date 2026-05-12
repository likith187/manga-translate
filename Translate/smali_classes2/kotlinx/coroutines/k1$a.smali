.class final synthetic Lkotlinx/coroutines/k1$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/k1;->g(Lkotlinx/coroutines/f1;ZZLkotlinx/coroutines/c1;)Lkotlinx/coroutines/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "invoke(Ljava/lang/Throwable;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lkotlinx/coroutines/c1;

    const-string v4, "invoke"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/o;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/k1$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/e;->receiver:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/c1;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V

    return-void
.end method

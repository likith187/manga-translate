.class public final Lkotlin/coroutines/intrinsics/c$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/intrinsics/c;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $receiver$inlined:Ljava/lang/Object;

.field final synthetic $this_createCoroutineUnintercepted$inlined:Lw8/p;

.field private label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lw8/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lkotlin/coroutines/intrinsics/c$a;->$this_createCoroutineUnintercepted$inlined:Lw8/p;

    iput-object p3, p0, Lkotlin/coroutines/intrinsics/c$a;->$receiver$inlined:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/coroutines/intrinsics/c$a;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lkotlin/coroutines/intrinsics/c$a;->label:I

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This coroutine had already completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v2, p0, Lkotlin/coroutines/intrinsics/c$a;->label:I

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/coroutines/intrinsics/c$a;->$this_createCoroutineUnintercepted$inlined:Lw8/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlin/coroutines/intrinsics/c$a;->$this_createCoroutineUnintercepted$inlined:Lw8/p;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw8/p;

    iget-object v0, p0, Lkotlin/coroutines/intrinsics/c$a;->$receiver$inlined:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

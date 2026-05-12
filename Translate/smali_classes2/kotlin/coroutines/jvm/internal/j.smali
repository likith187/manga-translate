.class public abstract Lkotlin/coroutines/jvm/internal/j;
.super Lkotlin/coroutines/jvm/internal/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Lkotlin/coroutines/d;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/g;
    .locals 0

    sget-object p0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    return-object p0
.end method

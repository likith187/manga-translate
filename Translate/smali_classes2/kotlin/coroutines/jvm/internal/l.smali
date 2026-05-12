.class public abstract Lkotlin/coroutines/jvm/internal/l;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/m;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public constructor <init>(ILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/d;)V

    .line 2
    iput p1, p0, Lkotlin/coroutines/jvm/internal/l;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, Lkotlin/coroutines/jvm/internal/l;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/a;->getCompletion()Lkotlin/coroutines/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/d0;->e(Lkotlin/jvm/internal/m;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/a;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.class public abstract Lkotlin/coroutines/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/coroutines/g$a$a;->INSTANCE:Lkotlin/coroutines/g$a$a;

    invoke-interface {p1, p0, v0}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/g;

    :goto_0
    return-object p0
.end method

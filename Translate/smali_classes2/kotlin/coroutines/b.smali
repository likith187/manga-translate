.class public abstract Lkotlin/coroutines/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$c;


# instance fields
.field private final a:Lw8/l;

.field private final b:Lkotlin/coroutines/g$c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g$c;Lw8/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/coroutines/b;->a:Lw8/l;

    instance-of p2, p1, Lkotlin/coroutines/b;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlin/coroutines/b;

    iget-object p1, p1, Lkotlin/coroutines/b;->b:Lkotlin/coroutines/g$c;

    :cond_0
    iput-object p1, p0, Lkotlin/coroutines/b;->b:Lkotlin/coroutines/g$c;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/g$c;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object p0, p0, Lkotlin/coroutines/b;->b:Lkotlin/coroutines/g$c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b(Lkotlin/coroutines/g$b;)Lkotlin/coroutines/g$b;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/coroutines/b;->a:Lw8/l;

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/g$b;

    return-object p0
.end method

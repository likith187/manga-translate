.class public abstract Lkotlin/coroutines/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/g$b;


# instance fields
.field private final a:Lkotlin/coroutines/g$c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g$c;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/a;->a:Lkotlin/coroutines/g$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/g$b$a;->a(Lkotlin/coroutines/g$b;Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->b(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lkotlin/coroutines/g$c;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/a;->a:Lkotlin/coroutines/g$c;

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->c(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/g$b$a;->d(Lkotlin/coroutines/g$b;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

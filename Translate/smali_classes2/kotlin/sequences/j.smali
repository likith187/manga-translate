.class abstract Lkotlin/sequences/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lw8/p;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/g;

    invoke-direct {v0}, Lkotlin/sequences/g;-><init>()V

    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/b;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/sequences/g;->j(Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public static b(Lw8/p;)Lkotlin/sequences/f;
    .locals 1

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/j$a;

    invoke-direct {v0, p0}, Lkotlin/sequences/j$a;-><init>(Lw8/p;)V

    return-object v0
.end method

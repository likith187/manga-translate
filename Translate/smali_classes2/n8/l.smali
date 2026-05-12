.class abstract Ln8/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln8/l$a;
    }
.end annotation


# direct methods
.method public static a(Ln8/n;Lw8/a;)Ln8/j;
    .locals 2

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln8/l$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Ln8/i0;

    invoke-direct {p0, p1}, Ln8/i0;-><init>(Lw8/a;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ln8/t;

    invoke-direct {p0, p1}, Ln8/t;-><init>(Lw8/a;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ln8/u;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Ln8/u;-><init>(Lw8/a;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p0
.end method

.method public static b(Lw8/a;)Ln8/j;
    .locals 3

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln8/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Ln8/u;-><init>(Lw8/a;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

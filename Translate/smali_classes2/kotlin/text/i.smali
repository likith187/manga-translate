.class public abstract Lkotlin/text/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lkotlin/text/i;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->f(II)I

    move-result v3

    if-gez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

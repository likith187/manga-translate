.class public abstract Lkotlin/text/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lkotlin/text/g;->a:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sput-object v1, Lkotlin/text/g;->b:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v6, v3

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    move v3, v2

    move v6, v3

    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    :cond_4
    sput-object v1, Lkotlin/text/g;->c:[I

    new-array v1, v0, [J

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v0, v2

    move v3, v0

    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    :cond_7
    sput-object v1, Lkotlin/text/g;->d:[J

    return-void
.end method

.method private static final a(Ljava/lang/String;III)V
    .locals 2

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p3, "at least"

    invoke-static {p0, p1, p2, p3, v1}, Lkotlin/text/g;->j(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-le v0, p3, :cond_1

    add-int/2addr v0, p1

    sub-int/2addr v0, p3

    invoke-static {p0, p1, v0}, Lkotlin/text/g;->c(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    sub-int v0, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/text/g;->k(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4, p5}, Lkotlin/text/c;->d(CCZ)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "prefix"

    invoke-static {p0, p1, p2, p3, v3}, Lkotlin/text/g;->l(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    sub-int p3, p2, p3

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lkotlin/text/c;->d(CCZ)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "suffix"

    invoke-static {p0, p3, p2, p4, v2}, Lkotlin/text/g;->l(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {p0, p1, p3, p6}, Lkotlin/text/g;->a(Ljava/lang/String;III)V

    return-void
.end method

.method private static final c(Ljava/lang/String;II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected the hexadecimal digit \'0\' at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but was \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'.\nThe result won\'t fit the type being parsed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method public static final d()[I
    .locals 1

    sget-object v0, Lkotlin/text/g;->a:[I

    return-object v0
.end method

.method public static final e(Ljava/lang/String;IILkotlin/text/h;)J
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/text/g;->g(Ljava/lang/String;IILkotlin/text/h;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Ljava/lang/String;IILkotlin/text/h;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lkotlin/text/h;->d:Lkotlin/text/h$b;

    invoke-virtual {p3}, Lkotlin/text/h$b;->a()Lkotlin/text/h;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/g;->e(Ljava/lang/String;IILkotlin/text/h;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final g(Ljava/lang/String;IILkotlin/text/h;I)J
    .locals 9

    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/c$a;->a(III)V

    invoke-virtual {p3}, Lkotlin/text/h;->b()Lkotlin/text/h$c;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/text/h$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Lkotlin/text/g;->a(Ljava/lang/String;III)V

    invoke-static {p0, p1, p2}, Lkotlin/text/g;->h(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p3}, Lkotlin/text/h$c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lkotlin/text/h$c;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lkotlin/text/h$c;->c()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v7

    move-object v4, v8

    move v6, p4

    invoke-static/range {v0 .. v6}, Lkotlin/text/g;->b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p0, p1, p2}, Lkotlin/text/g;->h(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final h(Ljava/lang/String;II)J
    .locals 7

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p1, p2, :cond_1

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    ushr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    sget-object v5, Lkotlin/text/g;->d:[J

    aget-wide v4, v5, v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/g;->i(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    return-wide v2
.end method

.method private static final i(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a hexadecimal digit at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final j(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " hexadecimal digits at index "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but was \""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" of length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final k(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a hexadecimal number with prefix \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" and suffix \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\", but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final l(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0, p2}, Lb9/d;->e(II)I

    move-result p2

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "substring(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" at index "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

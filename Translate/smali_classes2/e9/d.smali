.class abstract Le9/d;
.super Le9/c;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Le9/d;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b(J[BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/d;->e(J[BII)V

    return-void
.end method

.method public static final synthetic c(J[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/d;->f(J[BI)V

    return-void
.end method

.method private static final d(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'-\' (hyphen) at index 8, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final e(J[BII)V
    .locals 4

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v1, v1

    invoke-static {}, Lkotlin/text/g;->d()[I

    move-result-object v2

    aget v1, v2, v1

    add-int/lit8 v2, p3, -0x1

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    add-int/lit8 p3, p3, -0x2

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    shr-long/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final f(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v2, v0, 0x7

    mul-int/2addr v2, v1

    add-int v1, p3, v0

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

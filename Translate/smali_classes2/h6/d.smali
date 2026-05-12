.class public Lh6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[F

.field private final b:[I


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:[F

    iput-object p2, p0, Lh6/d;->b:[I

    return-void
.end method

.method private b(F)I
    .locals 4

    iget-object v0, p0, Lh6/d;->a:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lh6/d;->b:[I

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lh6/d;->b:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_1
    iget-object v1, p0, Lh6/d;->b:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aget p0, v1, p0

    return p0

    :cond_2
    iget-object p0, p0, Lh6/d;->a:[F

    add-int/lit8 v2, v0, -0x1

    aget v3, p0, v2

    aget p0, p0, v0

    aget v2, v1, v2

    aget v0, v1, v0

    sub-float/2addr p1, v3

    sub-float/2addr p0, v3

    div-float/2addr p1, p0

    invoke-static {p1, v2, v0}, Ll6/c;->c(FII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a([F)Lh6/d;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-direct {p0, v2}, Lh6/d;->b(F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lh6/d;

    invoke-direct {p0, p1, v0}, Lh6/d;-><init>([F[I)V

    return-object p0
.end method

.method public c()[I
    .locals 0

    iget-object p0, p0, Lh6/d;->b:[I

    return-object p0
.end method

.method public d()[F
    .locals 0

    iget-object p0, p0, Lh6/d;->a:[F

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lh6/d;->b:[I

    array-length p0, p0

    return p0
.end method

.method public f(Lh6/d;Lh6/d;F)V
    .locals 4

    iget-object v0, p1, Lh6/d;->b:[I

    array-length v0, v0

    iget-object v1, p2, Lh6/d;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lh6/d;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lh6/d;->a:[F

    iget-object v2, p1, Lh6/d;->a:[F

    aget v2, v2, v0

    iget-object v3, p2, Lh6/d;->a:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Ll6/g;->i(FFF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lh6/d;->b:[I

    iget-object v2, p1, Lh6/d;->b:[I

    aget v2, v2, v0

    iget-object v3, p2, Lh6/d;->b:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Ll6/c;->c(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lh6/d;->b:[I

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lh6/d;->b:[I

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

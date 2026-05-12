.class public abstract Lw9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9/b$a;
    }
.end annotation


# static fields
.field protected static final h:Lv9/a;

.field static final i:[B


# instance fields
.field protected final a:B

.field protected final b:B

.field private final c:I

.field private final d:I

.field protected final e:I

.field private final f:I

.field private final g:Lv9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lv9/a;->LENIENT:Lv9/a;

    sput-object v0, Lw9/b;->h:Lv9/a;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lw9/b;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>(IIIIBLv9/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3d

    iput-byte v0, p0, Lw9/b;->a:B

    iput p1, p0, Lw9/b;->c:I

    iput p2, p0, Lw9/b;->d:I

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    div-int/2addr p3, p2

    mul-int/2addr p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lw9/b;->e:I

    iput p4, p0, Lw9/b;->f:I

    iput-byte p5, p0, Lw9/b;->b:B

    const-string p1, "codecPolicy"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lw9/b;->g:Lv9/a;

    return-void
.end method

.method private static c(I)I
    .locals 6

    if-ltz p0, :cond_0

    const v0, 0x7ffffff7

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate array size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static m(Lw9/b$a;I)[B
    .locals 2

    iget-object v0, p0, Lw9/b$a;->c:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    const v1, 0x7ffffff7

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p1}, Lw9/b;->c(I)I

    move-result v0

    :cond_1
    iget-object p1, p0, Lw9/b$a;->c:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lw9/b$a;->c:[B

    return-object p1
.end method


# virtual methods
.method a(Lw9/b$a;)I
    .locals 0

    invoke-virtual {p0, p1}, Lw9/b;->i(Lw9/b$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lw9/b$a;->d:I

    iget p1, p1, Lw9/b$a;->e:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected b([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    iget-byte v4, p0, Lw9/b;->b:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lw9/b;->j(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method abstract d([BIILw9/b$a;)V
.end method

.method public e(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lw9/d;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lw9/b;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public f([B)[B
    .locals 3

    invoke-static {p1}, Lw9/c;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lw9/b$a;

    invoke-direct {v0}, Lw9/b$a;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lw9/b;->d([BIILw9/b$a;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lw9/b;->d([BIILw9/b$a;)V

    iget p1, v0, Lw9/b$a;->d:I

    new-array v1, p1, [B

    invoke-virtual {p0, v1, v2, p1, v0}, Lw9/b;->l([BIILw9/b$a;)I

    return-object v1
.end method

.method protected g(ILw9/b$a;)[B
    .locals 2

    iget-object v0, p2, Lw9/b$a;->c:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw9/b;->h()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    iput-object p0, p2, Lw9/b$a;->c:[B

    const/4 p0, 0x0

    iput p0, p2, Lw9/b$a;->d:I

    iput p0, p2, Lw9/b$a;->e:I

    goto :goto_0

    :cond_0
    iget p0, p2, Lw9/b$a;->d:I

    add-int v1, p0, p1

    array-length v0, v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    add-int/2addr p0, p1

    invoke-static {p2, p0}, Lw9/b;->m(Lw9/b$a;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p2, Lw9/b$a;->c:[B

    return-object p0
.end method

.method protected h()I
    .locals 0

    const/16 p0, 0x2000

    return p0
.end method

.method i(Lw9/b$a;)Z
    .locals 0

    iget p0, p1, Lw9/b$a;->d:I

    iget p1, p1, Lw9/b$a;->e:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract j(B)Z
.end method

.method public k()Z
    .locals 1

    iget-object p0, p0, Lw9/b;->g:Lv9/a;

    sget-object v0, Lv9/a;->STRICT:Lv9/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method l([BIILw9/b$a;)I
    .locals 3

    invoke-virtual {p0, p4}, Lw9/b;->i(Lw9/b$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Lw9/b;->a(Lw9/b$a;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p4, Lw9/b$a;->c:[B

    iget v2, p4, Lw9/b$a;->e:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p4, Lw9/b$a;->e:I

    add-int/2addr p1, p3

    iput p1, p4, Lw9/b$a;->e:I

    invoke-virtual {p0, p4}, Lw9/b;->i(Lw9/b$a;)Z

    move-result p0

    if-nez p0, :cond_0

    iput v1, p4, Lw9/b$a;->e:I

    iput v1, p4, Lw9/b$a;->d:I

    :cond_0
    return p3

    :cond_1
    iget-boolean p0, p4, Lw9/b$a;->f:Z

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1
.end method

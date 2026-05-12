.class public abstract Lz8/a;
.super Lz8/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz8/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Random;
.end method

.method public nextBits(I)I
    .locals 0

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    invoke-static {p0, p1}, Lz8/d;->f(II)I

    move-result p0

    return p0
.end method

.method public nextBoolean()Z
    .locals 0

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public nextBytes([B)[B
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method public nextDouble()D
    .locals 2

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 0

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public nextInt()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public nextLong()J
    .locals 2

    invoke-virtual {p0}, Lz8/a;->a()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

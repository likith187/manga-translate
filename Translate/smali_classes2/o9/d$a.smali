.class public final Lo9/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private final c:Ljava/util/List;

.field private final d:Lt9/f;

.field public e:[Lo9/c;

.field private f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lt9/a0;II)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lo9/d$a;->a:I

    .line 3
    iput p3, p0, Lo9/d$a;->b:I

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo9/d$a;->c:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p1

    iput-object p1, p0, Lo9/d$a;->d:Lt9/f;

    const/16 p1, 0x8

    .line 6
    new-array p1, p1, [Lo9/c;

    iput-object p1, p0, Lo9/d$a;->e:[Lo9/c;

    .line 7
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo9/d$a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lt9/a0;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    move p3, p2

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo9/d$a;-><init>(Lt9/a0;II)V

    return-void
.end method

.method private final a()V
    .locals 2

    iget v0, p0, Lo9/d$a;->b:I

    iget v1, p0, Lo9/d$a;->h:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo9/d$a;->b()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lo9/d$a;->d(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private final b()V
    .locals 6

    iget-object v0, p0, Lo9/d$a;->e:[Lo9/c;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/i;->r([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iget-object v0, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo9/d$a;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lo9/d$a;->g:I

    iput v0, p0, Lo9/d$a;->h:I

    return-void
.end method

.method private final c(I)I
    .locals 0

    iget p0, p0, Lo9/d$a;->f:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method private final d(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo9/d$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lo9/d$a;->e:[Lo9/c;

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, v2, Lo9/c;->c:I

    sub-int/2addr p1, v2

    iget v3, p0, Lo9/d$a;->h:I

    sub-int/2addr v3, v2

    iput v3, p0, Lo9/d$a;->h:I

    iget v2, p0, Lo9/d$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo9/d$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo9/d$a;->e:[Lo9/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lo9/d$a;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lo9/d$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lo9/d$a;->f:I

    :cond_1
    return v0
.end method

.method private final f(I)Lt9/g;
    .locals 2

    invoke-direct {p0, p1}, Lo9/d$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {p0}, Lo9/d;->c()[Lo9/c;

    move-result-object p0

    aget-object p0, p0, p1

    iget-object p0, p0, Lo9/c;->a:Lt9/g;

    goto :goto_0

    :cond_0
    sget-object v0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {v0}, Lo9/d;->c()[Lo9/c;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lo9/d$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object p0, p0, v0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lo9/c;->a:Lt9/g;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final g(ILo9/c;)V
    .locals 5

    iget-object v0, p0, Lo9/d$a;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lo9/c;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lo9/d$a;->e:[Lo9/c;

    invoke-direct {p0, p1}, Lo9/d$a;->c(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, v2, Lo9/c;->c:I

    sub-int/2addr v0, v2

    :cond_0
    iget v2, p0, Lo9/d$a;->b:I

    if-le v0, v2, :cond_1

    invoke-direct {p0}, Lo9/d$a;->b()V

    return-void

    :cond_1
    iget v3, p0, Lo9/d$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lo9/d$a;->d(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lo9/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v2, v1

    if-le p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lo9/c;

    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo9/d$a;->f:I

    iput-object p1, p0, Lo9/d$a;->e:[Lo9/c;

    :cond_2
    iget p1, p0, Lo9/d$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lo9/d$a;->f:I

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    aput-object p2, v1, p1

    iget p1, p0, Lo9/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo9/d$a;->g:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lo9/d$a;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    aput-object p2, v1, p1

    :goto_0
    iget p1, p0, Lo9/d$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lo9/d$a;->h:I

    return-void
.end method

.method private final h(I)Z
    .locals 1

    if-ltz p1, :cond_0

    sget-object p0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {p0}, Lo9/d;->c()[Lo9/c;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final i()I
    .locals 1

    iget-object p0, p0, Lo9/d$a;->d:Lt9/f;

    invoke-interface {p0}, Lt9/f;->C0()B

    move-result p0

    const/16 v0, 0xff

    invoke-static {p0, v0}, Li9/d;->d(BI)I

    move-result p0

    return p0
.end method

.method private final l(I)V
    .locals 3

    invoke-direct {p0, p1}, Lo9/d$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {v0}, Lo9/d;->c()[Lo9/c;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p0, p0, Lo9/d$a;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {v0}, Lo9/d;->c()[Lo9/c;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lo9/d$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lo9/d$a;->e:[Lo9/c;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lo9/d$a;->c:Ljava/util/List;

    aget-object p1, v1, v0

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final n(I)V
    .locals 2

    invoke-direct {p0, p1}, Lo9/d$a;->f(I)Lt9/g;

    move-result-object p1

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v0

    new-instance v1, Lo9/c;

    invoke-direct {v1, p1, v0}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lo9/d$a;->g(ILo9/c;)V

    return-void
.end method

.method private final o()V
    .locals 3

    sget-object v0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo9/d;->a(Lt9/g;)Lt9/g;

    move-result-object v0

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v1

    new-instance v2, Lo9/c;

    invoke-direct {v2, v0, v1}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lo9/d$a;->g(ILo9/c;)V

    return-void
.end method

.method private final p(I)V
    .locals 2

    invoke-direct {p0, p1}, Lo9/d$a;->f(I)Lt9/g;

    move-result-object p1

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v0

    iget-object p0, p0, Lo9/d$a;->c:Ljava/util/List;

    new-instance v1, Lo9/c;

    invoke-direct {v1, p1, v0}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final q()V
    .locals 3

    sget-object v0, Lo9/d;->INSTANCE:Lo9/d;

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo9/d;->a(Lt9/g;)Lt9/g;

    move-result-object v0

    invoke-virtual {p0}, Lo9/d$a;->j()Lt9/g;

    move-result-object v1

    iget-object p0, p0, Lo9/d$a;->c:Ljava/util/List;

    new-instance v2, Lo9/c;

    invoke-direct {v2, v0, v1}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lo9/d$a;->c:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lo9/d$a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final j()Lt9/g;
    .locals 4

    invoke-direct {p0}, Lo9/d$a;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lo9/d$a;->m(II)I

    move-result v0

    int-to-long v2, v0

    if-eqz v1, :cond_1

    new-instance v0, Lt9/d;

    invoke-direct {v0}, Lt9/d;-><init>()V

    sget-object v1, Lo9/k;->INSTANCE:Lo9/k;

    iget-object p0, p0, Lo9/d$a;->d:Lt9/f;

    invoke-virtual {v1, p0, v2, v3, v0}, Lo9/k;->b(Lt9/f;JLt9/e;)V

    invoke-virtual {v0}, Lt9/d;->a0()Lt9/g;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lo9/d$a;->d:Lt9/f;

    invoke-interface {p0, v2, v3}, Lt9/f;->w(J)Lt9/g;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final k()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lo9/d$a;->d:Lt9/f;

    invoke-interface {v0}, Lt9/f;->S()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lo9/d$a;->d:Lt9/f;

    invoke-interface {v0}, Lt9/f;->C0()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Li9/d;->d(BI)I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lo9/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lo9/d$a;->l(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lo9/d$a;->o()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lo9/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lo9/d$a;->n(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lo9/d$a;->m(II)I

    move-result v0

    iput v0, p0, Lo9/d$a;->b:I

    if-ltz v0, :cond_3

    iget v1, p0, Lo9/d$a;->a:I

    if-gt v0, v1, :cond_3

    invoke-direct {p0}, Lo9/d$a;->a()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lo9/d$a;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lo9/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lo9/d$a;->p(I)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lo9/d$a;->q()V

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "index == 0"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method

.method public final m(II)I
    .locals 2

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lo9/d$a;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v0, p1

    add-int/2addr p2, p0

    return p2
.end method

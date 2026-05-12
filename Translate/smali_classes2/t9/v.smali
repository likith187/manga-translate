.class public final Lt9/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/v$a;
    }
.end annotation


# static fields
.field public static final h:Lt9/v$a;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lt9/v;

.field public g:Lt9/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt9/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt9/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt9/v;->h:Lt9/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lt9/v;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lt9/v;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lt9/v;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lt9/v;->a:[B

    .line 7
    iput p2, p0, Lt9/v;->b:I

    .line 8
    iput p3, p0, Lt9/v;->c:I

    .line 9
    iput-boolean p4, p0, Lt9/v;->d:Z

    .line 10
    iput-boolean p5, p0, Lt9/v;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lt9/v;->g:Lt9/v;

    if-eq v0, p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lt9/v;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lt9/v;->c:I

    iget v1, p0, Lt9/v;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lt9/v;->g:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v1, v1, Lt9/v;->c:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lt9/v;->g:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-boolean v2, v2, Lt9/v;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lt9/v;->g:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, v2, Lt9/v;->b:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lt9/v;->g:Lt9/v;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lt9/v;->f(Lt9/v;I)V

    invoke-virtual {p0}, Lt9/v;->b()Lt9/v;

    invoke-static {p0}, Lt9/w;->b(Lt9/v;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot compact"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lt9/v;
    .locals 4

    iget-object v0, p0, Lt9/v;->f:Lt9/v;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lt9/v;->g:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lt9/v;->f:Lt9/v;

    iput-object v3, v2, Lt9/v;->f:Lt9/v;

    iget-object v2, p0, Lt9/v;->f:Lt9/v;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lt9/v;->g:Lt9/v;

    iput-object v3, v2, Lt9/v;->g:Lt9/v;

    iput-object v1, p0, Lt9/v;->f:Lt9/v;

    iput-object v1, p0, Lt9/v;->g:Lt9/v;

    return-object v0
.end method

.method public final c(Lt9/v;)Lt9/v;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lt9/v;->g:Lt9/v;

    iget-object v0, p0, Lt9/v;->f:Lt9/v;

    iput-object v0, p1, Lt9/v;->f:Lt9/v;

    iget-object v0, p0, Lt9/v;->f:Lt9/v;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lt9/v;->g:Lt9/v;

    iput-object p1, p0, Lt9/v;->f:Lt9/v;

    return-object p1
.end method

.method public final d()Lt9/v;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt9/v;->d:Z

    new-instance v0, Lt9/v;

    iget-object v2, p0, Lt9/v;->a:[B

    iget v3, p0, Lt9/v;->b:I

    iget v4, p0, Lt9/v;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lt9/v;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)Lt9/v;
    .locals 8

    if-lez p1, :cond_1

    iget v0, p0, Lt9/v;->c:I

    iget v1, p0, Lt9/v;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lt9/v;->d()Lt9/v;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lt9/w;->c()Lt9/v;

    move-result-object v0

    iget-object v1, p0, Lt9/v;->a:[B

    iget-object v2, v0, Lt9/v;->a:[B

    iget v4, p0, Lt9/v;->b:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/i;->l([B[BIIIILjava/lang/Object;)[B

    :goto_0
    iget v1, v0, Lt9/v;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lt9/v;->c:I

    iget v1, p0, Lt9/v;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lt9/v;->b:I

    iget-object p0, p0, Lt9/v;->g:Lt9/v;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt9/v;->c(Lt9/v;)Lt9/v;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lt9/v;I)V
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lt9/v;->e:Z

    if-eqz v0, :cond_3

    iget v5, p1, Lt9/v;->c:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    iget-boolean v0, p1, Lt9/v;->d:Z

    if-nez v0, :cond_1

    add-int v0, v5, p2

    iget v4, p1, Lt9/v;->b:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    iget-object v2, p1, Lt9/v;->a:[B

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/i;->l([B[BIIIILjava/lang/Object;)[B

    iget v0, p1, Lt9/v;->c:I

    iget v1, p1, Lt9/v;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lt9/v;->c:I

    const/4 v0, 0x0

    iput v0, p1, Lt9/v;->b:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lt9/v;->a:[B

    iget-object v1, p1, Lt9/v;->a:[B

    iget v2, p1, Lt9/v;->c:I

    iget v3, p0, Lt9/v;->b:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/i;->g([B[BIII)[B

    iget v0, p1, Lt9/v;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lt9/v;->c:I

    iget p1, p0, Lt9/v;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lt9/v;->b:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lorg/opencv/core/Mat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lorg/opencv/core/Mat;->n_Mat()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1, p2, p3}, Lorg/opencv/core/Mat;->n_Mat(III)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(IIILaa/g;)V
    .locals 13

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p4

    .line 9
    iget-object v0, v0, Laa/g;->a:[D

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    const/4 v1, 0x1

    aget-wide v7, v0, v1

    const/4 v1, 0x2

    aget-wide v9, v0, v1

    const/4 v1, 0x3

    aget-wide v11, v0, v1

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-static/range {v2 .. v12}, Lorg/opencv/core/Mat;->n_Mat(IIIDDDD)J

    move-result-wide v0

    move-object v2, p0

    iput-wide v0, v2, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Native object address is NULL"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Laa/h;ILaa/g;)V
    .locals 13

    move-object v0, p1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-wide v1, v0, Laa/h;->a:D

    iget-wide v3, v0, Laa/h;->b:D

    move-object/from16 v0, p3

    iget-object v0, v0, Laa/g;->a:[D

    const/4 v5, 0x0

    aget-wide v5, v0, v5

    const/4 v7, 0x1

    aget-wide v7, v0, v7

    const/4 v9, 0x2

    aget-wide v9, v0, v9

    const/4 v11, 0x3

    aget-wide v11, v0, v11

    move-wide v0, v1

    move-wide v2, v3

    move v4, p2

    invoke-static/range {v0 .. v12}, Lorg/opencv/core/Mat;->n_Mat(DDIDDDD)J

    move-result-wide v0

    move-object v2, p0

    iput-wide v0, v2, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;Laa/e;)V
    .locals 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-wide v0, p1, Lorg/opencv/core/Mat;->a:J

    iget v2, p2, Laa/e;->b:I

    iget p1, p2, Laa/e;->f:I

    add-int v3, v2, p1

    iget v4, p2, Laa/e;->a:I

    iget p1, p2, Laa/e;->c:I

    add-int v5, v4, p1

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_Mat(JIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/opencv/core/Mat;->a:J

    return-void
.end method

.method public static A(Laa/h;I)Lorg/opencv/core/Mat;
    .locals 5

    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Laa/h;->a:D

    iget-wide v3, p0, Laa/h;->b:D

    invoke-static {v1, v2, v3, v4, p1}, Lorg/opencv/core/Mat;->n_zeros(DDI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native nGetB(JIII[B)I
.end method

.method private static native nGetD(JIII[D)I
.end method

.method private static native nGetF(JIII[F)I
.end method

.method private static native nGetI(JIII[I)I
.end method

.method private static native nGetS(JIII[S)I
.end method

.method private static native nPutB(JIII[B)I
.end method

.method private static native nPutF(JIII[F)I
.end method

.method private static native nPutI(JIII[I)I
.end method

.method private static native n_Mat()J
.end method

.method private static native n_Mat(DDIDDDD)J
.end method

.method private static native n_Mat(III)J
.end method

.method private static native n_Mat(IIIDDDD)J
.end method

.method private static native n_Mat(JIIII)J
.end method

.method private static native n_channels(J)I
.end method

.method private static native n_clone(J)J
.end method

.method private static native n_cols(J)I
.end method

.method private static native n_convertTo(JJI)V
.end method

.method private static native n_copyTo(JJJ)V
.end method

.method private static native n_create(JIII)V
.end method

.method private static native n_dataAddr(J)J
.end method

.method private static native n_delete(J)V
.end method

.method private static native n_dims(J)I
.end method

.method private static native n_elemSize(J)J
.end method

.method private static native n_isContinuous(J)Z
.end method

.method private static native n_isSubmatrix(J)Z
.end method

.method private static native n_release(J)V
.end method

.method private static native n_rows(J)I
.end method

.method private static native n_size(J)[D
.end method

.method private static native n_size_i(JI)I
.end method

.method private static native n_total(J)J
.end method

.method private static native n_type(J)I
.end method

.method private static native n_zeros(DDI)J
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_channels(J)I

    move-result p0

    return p0
.end method

.method public b()Lorg/opencv/core/Mat;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v1, v2}, Lorg/opencv/core/Mat;->n_clone(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->b()Lorg/opencv/core/Mat;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_cols(J)I

    move-result p0

    return p0
.end method

.method public e(Lorg/opencv/core/Mat;I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide p0, p1, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/opencv/core/Mat;->n_convertTo(JJI)V

    return-void
.end method

.method public f(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->a:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->n_copyTo(JJJ)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_delete(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g(III)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/core/Mat;->n_create(JIII)V

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_dataAddr(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_dims(J)I

    move-result p0

    return p0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_elemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(II[B)I
    .locals 6

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_3

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetB(JIII[B)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    array-length p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(II[D)I
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Lorg/opencv/core/Mat;->a:J

    array-length v7, p3

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Mat;->nGetD(JIII[D)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    array-length p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(II[F)I
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Lorg/opencv/core/Mat;->a:J

    array-length v7, p3

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Mat;->nGetF(JIII[F)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    array-length p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(II[I)I
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Lorg/opencv/core/Mat;->a:J

    array-length v7, p3

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Mat;->nGetI(JIII[I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    array-length p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(II[S)I
    .locals 6

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_3

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nGetS(JIII[S)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    array-length p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_isContinuous(J)Z

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_isSubmatrix(J)Z

    move-result p0

    return p0
.end method

.method public r(II[B)I
    .locals 6

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_3

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    array-length v4, p3

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Mat;->nPutB(JIII[B)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    array-length p2, p3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(II[F)I
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Lorg/opencv/core/Mat;->a:J

    array-length v7, p3

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Mat;->nPutF(JIII[F)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    array-length p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public t(II[I)I
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    if-eqz p3, :cond_2

    array-length v1, p3

    invoke-static {v0}, Laa/a;->i(I)I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laa/a;->j(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-wide v3, p0, Lorg/opencv/core/Mat;->a:J

    array-length v7, p3

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Mat;->nPutI(JIII[I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mat data type is not compatible: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Provided data element number ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    array-length p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") should be multiple of the Mat channels count ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Laa/a;->i(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->i()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "-1*-1*"

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->i()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/opencv/core/Mat;->w(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mat [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->z()I

    move-result v0

    invoke-static {v0}, Laa/a;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isCont="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->p()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSubmat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->q()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nativeObj=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dataAddr=0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_release(J)V

    return-void
.end method

.method public v()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_rows(J)I

    move-result p0

    return p0
.end method

.method public w(I)I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Mat;->n_size_i(JI)I

    move-result p0

    return p0
.end method

.method public x()Laa/h;
    .locals 3

    new-instance v0, Laa/h;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v1, v2}, Lorg/opencv/core/Mat;->n_size(J)[D

    move-result-object p0

    invoke-direct {v0, p0}, Laa/h;-><init>([D)V

    return-object v0
.end method

.method public y()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_total(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1}, Lorg/opencv/core/Mat;->n_type(J)I

    move-result p0

    return p0
.end method

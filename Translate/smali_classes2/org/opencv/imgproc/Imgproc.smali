.class public abstract Lorg/opencv/imgproc/Imgproc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide p0, p1, Lorg/opencv/core/Mat;->a:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/opencv/imgproc/Imgproc;->cvtColor_1(JJI)V

    return-void
.end method

.method public static b(Lorg/opencv/core/Mat;Ljava/util/List;Laa/g;)V
    .locals 15

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lba/a;->b(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    move-object v1, p0

    iget-wide v3, v1, Lorg/opencv/core/Mat;->a:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->a:J

    move-object/from16 v0, p2

    iget-object v0, v0, Laa/g;->a:[D

    aget-wide v7, v0, v2

    const/4 v1, 0x1

    aget-wide v9, v0, v1

    const/4 v1, 0x2

    aget-wide v11, v0, v1

    const/4 v1, 0x3

    aget-wide v13, v0, v1

    invoke-static/range {v3 .. v14}, Lorg/opencv/imgproc/Imgproc;->fillPoly_3(JJDDDD)V

    return-void
.end method

.method public static c(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 3

    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide p0, p1, Lorg/opencv/core/Mat;->a:J

    invoke-static {v1, v2, p0, p1}, Lorg/opencv/imgproc/Imgproc;->getPerspectiveTransform_1(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native cvtColor_1(JJI)V
.end method

.method public static d(ILaa/h;)Lorg/opencv/core/Mat;
    .locals 5

    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p1, Laa/h;->a:D

    iget-wide v3, p1, Laa/h;->b:D

    invoke-static {p0, v1, v2, v3, v4}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement_1(IDD)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static e(Laa/b;)Laa/f;
    .locals 3

    new-instance v0, Laa/f;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->a:J

    invoke-static {v1, v2}, Lorg/opencv/imgproc/Imgproc;->minAreaRect_0(J)[D

    move-result-object p0

    invoke-direct {v0, p0}, Laa/f;-><init>([D)V

    return-object v0
.end method

.method public static f(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)V
    .locals 7

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->a:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/imgproc/Imgproc;->morphologyEx_4(JJIJ)V

    return-void
.end method

.method private static native fillPoly_3(JJDDDD)V
.end method

.method public static g(Lorg/opencv/core/Mat;Ljava/util/List;ZLaa/g;I)V
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lba/a;->b(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    move-object/from16 v1, p0

    iget-wide v3, v1, Lorg/opencv/core/Mat;->a:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->a:J

    move-object/from16 v0, p3

    iget-object v0, v0, Laa/g;->a:[D

    aget-wide v8, v0, v2

    const/4 v1, 0x1

    aget-wide v10, v0, v1

    const/4 v1, 0x2

    aget-wide v12, v0, v1

    const/4 v1, 0x3

    aget-wide v14, v0, v1

    move/from16 v7, p2

    move/from16 v16, p4

    invoke-static/range {v3 .. v16}, Lorg/opencv/imgproc/Imgproc;->polylines_2(JJZDDDDI)V

    return-void
.end method

.method private static native getPerspectiveTransform_1(JJ)J
.end method

.method private static native getStructuringElement_1(IDD)J
.end method

.method public static h(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V
    .locals 8

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v4, p2, Laa/h;->a:D

    iget-wide v6, p2, Laa/h;->b:D

    invoke-static/range {v0 .. v7}, Lorg/opencv/imgproc/Imgproc;->resize_3(JJDD)V

    return-void
.end method

.method public static i(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D
    .locals 9

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/imgproc/Imgproc;->threshold_0(JJDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Laa/h;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->a:J

    iget-wide v6, p3, Laa/h;->a:D

    iget-wide v8, p3, Laa/h;->b:D

    invoke-static/range {v0 .. v9}, Lorg/opencv/imgproc/Imgproc;->warpPerspective_3(JJJDD)V

    return-void
.end method

.method private static native minAreaRect_0(J)[D
.end method

.method private static native morphologyEx_4(JJIJ)V
.end method

.method private static native polylines_2(JJZDDDDI)V
.end method

.method private static native resize_3(JJDD)V
.end method

.method private static native threshold_0(JJDDI)D
.end method

.method private static native warpPerspective_3(JJJDD)V
.end method

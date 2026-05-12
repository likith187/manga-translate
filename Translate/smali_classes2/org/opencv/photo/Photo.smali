.class public abstract Lorg/opencv/photo/Photo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9

    iget-wide v0, p0, Lorg/opencv/core/Mat;->a:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->a:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->a:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/photo/Photo;->inpaint_0(JJJDI)V

    return-void
.end method

.method private static native inpaint_0(JJJDI)V
.end method

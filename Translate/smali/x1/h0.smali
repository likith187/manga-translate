.class public Lx1/h0;
.super Lz1/f;
.source "SourceFile"


# direct methods
.method private constructor <init>(IIII)V
    .locals 7

    invoke-direct {p0}, Lz1/f;-><init>()V

    iput p1, p0, Lz1/c;->a:I

    invoke-virtual {p0, p2, p3, p4}, Lz1/c;->a(III)I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    iput v0, p0, Lz1/c;->b:I

    new-instance v6, Landroid/media/AudioRecord;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {p0, v6}, Lz1/f;->w(Landroid/media/AudioRecord;)V

    return-void
.end method

.method public static x()Lx1/h0;
    .locals 5

    new-instance v0, Lx1/h0;

    sget-object v1, Lz1/c;->i:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v3, v2}, Lx1/h0;-><init>(IIII)V

    return-object v0
.end method

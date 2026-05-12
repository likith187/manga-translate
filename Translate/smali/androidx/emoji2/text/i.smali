.class public abstract Landroidx/emoji2/text/i;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint$FontMetricsInt;

.field private final b:Landroidx/emoji2/text/o;

.field private c:S

.field private d:S

.field private e:F


# direct methods
.method constructor <init>(Landroidx/emoji2/text/o;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/i;->a:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, -0x1

    iput-short v0, p0, Landroidx/emoji2/text/i;->c:S

    iput-short v0, p0, Landroidx/emoji2/text/i;->d:S

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/emoji2/text/i;->e:F

    const-string v0, "rasterizer cannot be null"

    invoke-static {p1, v0}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/emoji2/text/o;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    return-object p0
.end method

.method final b()I
    .locals 0

    iget-short p0, p0, Landroidx/emoji2/text/i;->c:S

    return p0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-object p2, p0, Landroidx/emoji2/text/i;->a:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object p1, p0, Landroidx/emoji2/text/i;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    invoke-virtual {p2}, Landroidx/emoji2/text/o;->e()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroidx/emoji2/text/i;->e:F

    iget-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    invoke-virtual {p1}, Landroidx/emoji2/text/o;->e()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/emoji2/text/i;->e:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/i;->d:S

    iget-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    invoke-virtual {p1}, Landroidx/emoji2/text/o;->i()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/emoji2/text/i;->e:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/i;->c:S

    if-eqz p5, :cond_0

    iget-object p0, p0, Landroidx/emoji2/text/i;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    return p1
.end method

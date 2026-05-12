.class public final Lcom/coloros/translate/panel/GradientBorderView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/panel/GradientBorderView$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/coloros/translate/panel/GradientBorderView$a;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Matrix;

.field private final h:F

.field private final i:[I

.field private final j:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/panel/GradientBorderView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/panel/GradientBorderView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/panel/GradientBorderView;->k:Lcom/coloros/translate/panel/GradientBorderView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->b:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->c:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->f:Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/base/R$dimen;->common_dp_24:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->h:F

    .line 7
    const-string p1, "#10BFF7"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 8
    const-string v1, "#4A86FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 9
    const-string v2, "#C25DFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 10
    const-string v3, "#FF6536"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 11
    const-string v4, "#FFC219"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 12
    const-string v5, "#29E549"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    filled-new-array/range {v0 .. v6}, [I

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->i:[I

    const/4 p1, 0x7

    .line 15
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 16
    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->j:[F

    .line 17
    invoke-direct {p0}, Lcom/coloros/translate/panel/GradientBorderView;->a()V

    return-void

    :array_0
    .array-data 4
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3ef5c28f    # 0.48f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->b:Landroid/graphics/Path;

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->c:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->f:Landroid/graphics/Matrix;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/base/R$dimen;->common_dp_24:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->h:F

    .line 24
    const-string p1, "#10BFF7"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 25
    const-string p2, "#4A86FF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 26
    const-string p2, "#C25DFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 27
    const-string p2, "#FF6536"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 28
    const-string p2, "#FFC219"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 29
    const-string p2, "#29E549"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    filled-new-array/range {v0 .. v6}, [I

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->i:[I

    const/4 p1, 0x7

    .line 32
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 33
    iput-object p1, p0, Lcom/coloros/translate/panel/GradientBorderView;->j:[F

    .line 34
    invoke-direct {p0}, Lcom/coloros/translate/panel/GradientBorderView;->a()V

    return-void

    :array_0
    .array-data 4
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3ef5c28f    # 0.48f
        0x3f333333    # 0.7f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/base/R$dimen;->common_dp_1:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    int-to-float v1, v1

    div-float v2, v1, v2

    iget-object v4, p0, Lcom/coloros/translate/panel/GradientBorderView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/coloros/translate/panel/GradientBorderView;->f:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    new-instance v4, Landroid/graphics/SweepGradient;

    iget-object v5, p0, Lcom/coloros/translate/panel/GradientBorderView;->i:[I

    iget-object v6, p0, Lcom/coloros/translate/panel/GradientBorderView;->j:[F

    invoke-direct {v4, v3, v2, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iget-object v2, p0, Lcom/coloros/translate/panel/GradientBorderView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/coloros/translate/panel/GradientBorderView;->c:Landroid/graphics/RectF;

    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/coloros/translate/panel/GradientBorderView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coloros/translate/panel/GradientBorderView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coloros/translate/panel/GradientBorderView;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coloros/translate/panel/GradientBorderView;->h:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/coloros/translate/panel/GradientBorderView;->b:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/translate/panel/GradientBorderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

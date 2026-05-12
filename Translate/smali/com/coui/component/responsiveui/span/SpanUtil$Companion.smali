.class public final Lcom/coui/component/responsiveui/span/SpanUtil$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/component/responsiveui/span/SpanUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;-><init>()V

    return-void
.end method

.method public static synthetic calculateGapBetweenSpans$default(Lcom/coui/component/responsiveui/span/SpanUtil$Companion;IIIIIILjava/lang/Object;)F
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;->calculateGapBetweenSpans(IIIII)F

    move-result p0

    return p0
.end method

.method public static synthetic calculateSpanCount$default(Lcom/coui/component/responsiveui/span/SpanUtil$Companion;Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    move p4, p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/span/SpanUtil$Companion;->calculateSpanCount(Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateGapBetweenSpans(IIIII)F
    .locals 0

    const/4 p0, 0x1

    if-le p2, p0, :cond_1

    if-ltz p5, :cond_0

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p4

    mul-int/2addr p3, p2

    sub-int/2addr p1, p3

    int-to-float p0, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    int-to-float p1, p5

    invoke-static {p0, p1}, Lb9/d;->b(FF)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minGap must be equal or greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spanCounts must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateSpanCount(II)I
    .locals 0

    if-lez p1, :cond_2

    if-lez p2, :cond_1

    if-gt p2, p1, :cond_0

    .line 1
    div-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalColumns must be equal or greater than columnsPerSpan"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "columnsPerSpan must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalColumns must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final calculateSpanCount(Lcom/coui/component/responsiveui/unit/Dp;ILcom/coui/component/responsiveui/unit/Dp;I)I
    .locals 0

    const-string p0, "baseWidth"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutGridWindowWidth"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    .line 5
    invoke-virtual {p3, p1}, Lcom/coui/component/responsiveui/unit/Dp;->div(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p0

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-static {p0, p4}, Lb9/d;->c(II)I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spanCountPerBaseWidth must be equal or greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDEFAULT_BASE_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;
    .locals 0

    invoke-static {}, Lcom/coui/component/responsiveui/span/SpanUtil;->access$getDEFAULT_BASE_WIDTH$cp()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

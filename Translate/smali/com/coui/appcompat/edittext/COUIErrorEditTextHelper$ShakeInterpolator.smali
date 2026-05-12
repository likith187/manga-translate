.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShakeInterpolator"
.end annotation


# static fields
.field private static final DURATIONS:[I

.field private static final OFFSETS:[F

.field static final TOTAL_DURATION:I = 0x1c2

.field private static final progresses:[F


# instance fields
.field private final mBetweenInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->OFFSETS:[F

    const/16 v0, 0x85

    const/16 v1, 0x75

    const/16 v2, 0x53

    filled-new-array {v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->DURATIONS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->DURATIONS:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v2, v2, v0

    add-int/2addr v1, v2

    sget-object v2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v1

    const/high16 v4, 0x43e10000    # 450.0f

    div-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->progresses:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->mBetweenInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sget-object p1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;->OFFSETS:[F

    aget v1, p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v1, v2

    aget p1, p1, v0

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

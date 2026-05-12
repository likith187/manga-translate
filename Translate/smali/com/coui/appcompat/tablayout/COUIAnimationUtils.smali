.class public Lcom/coui/appcompat/tablayout/COUIAnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCALE_STANDARD:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lj0/b;

    invoke-direct {v0}, Lj0/b;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lj0/a;

    invoke-direct {v0}, Lj0/a;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lj0/c;

    invoke-direct {v0}, Lj0/c;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleStandard(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static lerp(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static lerp(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

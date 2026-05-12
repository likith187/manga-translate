.class public final Lcom/coui/component/responsiveui/unit/Dp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/unit/Dp$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;


# instance fields
.field private final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/unit/Dp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/coui/component/responsiveui/unit/Dp;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    iget p1, p1, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final div(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    iget p1, p1, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    div-float/2addr p0, p1

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/coui/component/responsiveui/unit/Dp;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/coui/component/responsiveui/unit/Dp;

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    iget p1, p1, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final minus(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    iget p1, p1, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    sub-float/2addr p0, p1

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    return-object v0
.end method

.method public final plus(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    iget p1, p1, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    add-float/2addr p0, p1

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    return-object v0
.end method

.method public final toPixel(Landroid/content/Context;)F
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/coui/component/responsiveui/unit/Dp;->a:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " dp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

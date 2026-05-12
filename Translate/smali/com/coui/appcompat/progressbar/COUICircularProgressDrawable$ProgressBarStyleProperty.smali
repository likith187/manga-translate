.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressBarStyleProperty"
.end annotation


# instance fields
.field private mCurrentBarColor:I

.field private mProgressBarCenterX:F

.field private mProgressBarCenterY:F

.field private mProgressBarColor:I

.field private mProgressBarCurrentOuterDiameter:F

.field private mProgressBarCurrentStrokeWidth:F

.field private mProgressBarErrorColor:I

.field private mProgressBarErrorOuterDiameter:F

.field private mProgressBarErrorStrokeWidth:F

.field private mProgressBarOuterDiameter:F

.field private mProgressBarStrokeWidth:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorOuterDiameter:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorStrokeWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterX:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterY:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarStrokeWidth:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarOuterDiameter:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarColor:I

    return-void
.end method


# virtual methods
.method public getCurrentBarColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mCurrentBarColor:I

    return p0
.end method

.method public getProgressBarCenterX()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterX:F

    return p0
.end method

.method public getProgressBarCenterY()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterY:F

    return p0
.end method

.method public getProgressBarColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarColor:I

    return p0
.end method

.method public getProgressBarCurrentOuterDiameter()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCurrentOuterDiameter:F

    return p0
.end method

.method public getProgressBarCurrentStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCurrentStrokeWidth:F

    return p0
.end method

.method public getProgressBarErrorColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorColor:I

    return p0
.end method

.method public getProgressBarErrorOuterDiameter()F
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorStrokeWidth:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarOuterDiameter:F

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorOuterDiameter:F

    return p0
.end method

.method public getProgressBarErrorStrokeWidth()F
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorStrokeWidth:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarStrokeWidth:F

    return p0

    :cond_0
    return v0
.end method

.method public getProgressBarOuterDiameter()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarOuterDiameter:F

    return p0
.end method

.method public getProgressBarStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarStrokeWidth:F

    return p0
.end method

.method public setCurrentBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mCurrentBarColor:I

    return-void
.end method

.method public setProgressBarCenterX(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterX:F

    return-void
.end method

.method public setProgressBarCenterY(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCenterY:F

    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarColor:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mCurrentBarColor:I

    return-void
.end method

.method public setProgressBarCurrentOuterDiameter(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar outer diameter should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCurrentOuterDiameter:F

    return-void
.end method

.method public setProgressBarCurrentStrokeWidth(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar stroke width should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarCurrentStrokeWidth:F

    return-void
.end method

.method public setProgressBarErrorColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorColor:I

    return-void
.end method

.method public setProgressBarErrorOuterDiameter(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar outer diameter should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorOuterDiameter:F

    return-void
.end method

.method public setProgressBarErrorStrokeWidth(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar stroke width should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarErrorStrokeWidth:F

    return-void
.end method

.method public setProgressBarOuterDiameter(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar outer diameter should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarOuterDiameter:F

    return-void
.end method

.method public setProgressBarStrokeWidth(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar stroke width should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->mProgressBarStrokeWidth:F

    return-void
.end method

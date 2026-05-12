.class public Lcom/coui/appcompat/preference/COUIRecommendedDrawable;
.super Lcom/google/android/material/shape/i;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/i;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mRadius:F

    iput p2, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mColor:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIRecommendedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

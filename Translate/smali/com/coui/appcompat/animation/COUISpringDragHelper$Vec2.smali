.class public Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/animation/COUISpringDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vec2"
.end annotation


# instance fields
.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    .line 6
    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    .line 3
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->getY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return p0
.end method

.method public set(FF)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    .line 4
    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return-void
.end method

.method public set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->getY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public La7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, La7/e;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, La7/e;->a:F

    .line 4
    iput p2, p0, La7/e;->b:F

    return-void
.end method


# virtual methods
.method public final a(La7/e;)La7/e;
    .locals 2

    iget v0, p0, La7/e;->a:F

    iget v1, p1, La7/e;->a:F

    add-float/2addr v0, v1

    iput v0, p0, La7/e;->a:F

    iget v0, p0, La7/e;->b:F

    iget p1, p1, La7/e;->b:F

    add-float/2addr v0, p1

    iput v0, p0, La7/e;->b:F

    return-object p0
.end method

.method public final b(F)La7/e;
    .locals 1

    iget v0, p0, La7/e;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, La7/e;->a:F

    iget v0, p0, La7/e;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, La7/e;->b:F

    return-object p0
.end method

.method public final c()La7/e;
    .locals 1

    iget v0, p0, La7/e;->a:F

    neg-float v0, v0

    iput v0, p0, La7/e;->a:F

    iget v0, p0, La7/e;->b:F

    neg-float v0, v0

    iput v0, p0, La7/e;->b:F

    return-object p0
.end method

.method public final d(FF)La7/e;
    .locals 0

    iput p1, p0, La7/e;->a:F

    iput p2, p0, La7/e;->b:F

    return-object p0
.end method

.method public final e(La7/e;)La7/e;
    .locals 1

    iget v0, p1, La7/e;->a:F

    iput v0, p0, La7/e;->a:F

    iget p1, p1, La7/e;->b:F

    iput p1, p0, La7/e;->b:F

    return-object p0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La7/e;->a:F

    iput v0, p0, La7/e;->b:F

    return-void
.end method

.method public final g(La7/e;)La7/e;
    .locals 2

    iget v0, p0, La7/e;->a:F

    iget v1, p1, La7/e;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, La7/e;->a:F

    iget v0, p0, La7/e;->b:F

    iget p1, p1, La7/e;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, La7/e;->b:F

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La7/e;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, La7/e;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

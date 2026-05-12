.class public La7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La7/e;

.field public final b:La7/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, La7/c;->a:La7/e;

    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, La7/c;->b:La7/e;

    return-void
.end method

.method public static final b(La7/c;La7/e;La7/e;)V
    .locals 4

    iget-object v0, p0, La7/c;->a:La7/e;

    iget v1, v0, La7/e;->a:F

    iget v2, p1, La7/e;->a:F

    mul-float/2addr v1, v2

    iget-object p0, p0, La7/c;->b:La7/e;

    iget v2, p0, La7/e;->a:F

    iget v3, p1, La7/e;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p2, La7/e;->a:F

    iget v0, v0, La7/e;->b:F

    iget p1, p1, La7/e;->a:F

    mul-float/2addr v0, p1

    iget p0, p0, La7/e;->b:F

    mul-float/2addr p0, v3

    add-float/2addr v0, p0

    iput v0, p2, La7/e;->b:F

    return-void
.end method


# virtual methods
.method public final a()La7/c;
    .locals 8

    iget-object v0, p0, La7/c;->a:La7/e;

    iget v1, v0, La7/e;->a:F

    iget-object v2, p0, La7/c;->b:La7/e;

    iget v3, v2, La7/e;->a:F

    iget v4, v0, La7/e;->b:F

    iget v5, v2, La7/e;->b:F

    mul-float v6, v1, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    :cond_0
    mul-float/2addr v5, v6

    iput v5, v0, La7/e;->a:F

    neg-float v5, v6

    mul-float/2addr v3, v5

    iput v3, v2, La7/e;->a:F

    mul-float/2addr v5, v4

    iput v5, v0, La7/e;->b:F

    mul-float/2addr v6, v1

    iput v6, v2, La7/e;->b:F

    return-object p0
.end method

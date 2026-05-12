.class public Lcom/google/android/material/shape/m;
.super Lcom/google/android/material/shape/e;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/m;->a:F

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/shape/p;FFF)V
    .locals 7

    mul-float p0, p4, p3

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v1, v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0, v0, v1}, Lcom/google/android/material/shape/p;->o(FFFF)V

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p4, p0

    mul-float v4, p4, p3

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v1, 0x0

    move-object v0, p1

    move v3, v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    return-void
.end method

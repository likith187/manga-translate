.class public Lcom/coui/appcompat/animation/COUIInEaseInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "SourceFile"


# static fields
.field private static final controlX1:F = 0.0f

.field private static final controlX2:F = 0.1f

.field private static final controlY1:F = 0.0f

.field private static final controlY2:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

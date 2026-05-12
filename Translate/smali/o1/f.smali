.class public Lo1/f;
.super Lo1/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/i0;Lo1/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo1/b;-><init>(Lcom/airbnb/lottie/i0;Lo1/e;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lo1/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    return-void
.end method

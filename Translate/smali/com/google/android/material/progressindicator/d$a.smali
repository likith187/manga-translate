.class Lcom/google/android/material/progressindicator/d$a;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/progressindicator/d;)F
    .locals 0

    invoke-static {p1}, Lcom/google/android/material/progressindicator/d;->t(Lcom/google/android/material/progressindicator/d;)F

    move-result p0

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public b(Lcom/google/android/material/progressindicator/d;F)V
    .locals 0

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p2, p0

    invoke-static {p1, p2}, Lcom/google/android/material/progressindicator/d;->u(Lcom/google/android/material/progressindicator/d;F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/d$a;->a(Lcom/google/android/material/progressindicator/d;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/d$a;->b(Lcom/google/android/material/progressindicator/d;F)V

    return-void
.end method

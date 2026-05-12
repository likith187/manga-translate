.class abstract Lcom/google/android/material/progressindicator/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/progressindicator/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/a;

    return-void
.end method


# virtual methods
.method abstract a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
.end method

.method abstract c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/f$a;I)V
.end method

.method abstract d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
.end method

.method abstract e()I
.end method

.method abstract f()I
.end method

.method g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->a:Lcom/google/android/material/progressindicator/a;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/a;->e()V

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/progressindicator/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    return-void
.end method

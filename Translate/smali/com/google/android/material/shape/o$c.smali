.class final Lcom/google/android/material/shape/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/shape/n;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lcom/google/android/material/shape/o$b;

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/n;FLandroid/graphics/RectF;Lcom/google/android/material/shape/o$b;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/shape/o$c;->d:Lcom/google/android/material/shape/o$b;

    iput-object p1, p0, Lcom/google/android/material/shape/o$c;->a:Lcom/google/android/material/shape/n;

    iput p2, p0, Lcom/google/android/material/shape/o$c;->e:F

    iput-object p3, p0, Lcom/google/android/material/shape/o$c;->c:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/google/android/material/shape/o$c;->b:Landroid/graphics/Path;

    return-void
.end method

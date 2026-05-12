.class abstract Lcom/google/android/material/shape/p$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# static fields
.field static final b:Landroid/graphics/Matrix;


# instance fields
.field final a:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/p$g;->b:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/p$g;->a:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Matrix;Lk4/a;ILandroid/graphics/Canvas;)V
.end method

.method public final b(Lk4/a;ILandroid/graphics/Canvas;)V
    .locals 1

    sget-object v0, Lcom/google/android/material/shape/p$g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/material/shape/p$g;->a(Landroid/graphics/Matrix;Lk4/a;ILandroid/graphics/Canvas;)V

    return-void
.end method

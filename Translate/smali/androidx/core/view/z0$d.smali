.class abstract Landroidx/core/view/z0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:J

.field private d:F


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/core/view/z0$d;->d:F

    iput p1, p0, Landroidx/core/view/z0$d;->a:I

    iput-object p2, p0, Landroidx/core/view/z0$d;->b:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroidx/core/view/z0$d;->c:J

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract b()F
.end method

.method public abstract c()I
.end method

.method public abstract d(F)V
.end method

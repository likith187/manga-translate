.class public Lc7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lb7/a;

.field public b:Lb7/a;

.field public final c:La7/e;

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, Lc7/c;->c:La7/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, La7/e;->d(FF)La7/e;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lc7/c;->d:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lc7/c;->e:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lc7/c;->f:F

    return-void
.end method

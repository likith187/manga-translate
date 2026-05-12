.class public Ll8/f$a;
.super Ll8/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:Landroid/util/Size;

.field public d:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;D)V
    .locals 4

    invoke-direct {p0}, Ll8/f;-><init>()V

    invoke-static {p1}, Ll8/f;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Ll8/f$a;->c:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p2

    double-to-int v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    mul-double/2addr v2, p2

    double-to-int p1, v2

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Ll8/f$a;->d:Landroid/util/Size;

    iput-wide p2, p0, Ll8/f$a;->a:D

    iput-wide p2, p0, Ll8/f$a;->b:D

    return-void
.end method


# virtual methods
.method public b(DD)[D
    .locals 2

    iget-wide v0, p0, Ll8/f$a;->a:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Ll8/f$a;->b:D

    mul-double/2addr p3, v0

    const/4 p0, 0x2

    new-array p0, p0, [D

    const/4 v0, 0x0

    aput-wide p1, p0, v0

    const/4 p1, 0x1

    aput-wide p3, p0, p1

    return-object p0
.end method

.method public c()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Ll8/f$a;->d:Landroid/util/Size;

    return-object p0
.end method

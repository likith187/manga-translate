.class abstract Landroidx/vectordrawable/graphics/drawable/g$f;
.super Landroidx/vectordrawable/graphics/drawable/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Lu/g$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/g$e;-><init>(Landroidx/vectordrawable/graphics/drawable/g$a;)V

    .line 2
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/g$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/g$e;-><init>(Landroidx/vectordrawable/graphics/drawable/g$a;)V

    .line 5
    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->c:I

    .line 7
    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->d:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->d:I

    .line 9
    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    invoke-static {p1}, Lu/g;->f([Lu/g$b;)[Lu/g$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d(Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lu/g$b;->h([Lu/g$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public getPathData()[Lu/g$b;
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setPathData([Lu/g$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    invoke-static {v0, p1}, Lu/g;->b([Lu/g$b;[Lu/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lu/g;->f([Lu/g$b;)[Lu/g$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Lu/g$b;

    invoke-static {p0, p1}, Lu/g;->k([Lu/g$b;[Lu/g$b;)V

    :goto_0
    return-void
.end method

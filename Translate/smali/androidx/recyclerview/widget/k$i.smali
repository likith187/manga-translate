.class Landroidx/recyclerview/widget/k$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/k$i;->c:I

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->d:I

    iget p0, p0, Landroidx/recyclerview/widget/k$i;->b:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method b()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/k$i;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->c:I

    iget p0, p0, Landroidx/recyclerview/widget/k$i;->a:I

    sub-int/2addr v1, p0

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method c()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/k$i;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->c:I

    iget p0, p0, Landroidx/recyclerview/widget/k$i;->a:I

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d()Landroidx/recyclerview/widget/k$d;
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/k$i;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/k$d;

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/k$i;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$i;->a()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/k$d;-><init>(III)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/recyclerview/widget/k$d;

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/k$i;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$i;->a()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/k$d;-><init>(III)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/k$d;

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->a:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/k$i;->b:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k$i;->a()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/k$d;-><init>(III)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/recyclerview/widget/k$d;

    iget v1, p0, Landroidx/recyclerview/widget/k$i;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/k$i;->b:I

    iget p0, p0, Landroidx/recyclerview/widget/k$i;->c:I

    sub-int/2addr p0, v1

    invoke-direct {v0, v1, v2, p0}, Landroidx/recyclerview/widget/k$d;-><init>(III)V

    return-object v0
.end method

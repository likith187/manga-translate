.class public Lo1/g;
.super Lo1/b;
.source "SourceFile"


# instance fields
.field private final D:Li1/d;

.field private final E:Lo1/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/i0;Lo1/e;Lo1/c;Lcom/airbnb/lottie/j;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lo1/b;-><init>(Lcom/airbnb/lottie/i0;Lo1/e;)V

    iput-object p3, p0, Lo1/g;->E:Lo1/c;

    new-instance p3, Ln1/q;

    invoke-virtual {p2}, Lo1/e;->o()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Ln1/q;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Li1/d;

    invoke-direct {p2, p1, p0, p3, p4}, Li1/d;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/q;Lcom/airbnb/lottie/j;)V

    iput-object p2, p0, Lo1/g;->D:Li1/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Li1/d;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected J(Ll1/e;ILjava/util/List;Ll1/e;)V
    .locals 0

    iget-object p0, p0, Lo1/g;->D:Li1/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Li1/d;->g(Ll1/e;ILjava/util/List;Ll1/e;)V

    return-void
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lo1/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lo1/g;->D:Li1/d;

    iget-object p0, p0, Lo1/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Li1/d;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, Lo1/g;->D:Li1/d;

    invoke-virtual {p0, p1, p2, p3}, Li1/d;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public x()Ln1/a;
    .locals 1

    invoke-super {p0}, Lo1/b;->x()Ln1/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lo1/g;->E:Lo1/c;

    invoke-virtual {p0}, Lo1/b;->x()Ln1/a;

    move-result-object p0

    return-object p0
.end method

.method public z()Lq1/j;
    .locals 1

    invoke-super {p0}, Lo1/b;->z()Lq1/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lo1/g;->E:Lo1/c;

    invoke-virtual {p0}, Lo1/b;->z()Lq1/j;

    move-result-object p0

    return-object p0
.end method

.class public Li6/g;
.super Li6/b;
.source "SourceFile"


# instance fields
.field private final D:Lc6/d;

.field private final E:Li6/c;


# direct methods
.method constructor <init>(Lcom/oplus/anim/o;Li6/e;Li6/c;Lcom/oplus/anim/a;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Li6/b;-><init>(Lcom/oplus/anim/o;Li6/e;)V

    iput-object p3, p0, Li6/g;->E:Li6/c;

    new-instance p3, Lh6/p;

    invoke-virtual {p2}, Li6/e;->n()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lh6/p;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lc6/d;

    invoke-direct {p2, p1, p0, p3, p4}, Lc6/d;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/p;Lcom/oplus/anim/a;)V

    iput-object p2, p0, Li6/g;->D:Lc6/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lc6/d;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected I(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 0

    iget-object p0, p0, Li6/g;->D:Lc6/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc6/d;->i(Lf6/f;ILjava/util/List;Lf6/f;)V

    return-void
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Li6/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Li6/g;->D:Lc6/d;

    iget-object p0, p0, Li6/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lc6/d;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, Li6/g;->D:Lc6/d;

    invoke-virtual {p0, p1, p2, p3}, Lc6/d;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public w()Lh6/a;
    .locals 1

    invoke-super {p0}, Li6/b;->w()Lh6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Li6/g;->E:Li6/c;

    invoke-virtual {p0}, Li6/b;->w()Lh6/a;

    move-result-object p0

    return-object p0
.end method

.method public y()Lk6/j;
    .locals 1

    invoke-super {p0}, Li6/b;->y()Lk6/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Li6/g;->E:Li6/c;

    invoke-virtual {p0}, Li6/b;->y()Lk6/j;

    move-result-object p0

    return-object p0
.end method

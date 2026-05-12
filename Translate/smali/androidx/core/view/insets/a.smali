.class Landroidx/core/view/insets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/insets/d$c;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Landroidx/core/view/insets/d;

.field private c:Lu/e;

.field private d:Lu/e;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Landroidx/core/view/insets/d;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    sget-object v0, Lu/e;->e:Lu/e;

    iput-object v0, p0, Landroidx/core/view/insets/a;->c:Lu/e;

    iput-object v0, p0, Landroidx/core/view/insets/a;->d:Lu/e;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/a;->e(Ljava/util/List;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/a;->e(Ljava/util/List;Z)V

    invoke-virtual {p1, p0}, Landroidx/core/view/insets/d;->g(Landroidx/core/view/insets/d$c;)V

    iput-object p1, p0, Landroidx/core/view/insets/a;->b:Landroidx/core/view/insets/d;

    return-void
.end method

.method private e(Ljava/util/List;Z)V
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private i()V
    .locals 1

    sget-object v0, Lu/e;->e:Lu/e;

    iget-object v0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p1, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b(ILu/e;Landroid/graphics/RectF;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lu/e;Lu/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/insets/a;->c:Lu/e;

    iput-object p2, p0, Landroidx/core/view/insets/a;->d:Lu/e;

    invoke-direct {p0}, Landroidx/core/view/insets/a;->i()V

    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/view/insets/a;->e:I

    return-void
.end method

.method f()V
    .locals 2

    iget-boolean v0, p0, Landroidx/core/view/insets/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/view/insets/a;->f:Z

    iget-object v1, p0, Landroidx/core/view/insets/a;->b:Landroidx/core/view/insets/d;

    invoke-virtual {v1, p0}, Landroidx/core/view/insets/d;->n(Landroidx/core/view/insets/d$c;)V

    iget-object v1, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_1

    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method g(I)Lf0/a;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method h()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/insets/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onAnimationEnd()V
    .locals 3

    iget v0, p0, Landroidx/core/view/insets/a;->e:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/core/view/insets/a;->e:I

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/core/view/insets/a;->i()V

    :cond_1
    return-void
.end method

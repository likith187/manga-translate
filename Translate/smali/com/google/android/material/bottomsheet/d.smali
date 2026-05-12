.class Lcom/google/android/material/bottomsheet/d;
.super Landroidx/core/view/z0$b;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/view/z0$b;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/d;->d:[I

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/z0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onPrepare(Landroidx/core/view/z0;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/d;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/d;->d:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/google/android/material/bottomsheet/d;->b:I

    return-void
.end method

.method public onProgress(Landroidx/core/view/a1;Ljava/util/List;)Landroidx/core/view/a1;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/z0;

    invoke-virtual {v0}, Landroidx/core/view/z0;->c()I

    move-result v1

    invoke-static {}, Landroidx/core/view/a1$m;->a()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, p0, Lcom/google/android/material/bottomsheet/d;->c:I

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroidx/core/view/z0;->b()F

    move-result v0

    invoke-static {p2, v1, v0}, Lx3/a;->c(IIF)I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-object p1
.end method

.method public onStart(Landroidx/core/view/z0;Landroidx/core/view/z0$a;)Landroidx/core/view/z0$a;
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/d;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/d;->d:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/d;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/bottomsheet/d;->c:I

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/d;->a:Landroid/view/View;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-object p2
.end method

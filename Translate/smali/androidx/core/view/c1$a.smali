.class Landroidx/core/view/c1$a;
.super Landroidx/core/view/c1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/view/c1;

.field final b:Landroid/view/WindowInsetsController;

.field final c:Landroidx/core/view/h0;

.field private final d:Landroidx/collection/i;

.field protected e:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/c1;Landroidx/core/view/h0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/c1$a;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    .line 2
    iput-object p1, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/core/view/c1$d;-><init>()V

    .line 4
    new-instance v0, Landroidx/collection/i;

    invoke-direct {v0}, Landroidx/collection/i;-><init>()V

    iput-object v0, p0, Landroidx/core/view/c1$a;->d:Landroidx/collection/i;

    .line 5
    iput-object p1, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    .line 6
    iput-object p2, p0, Landroidx/core/view/c1$a;->a:Landroidx/core/view/c1;

    .line 7
    iput-object p3, p0, Landroidx/core/view/c1$a;->c:Landroidx/core/view/h0;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/c1$a;->c:Landroidx/core/view/h0;

    invoke-virtual {v0}, Landroidx/core/view/h0;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/c1$a;->f(I)V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/c1$a;->g(I)V

    :cond_2
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/c1$a;->f(I)V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/c1$a;->g(I)V

    :cond_2
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method e(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/c1$a;->c:Landroidx/core/view/h0;

    invoke-virtual {v0}, Landroidx/core/view/h0;->b()V

    :cond_0
    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V

    return-void
.end method

.method protected f(I)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected g(I)V
    .locals 1

    iget-object p0, p0, Landroidx/core/view/c1$a;->e:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

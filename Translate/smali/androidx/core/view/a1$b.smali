.class abstract Landroidx/core/view/a1$b;
.super Landroidx/core/view/a1$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/a1$e;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/a1$e;-><init>(Landroidx/core/view/a1;)V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/a1;->x()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/a1;
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/a1$e;->a()V

    iget-object v0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object v0

    iget-object p0, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    invoke-virtual {v0, p0}, Landroidx/core/view/a1;->t([Lu/e;)V

    return-object v0
.end method

.method c(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lu/e;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lu/e;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lu/e;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method f(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lu/e;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method g(Lu/e;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$b;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lu/e;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

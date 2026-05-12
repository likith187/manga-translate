.class Landroidx/core/view/a1$g;
.super Landroidx/core/view/a1$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private i:Lu/e;


# direct methods
.method constructor <init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$f;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroidx/core/view/a1$g;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$f;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$f;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    .line 5
    iget-object p1, p2, Landroidx/core/view/a1$g;->i:Lu/e;

    iput-object p1, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method c()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method final j()Lu/e;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lu/e;->c(IIII)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/a1$g;->i:Lu/e;

    return-object p0
.end method

.method o()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method

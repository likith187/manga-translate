.class Landroidx/core/view/a1$j;
.super Landroidx/core/view/a1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field static final m:Landroidx/core/view/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object v0

    sput-object v0, Landroidx/core/view/a1$j;->m:Landroidx/core/view/a1;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$i;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroidx/core/view/a1$j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$i;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$i;)V

    return-void
.end method


# virtual methods
.method final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public g(I)Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/a1$n;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lu/e;->d(Landroid/graphics/Insets;)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public h(I)Lu/e;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/a1$n;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lu/e;->d(Landroid/graphics/Insets;)Lu/e;

    move-result-object p0

    return-object p0
.end method

.method public q(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/a1$n;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    return p0
.end method

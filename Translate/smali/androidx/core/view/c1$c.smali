.class Landroidx/core/view/c1$c;
.super Landroidx/core/view/c1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/c1;Landroidx/core/view/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/c1$b;-><init>(Landroid/view/Window;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/c1$b;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1$a;->b:Landroid/view/WindowInsetsController;

    invoke-interface {p0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

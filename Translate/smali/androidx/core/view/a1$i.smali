.class Landroidx/core/view/a1$i;
.super Landroidx/core/view/a1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private j:Lu/e;

.field private k:Lu/e;

.field private l:Lu/e;


# direct methods
.method constructor <init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$h;-><init>(Landroidx/core/view/a1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/a1$i;->j:Lu/e;

    .line 3
    iput-object p1, p0, Landroidx/core/view/a1$i;->k:Lu/e;

    .line 4
    iput-object p1, p0, Landroidx/core/view/a1$i;->l:Lu/e;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;Landroidx/core/view/a1$i;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/core/view/a1$h;-><init>(Landroidx/core/view/a1;Landroidx/core/view/a1$h;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/core/view/a1$i;->j:Lu/e;

    .line 7
    iput-object p1, p0, Landroidx/core/view/a1$i;->k:Lu/e;

    .line 8
    iput-object p1, p0, Landroidx/core/view/a1$i;->l:Lu/e;

    return-void
.end method


# virtual methods
.method i()Lu/e;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$i;->k:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lu/e;->d(Landroid/graphics/Insets;)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/a1$i;->k:Lu/e;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/a1$i;->k:Lu/e;

    return-object p0
.end method

.method k()Lu/e;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$i;->j:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lu/e;->d(Landroid/graphics/Insets;)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/a1$i;->j:Lu/e;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/a1$i;->j:Lu/e;

    return-object p0
.end method

.method m()Lu/e;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$i;->l:Lu/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lu/e;->d(Landroid/graphics/Insets;)Lu/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/a1$i;->l:Lu/e;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/a1$i;->l:Lu/e;

    return-object p0
.end method

.method n(IIII)Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/a1;->y(Landroid/view/WindowInsets;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

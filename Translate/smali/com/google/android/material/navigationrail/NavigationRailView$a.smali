.class Lcom/google/android/material/navigationrail/NavigationRailView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigationrail/NavigationRailView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$a;->a:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;
    .locals 3

    invoke-static {}, Landroidx/core/view/a1$m;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$a;->a:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->e(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->f(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v2, v0, Lu/e;->b:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$a;->a:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->g(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/navigationrail/NavigationRailView;->f(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget v2, v0, Lu/e;->d:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$a;->a:Lcom/google/android/material/navigationrail/NavigationRailView;

    invoke-static {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->h(Lcom/google/android/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/material/navigationrail/NavigationRailView;->f(Lcom/google/android/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lu/e;->c:I

    goto :goto_0

    :cond_2
    iget v0, v0, Lu/e;->a:I

    :goto_0
    add-int/2addr p0, v0

    iput p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :cond_3
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method

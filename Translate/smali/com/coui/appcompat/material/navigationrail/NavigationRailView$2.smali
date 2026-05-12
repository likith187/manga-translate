.class Lcom/coui/appcompat/material/navigationrail/NavigationRailView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/material/navigationrail/NavigationRailView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/material/navigationrail/NavigationRailView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/material/navigationrail/NavigationRailView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/material/navigationrail/NavigationRailView$2;->this$0:Lcom/coui/appcompat/material/navigationrail/NavigationRailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/material/navigationrail/NavigationRailView$2;->this$0:Lcom/coui/appcompat/material/navigationrail/NavigationRailView;

    invoke-static {v0}, Lcom/coui/appcompat/material/navigationrail/NavigationRailView;->access$000(Lcom/coui/appcompat/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/material/navigationrail/NavigationRailView;->access$100(Lcom/coui/appcompat/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    invoke-static {}, Landroidx/core/view/a1$m;->f()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v1

    iget v1, v1, Lu/e;->b:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/material/navigationrail/NavigationRailView$2;->this$0:Lcom/coui/appcompat/material/navigationrail/NavigationRailView;

    invoke-static {p0}, Lcom/coui/appcompat/material/navigationrail/NavigationRailView;->access$200(Lcom/coui/appcompat/material/navigationrail/NavigationRailView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/material/navigationrail/NavigationRailView;->access$100(Lcom/coui/appcompat/material/navigationrail/NavigationRailView;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-static {}, Landroidx/core/view/a1$m;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v0

    iget v0, v0, Lu/e;->d:I

    add-int/2addr p0, v0

    iput p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    :cond_1
    invoke-static {p1}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/a1;->k()I

    move-result p0

    invoke-virtual {p2}, Landroidx/core/view/a1;->l()I

    move-result v1

    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_3

    move p0, v1

    :cond_3
    add-int/2addr v2, p0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    return-object p2
.end method

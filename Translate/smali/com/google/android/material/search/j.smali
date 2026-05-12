.class public final synthetic Lcom/google/android/material/search/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/j;->a:Lcom/google/android/material/search/SearchView;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/j;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchView;->g(Lcom/google/android/material/search/SearchView;Landroid/view/View;Landroidx/core/view/a1;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

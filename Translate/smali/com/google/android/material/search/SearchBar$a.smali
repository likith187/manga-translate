.class Lcom/google/android/material/search/SearchBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBar;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$a;->a:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$a;->a:Lcom/google/android/material/search/SearchBar;

    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->i(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar$a;->a:Lcom/google/android/material/search/SearchBar;

    invoke-static {p0}, Lcom/google/android/material/search/SearchBar;->j(Lcom/google/android/material/search/SearchBar;)Ld0/c$a;

    move-result-object p0

    invoke-static {p1, p0}, Ld0/c;->a(Landroid/view/accessibility/AccessibilityManager;Ld0/c$a;)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/search/SearchBar$a;->a:Lcom/google/android/material/search/SearchBar;

    invoke-static {p1}, Lcom/google/android/material/search/SearchBar;->i(Lcom/google/android/material/search/SearchBar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/search/SearchBar$a;->a:Lcom/google/android/material/search/SearchBar;

    invoke-static {p0}, Lcom/google/android/material/search/SearchBar;->j(Lcom/google/android/material/search/SearchBar;)Ld0/c$a;

    move-result-object p0

    invoke-static {p1, p0}, Ld0/c;->c(Landroid/view/accessibility/AccessibilityManager;Ld0/c$a;)Z

    return-void
.end method

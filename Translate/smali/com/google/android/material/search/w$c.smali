.class Lcom/google/android/material/search/w$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/w;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/search/w;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-static {p1}, Lcom/google/android/material/search/w;->f(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-static {p1}, Lcom/google/android/material/search/w;->f(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->F()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-static {p0}, Lcom/google/android/material/search/w;->f(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchView;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/search/SearchView$b;->SHOWN:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$b;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-static {p1}, Lcom/google/android/material/search/w;->g(Lcom/google/android/material/search/w;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/search/w$c;->a:Lcom/google/android/material/search/w;

    invoke-static {p0}, Lcom/google/android/material/search/w;->f(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchView;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/search/SearchView$b;->SHOWING:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$b;)V

    return-void
.end method

.class Lcom/google/android/material/search/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private d:Landroid/animation/Animator;

.field private e:Landroid/animation/Animator;

.field private f:Z

.field private g:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/c;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/c;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/c;->c:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/c;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/c;->g:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/search/c;->f:Z

    return-void
.end method

.method b(Lcom/google/android/material/search/SearchBar;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/c;->d:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/c;->e:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

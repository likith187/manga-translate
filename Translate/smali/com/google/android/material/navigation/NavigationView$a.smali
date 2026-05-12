.class Lcom/google/android/material/navigation/NavigationView$a;
.super Landroidx/drawerlayout/widget/DrawerLayout$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$a;->a:Lcom/google/android/material/navigation/NavigationView;

    if-ne p1, p0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/navigation/NavigationView;->b(Lcom/google/android/material/navigation/NavigationView;)Lg4/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/material/navigation/e;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/e;-><init>(Lg4/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$a;->a:Lcom/google/android/material/navigation/NavigationView;

    if-ne p1, v0, :cond_0

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->b(Lcom/google/android/material/navigation/NavigationView;)Lg4/c;

    move-result-object p1

    invoke-virtual {p1}, Lg4/c;->f()V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {p0}, Lcom/google/android/material/navigation/NavigationView;->c(Lcom/google/android/material/navigation/NavigationView;)V

    :cond_0
    return-void
.end method

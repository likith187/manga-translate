.class Landroidx/appcompat/app/AppCompatDelegateImpl$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/b$a;

.field final synthetic b:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/view/b$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a:Landroidx/appcompat/view/b$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public b(Landroidx/appcompat/view/b;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->j0()V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/core/view/m0;->d(Landroid/view/View;)Landroidx/core/view/u0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/u0;->b(F)Landroidx/core/view/u0;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/core/view/u0;

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/core/view/u0;

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$i$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i$a;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl$i;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/u0;->i(Landroidx/core/view/v0;)Landroidx/core/view/u0;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroidx/appcompat/view/b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->onSupportActionModeFinished(Landroidx/appcompat/view/b;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->x:Landroidx/appcompat/view/b;

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->c1()V

    return-void
.end method

.method public c(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->c(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public d(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a:Landroidx/appcompat/view/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/b$a;->d(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

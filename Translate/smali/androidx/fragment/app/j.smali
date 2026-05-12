.class public Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/l;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    return-void
.end method

.method public static b(Landroidx/fragment/app/l;)Landroidx/fragment/app/j;
    .locals 2

    new-instance v0, Landroidx/fragment/app/j;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/l;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/l;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object v0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p0, p1}, Landroidx/fragment/app/FragmentManager;->l(Landroidx/fragment/app/l;Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->w()V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->z(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->A()V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->C()V

    return-void
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->L()V

    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->P()V

    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Q()V

    return-void
.end method

.method public j()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->S()V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    move-result p0

    return p0
.end method

.method public l()Landroidx/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public m()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->Y0()V

    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->v0()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

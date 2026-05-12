.class Landroidx/appcompat/app/AppCompatDelegateImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->e0()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$b;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 3

    invoke-virtual {p2}, Landroidx/core/view/a1;->m()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$b;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->e1(Landroidx/core/view/a1;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/a1;->k()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/a1;->l()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/a1;->j()I

    move-result v2

    invoke-virtual {p2, v0, p0, v1, v2}, Landroidx/core/view/a1;->s(IIII)Landroidx/core/view/a1;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/m0;->V(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

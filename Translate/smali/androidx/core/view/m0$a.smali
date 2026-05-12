.class Landroidx/core/view/m0$a;
.super Landroidx/core/view/m0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/m0;->i0()Landroidx/core/view/m0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/m0$f;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/core/view/m0$a;->h(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic d(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0$a;->i(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

.method bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0$a;->j(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method h(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p1}, Landroidx/core/view/m0$l;->c(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method i(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/m0$l;->f(Landroid/view/View;Z)V

    return-void
.end method

.method j(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0$f;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.class Landroidx/core/view/m0$c;
.super Landroidx/core/view/m0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/m0;->H0()Landroidx/core/view/m0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/m0$f;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/core/view/m0$c;->h(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic d(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0$c;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/m0$c;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method h(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Landroidx/core/view/m0$n;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method i(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/core/view/m0$n;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.class public abstract Lcom/oplus/vfxsdk/common/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;
    .locals 0

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->h()Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;
    .locals 0

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->k()Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)[Lcom/oplus/vfxsdk/common/PassParams;
    .locals 1

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->o(Ljava/lang/String;)[Lcom/oplus/vfxsdk/common/PassParams;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;ZLw8/a;)V
    .locals 1

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/common/a;->y(Ljava/lang/String;ZLw8/a;)V

    :cond_0
    return-void
.end method

.method public static e(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static f(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->B(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static g(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->C(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public static h(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static j(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->G(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public static k(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lw8/a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->H(Ljava/lang/String;Lw8/a;)V

    :cond_0
    return-void
.end method

.method public static l(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->I(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V

    :cond_0
    return-void
.end method

.method public static m(Lcom/oplus/vfxsdk/common/q;Ljava/lang/String;Lw8/l;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/vfxsdk/common/q;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;->J(Ljava/lang/String;Lw8/l;)V

    :cond_0
    return-void
.end method

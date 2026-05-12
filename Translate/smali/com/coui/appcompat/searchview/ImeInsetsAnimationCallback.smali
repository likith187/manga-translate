.class public final Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;
.super Landroidx/core/view/z0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;
    }
.end annotation


# instance fields
.field private imeListener:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/z0$b;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getImeListener()Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->imeListener:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;

    return-object p0
.end method

.method public onProgress(Landroidx/core/view/a1;Ljava/util/List;)Landroidx/core/view/a1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/a1;",
            "Ljava/util/List<",
            "Landroidx/core/view/z0;",
            ">;)",
            "Landroidx/core/view/a1;"
        }
    .end annotation

    const-string p0, "insets"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "runningAnimations"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onStart(Landroidx/core/view/z0;Landroidx/core/view/z0$a;)Landroidx/core/view/z0$a;
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/core/view/z0;->c()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->imeListener:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;->onImeAnimStart()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/z0$b;->onStart(Landroidx/core/view/z0;Landroidx/core/view/z0$a;)Landroidx/core/view/z0$a;

    move-result-object p0

    const-string p1, "super.onStart(animation, bounds)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setImeAnimationListener(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->imeListener:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;

    return-void
.end method

.method public final setImeListener(Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback;->imeListener:Lcom/coui/appcompat/searchview/ImeInsetsAnimationCallback$OnImeAnimationListener;

    return-void
.end method

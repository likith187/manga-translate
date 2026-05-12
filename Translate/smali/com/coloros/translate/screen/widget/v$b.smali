.class public final Lcom/coloros/translate/screen/widget/v$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/v;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/v;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/v;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/v$b;->a:Lcom/coloros/translate/screen/widget/v;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/v$b;->a:Lcom/coloros/translate/screen/widget/v;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/v;->c(Lcom/coloros/translate/screen/widget/v;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/v$b;->a:Lcom/coloros/translate/screen/widget/v;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/v;->c(Lcom/coloros/translate/screen/widget/v;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

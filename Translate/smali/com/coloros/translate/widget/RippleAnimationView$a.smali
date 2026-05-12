.class public final Lcom/coloros/translate/widget/RippleAnimationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/widget/RippleAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/widget/RippleAnimationView;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/widget/RippleAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMPlayStatus()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v4, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMThirdRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleView;->e()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0, v2}, Lcom/coloros/translate/widget/RippleAnimationView;->setMPlayStatus(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMThirdRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMSecondRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleView;->e()V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0, v4}, Lcom/coloros/translate/widget/RippleAnimationView;->setMPlayStatus(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMSecondRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMFirstRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleView;->e()V

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/widget/RippleAnimationView;->setMPlayStatus(I)V

    iget-object v0, p0, Lcom/coloros/translate/widget/RippleAnimationView$a;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMFirstRipple()Lcom/coloros/translate/widget/RippleView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

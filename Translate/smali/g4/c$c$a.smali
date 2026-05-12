.class Lg4/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/c$c;->c(Lg4/b;)Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg4/b;

.field final synthetic b:Lg4/c$c;


# direct methods
.method constructor <init>(Lg4/c$c;Lg4/b;)V
    .locals 0

    iput-object p1, p0, Lg4/c$c$a;->b:Lg4/c$c;

    iput-object p2, p0, Lg4/c$c$a;->a:Lg4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lg4/c$c$a;->b:Lg4/c$c;

    invoke-virtual {v0}, Lg4/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lg4/c$c$a;->a:Lg4/b;

    invoke-interface {p0}, Lg4/b;->cancelBackProgress()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lg4/c$c$a;->a:Lg4/b;

    invoke-interface {p0}, Lg4/b;->handleBackInvoked()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Lg4/c$c$a;->b:Lg4/c$c;

    invoke-virtual {v0}, Lg4/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lg4/c$c$a;->a:Lg4/b;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lg4/b;->updateBackProgress(Landroidx/activity/b;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Lg4/c$c$a;->b:Lg4/c$c;

    invoke-virtual {v0}, Lg4/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lg4/c$c$a;->a:Lg4/b;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lg4/b;->startBackProgress(Landroidx/activity/b;)V

    return-void
.end method

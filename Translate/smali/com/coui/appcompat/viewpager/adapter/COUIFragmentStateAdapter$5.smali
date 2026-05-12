.class Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;->scheduleGracePeriodEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;->this$0:Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/adapter/COUIFragmentStateAdapter$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    :cond_0
    return-void
.end method

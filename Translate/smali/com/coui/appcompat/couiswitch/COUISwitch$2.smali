.class Lcom/coui/appcompat/couiswitch/COUISwitch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/couiswitch/COUISwitch;->performFeedBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$2;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x107

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$2;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$100(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$2;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-static {v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->access$100(Lcom/coui/appcompat/couiswitch/COUISwitch;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/couiswitch/COUISwitch$2;->this$0:Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

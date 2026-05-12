.class Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/stepper/LongPressProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/stepper/LongPressProxy;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/stepper/LongPressProxy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->this$0:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->this$0:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-static {p1}, Lcom/coui/appcompat/stepper/LongPressProxy;->access$200(Lcom/coui/appcompat/stepper/LongPressProxy;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->this$0:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-static {p1}, Lcom/coui/appcompat/stepper/LongPressProxy;->access$100(Lcom/coui/appcompat/stepper/LongPressProxy;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/stepper/LongPressProxy$MyHandler;->this$0:Lcom/coui/appcompat/stepper/LongPressProxy;

    invoke-static {p0}, Lcom/coui/appcompat/stepper/LongPressProxy;->access$100(Lcom/coui/appcompat/stepper/LongPressProxy;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

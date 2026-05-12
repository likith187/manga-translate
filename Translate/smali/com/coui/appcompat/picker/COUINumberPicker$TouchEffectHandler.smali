.class Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1800(Lcom/coui/appcompat/picker/COUINumberPicker;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1400(Lcom/coui/appcompat/picker/COUINumberPicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1900(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$2000(Lcom/coui/appcompat/picker/COUINumberPicker;)Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$2000(Lcom/coui/appcompat/picker/COUINumberPicker;)Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;->onScrollingStop()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$1700(Lcom/coui/appcompat/picker/COUINumberPicker;)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

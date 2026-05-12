.class Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mMode:I

    iput v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$100(Lcom/coui/appcompat/picker/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$102(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$302(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$300(Lcom/coui/appcompat/picker/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Landroid/view/View;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$300(Lcom/coui/appcompat/picker/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$380(Lcom/coui/appcompat/picker/COUINumberPicker;I)Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$100(Lcom/coui/appcompat/picker/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$180(Lcom/coui/appcompat/picker/COUINumberPicker;I)Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$302(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$400(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$102(Lcom/coui/appcompat/picker/COUINumberPicker;Z)Z

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$200(Lcom/coui/appcompat/picker/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/view/View;->invalidate(IIII)V

    :goto_0
    return-void
.end method

.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->childFloatingButtonTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$200(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/google/android/material/imageview/ShapeableImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->setSeamlessBundle(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

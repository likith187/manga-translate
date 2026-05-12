.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setFloatingButtonExpandEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$900(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$800(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonSeamlessImpl;->setSeamlessBundle(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$800(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_2
    :goto_0
    return v0
.end method

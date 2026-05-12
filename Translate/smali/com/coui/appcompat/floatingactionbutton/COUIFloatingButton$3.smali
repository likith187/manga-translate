.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnFloatingButtonClickListener;->onClick()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$3;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    return-void
.end method

.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;->onActionSelected(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;)Z

    :cond_0
    return-void
.end method

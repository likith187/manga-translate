.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDismissRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$AutoDismissRunnable;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonEnlarge()V

    return-void
.end method

.class Lcom/coui/appcompat/toolbar/COUIToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$1;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$1;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$000(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroidx/appcompat/widget/Toolbar$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$1;->this$0:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-static {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->access$000(Lcom/coui/appcompat/toolbar/COUIToolbar;)Landroidx/appcompat/widget/Toolbar$h;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/Toolbar$h;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.class Lcom/coui/appcompat/poplist/COUIPopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIPopupMenu;->setOnMenuItemClickListener(Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->access$000(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/coui/appcompat/poplist/COUIPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

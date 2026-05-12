.class Lcom/coui/appcompat/poplist/COUIContextMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIContextMenu;->registerForContextMenu(Landroid/view/View;Landroidx/appcompat/view/menu/MenuBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIContextMenu;->access$000(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIContextMenu;->access$100(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$1;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu;->access$100(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;->onShow()V

    :cond_0
    return-void
.end method

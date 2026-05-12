.class Lcom/coui/appcompat/poplist/COUIContextMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseLongPressHelper$OnPreciseLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIContextMenu;->registerForContextMenu(Landroid/view/View;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

.field final synthetic val$popup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIContextMenu;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$2;->val$popup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$2;->val$popup:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIContextMenu;->access$100(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIContextMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIContextMenu;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu;->access$100(Lcom/coui/appcompat/poplist/COUIContextMenu;)Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIContextMenu$MenuShowStateListener;->onShow()V

    :cond_0
    return-void
.end method

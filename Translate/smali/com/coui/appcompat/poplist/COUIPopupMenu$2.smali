.class Lcom/coui/appcompat/poplist/COUIPopupMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIPopupMenu;->setOnDismissListener(Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->access$100(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupMenu$2;->this$0:Lcom/coui/appcompat/poplist/COUIPopupMenu;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu;->access$100(Lcom/coui/appcompat/poplist/COUIPopupMenu;)Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/poplist/COUIPopupMenu$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

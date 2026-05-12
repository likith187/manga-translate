.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PopupWindow anchor layout changed! left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",top:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",right:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",bottom:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldLeft:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldTop:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldRight:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldBottom:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",layoutChange:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "COUIPopupListWindow"

    invoke-static {p3, p2}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$000(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$100(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$600(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$200(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$300(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p4}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$400(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p5}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->access$500(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->checkIfLimitedWindowOrAnchorResized(Landroid/view/View;IILandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_3
    return-void
.end method

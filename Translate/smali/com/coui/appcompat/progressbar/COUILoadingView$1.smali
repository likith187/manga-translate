.class Lcom/coui/appcompat/progressbar/COUILoadingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/touchhelper/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVirtualViewId:I

.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->mVirtualViewId:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDisablePosition()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$200(Lcom/coui/appcompat/progressbar/COUILoadingView;)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$300(Lcom/coui/appcompat/progressbar/COUILoadingView;)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public getItemCounts()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$400(Lcom/coui/appcompat/progressbar/COUILoadingView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$400(Lcom/coui/appcompat/progressbar/COUILoadingView;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualViewAt(FF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {v1}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$200(Lcom/coui/appcompat/progressbar/COUILoadingView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadingView$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadingView;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUILoadingView;->access$300(Lcom/coui/appcompat/progressbar/COUILoadingView;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public performAction(IIZ)V
    .locals 0

    return-void
.end method

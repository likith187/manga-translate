.class Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/uiutil/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coui/appcompat/uiutil/Executor<",
        "Lcom/coui/appcompat/poplist/PopupMenuConfigRule;",
        "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/poplist/PopupMenuConfigRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ")",
            "Lcom/coui/appcompat/uiutil/Executor<",
            "Lcom/coui/appcompat/poplist/PopupMenuConfigRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getPopupMenuRuleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip disabled rule "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PopupMenuRuleExecutor"

    invoke-static {p2, p1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->access$000(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    .line 5
    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getType()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getOutsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->access$100(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8
    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-static {v4, v0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->access$200(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Landroid/graphics/Rect;)V

    .line 9
    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getBarrierDirection()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 13
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 17
    :cond_7
    iget-object p1, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 18
    :cond_8
    iget-object v0, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchorOutsets:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getOutsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 20
    :cond_9
    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    check-cast p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;->execute(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object p0

    return-object p0
.end method

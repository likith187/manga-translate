.class Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyAnchorView"
.end annotation


# instance fields
.field private mConfigRuleEnabled:Z

.field private mPositionX:I

.field private mPositionY:I

.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->this$0:Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mConfigRuleEnabled:Z

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mPositionX:I

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mPositionY:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p0, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DummyAnchorView getGlobalVisibleRect x "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " y "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " right "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bottom "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIIsolatedPopupList"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 1

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getPopupMenuRuleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mConfigRuleEnabled:Z

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setPopupMenuRuleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mConfigRuleEnabled:Z

    return-void
.end method

.method protected setPosition(II)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mPositionX:I

    iput p2, p0, Lcom/coui/appcompat/poplist/COUIIsolatedPopupListWindow$DummyAnchorView;->mPositionY:I

    return-void
.end method

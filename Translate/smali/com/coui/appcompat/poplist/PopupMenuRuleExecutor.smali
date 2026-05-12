.class final Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/uiutil/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coui/appcompat/uiutil/Executor<",
        "Lcom/coui/appcompat/poplist/PopupMenuRule;",
        "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupMenuRuleExecutor"


# instance fields
.field private mConfigRulesRecord:Ljava/lang/StringBuilder;

.field private final mPopupMenuConfigRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/uiutil/Executor<",
            "Lcom/coui/appcompat/poplist/PopupMenuConfigRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupMenuControlRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/uiutil/Executor<",
            "Lcom/coui/appcompat/poplist/PopupMenuControlRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$1;-><init>(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mPopupMenuControlRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;

    new-instance v0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$2;-><init>(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mPopupMenuConfigRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->recordConfigRules(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->getOutsetsRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->ensureBarrierLegal(Landroid/graphics/Rect;)V

    return-void
.end method

.method private ensureBarrierLegal(Landroid/graphics/Rect;)V
    .locals 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    const-string v1, "PopupMenuRuleExecutor"

    if-gez p0, :cond_0

    const-string p0, "barrier left < 0 !!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-gez p0, :cond_1

    const-string p0, "barrier top < 0 !!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-gez p0, :cond_2

    const-string p0, "barrier right < 0 !!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez p0, :cond_3

    const-string p0, "barrier bottom < 0 !!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method private getOutsetsRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private recordBarrierRules(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 3

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getOutsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->getOutsetsRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getBarrierDirection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_WINDOW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_FROM_BOTTOM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_FROM_RIGHT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_FROM_TOP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_FROM_LEFT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "#BARRIER_GONE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, "old domain window barrier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v2, " barrier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v1, " domain window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, " rule: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, " parent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private recordConfigRules(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getType()I

    move-result v0

    const-string v1, "\n"

    const-string v2, " parent: "

    const-string v3, " rule: "

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, "#TYPE_SUBMENU_ANCHOR: display frame: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->recordBarrierRules(Lcom/coui/appcompat/poplist/PopupMenuConfigRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, "#TYPE_ANCHOR: display frame: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, " outsets: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getOutsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, "#TYPE_WINDOW: display frame: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method beginConfigRulesRecord()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    return-void
.end method

.method endConfigRulesRecord()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mConfigRulesRecord:Ljava/lang/StringBuilder;

    const-string v0, "PopupMenuRuleExecutor"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "No config rules record! Not initialized!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/poplist/PopupMenuRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ")",
            "Lcom/coui/appcompat/uiutil/Executor<",
            "Lcom/coui/appcompat/poplist/PopupMenuRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ">;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mPopupMenuControlRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;

    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->mPopupMenuConfigRuleExecutor:Lcom/coui/appcompat/uiutil/Executor;

    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuConfigRule;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/uiutil/Executor;->execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuRule;

    check-cast p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;->execute(Lcom/coui/appcompat/poplist/PopupMenuRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object p0

    return-object p0
.end method

.class Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$1;
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
        "Lcom/coui/appcompat/poplist/PopupMenuControlRule;",
        "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$1;->this$0:Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/coui/appcompat/poplist/PopupMenuControlRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/poplist/PopupMenuControlRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ")",
            "Lcom/coui/appcompat/uiutil/Executor<",
            "Lcom/coui/appcompat/poplist/PopupMenuControlRule;",
            "Lcom/coui/appcompat/poplist/PopupMenuDomain;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuControlRule;->operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V

    return-object p0
.end method

.method public bridge synthetic execute(Lcom/coui/appcompat/uiutil/Rule;Lcom/coui/appcompat/uiutil/Domain;)Lcom/coui/appcompat/uiutil/Executor;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/poplist/PopupMenuControlRule;

    check-cast p2, Lcom/coui/appcompat/poplist/PopupMenuDomain;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/PopupMenuRuleExecutor$1;->execute(Lcom/coui/appcompat/poplist/PopupMenuControlRule;Lcom/coui/appcompat/poplist/PopupMenuDomain;)Lcom/coui/appcompat/uiutil/Executor;

    move-result-object p0

    return-object p0
.end method

.class Lcom/coui/appcompat/statement/COUIFullPageStatement$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/statement/COUIFullPageStatement;->disableTitleScrollBeforeMaxHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/statement/COUIFullPageStatement;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/statement/COUIFullPageStatement;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->this$0:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->this$0:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->access$100(Lcom/coui/appcompat/statement/COUIFullPageStatement;)Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->this$0:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-static {v1}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->access$100(Lcom/coui/appcompat/statement/COUIFullPageStatement;)Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIFullPageStatement$5;->this$0:Lcom/coui/appcompat/statement/COUIFullPageStatement;

    invoke-static {v0}, Lcom/coui/appcompat/statement/COUIFullPageStatement;->access$100(Lcom/coui/appcompat/statement/COUIFullPageStatement;)Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/COUIFullPageStatement$5$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/COUIFullPageStatement$5$1;-><init>(Lcom/coui/appcompat/statement/COUIFullPageStatement$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

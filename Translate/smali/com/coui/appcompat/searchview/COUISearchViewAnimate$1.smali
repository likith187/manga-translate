.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->showInToolBar()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->hideInToolBar()V

    :cond_1
    :goto_0
    return-void
.end method

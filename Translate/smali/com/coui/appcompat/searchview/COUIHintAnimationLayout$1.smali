.class Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->initTextHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$100(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$102(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;I)I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    iget-boolean v1, v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$100(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$200(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

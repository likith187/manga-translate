.class Lcom/coui/appcompat/reddot/COUIHintRedDot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeAlphaAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$402(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$600(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$502(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$500(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$702(Lcom/coui/appcompat/reddot/COUIHintRedDot;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$602(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$402(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$600(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$502(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$500(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$702(Lcom/coui/appcompat/reddot/COUIHintRedDot;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$602(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$402(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    return-void
.end method

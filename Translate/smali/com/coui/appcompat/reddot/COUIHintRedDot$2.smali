.class Lcom/coui/appcompat/reddot/COUIHintRedDot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeWidthAnim(II)V
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

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$102(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$102(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$102(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->access$200(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    return-void
.end method

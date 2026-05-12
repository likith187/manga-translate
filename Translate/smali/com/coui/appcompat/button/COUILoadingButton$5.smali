.class Lcom/coui/appcompat/button/COUILoadingButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/button/COUILoadingButton;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/button/COUILoadingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUILoadingButton;->access$500(Lcom/coui/appcompat/button/COUILoadingButton;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUILoadingButton;->access$000(Lcom/coui/appcompat/button/COUILoadingButton;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    new-instance v0, Lcom/coui/appcompat/button/COUILoadingButton$5$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/button/COUILoadingButton$5$1;-><init>(Lcom/coui/appcompat/button/COUILoadingButton$5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

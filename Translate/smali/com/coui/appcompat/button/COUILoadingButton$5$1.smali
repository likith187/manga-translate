.class Lcom/coui/appcompat/button/COUILoadingButton$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/button/COUILoadingButton$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/button/COUILoadingButton$5;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton$5;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5$1;->this$1:Lcom/coui/appcompat/button/COUILoadingButton$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$5$1;->this$1:Lcom/coui/appcompat/button/COUILoadingButton$5;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->this$0:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-static {p0}, Lcom/coui/appcompat/button/COUILoadingButton;->access$500(Lcom/coui/appcompat/button/COUILoadingButton;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

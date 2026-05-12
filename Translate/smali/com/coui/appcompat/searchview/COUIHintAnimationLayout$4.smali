.class Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->applyHintChangeAnimation(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$4;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$4;->this$0:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->access$1200(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.class Lcom/coui/appcompat/panel/COUIPanelFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$3;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$3;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$000(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment$3;->this$0:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->access$000(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

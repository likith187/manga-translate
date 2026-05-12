.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;
.super Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->animatePress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUIAnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->access$700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

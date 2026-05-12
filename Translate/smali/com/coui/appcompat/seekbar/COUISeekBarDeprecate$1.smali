.class Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onEnlargeAnimationUpdate(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

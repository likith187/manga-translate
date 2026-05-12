.class Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->executeEnlargeAnim(JLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$602(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

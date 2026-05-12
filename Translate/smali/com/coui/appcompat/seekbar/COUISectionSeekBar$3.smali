.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$202(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$200(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$302(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$600(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    return-void
.end method

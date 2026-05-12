.class Lcom/coui/appcompat/seekbar/COUISeekBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->initDeformationAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 2

    const p1, 0x47c35000    # 100000.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget p3, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    float-to-double p2, p2

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result v0

    iput v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$600(Lcom/coui/appcompat/seekbar/COUISeekBar;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result v0

    iput v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$700(Lcom/coui/appcompat/seekbar/COUISeekBar;)F

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result p2

    iput p2, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$800(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    float-to-double p2, p2

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result v0

    iput v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$600(Lcom/coui/appcompat/seekbar/COUISeekBar;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result v0

    iput v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$700(Lcom/coui/appcompat/seekbar/COUISeekBar;)F

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F

    move-result p2

    iput p2, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$800(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

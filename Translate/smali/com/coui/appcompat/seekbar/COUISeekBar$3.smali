.class Lcom/coui/appcompat/seekbar/COUISeekBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->initFlexibleFollowHandAnim()V
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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

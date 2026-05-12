.class Lcom/coui/appcompat/seekbar/COUISeekBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->initClickAnim()V
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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onClickAnimationUpdate(F)V

    return-void
.end method

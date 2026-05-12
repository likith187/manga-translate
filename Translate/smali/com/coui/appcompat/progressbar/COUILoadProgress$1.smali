.class Lcom/coui/appcompat/progressbar/COUILoadProgress$1;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUILoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/d;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUILoadProgress;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Float;)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->getValue(Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Float;F)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    iput p2, p1, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->access$000(Lcom/coui/appcompat/progressbar/COUILoadProgress;)Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->access$000(Lcom/coui/appcompat/progressbar/COUILoadProgress;)Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    iget v0, p2, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    iget p2, p2, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    invoke-interface {p1, v0, p2}, Lcom/coui/appcompat/progressbar/COUILoadProgress$OnProgressAnimationUpdateListener;->onAnimationUpdate(FI)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/progressbar/COUILoadProgress;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/progressbar/COUILoadProgress$1;->setValue(Ljava/lang/Float;F)V

    return-void
.end method

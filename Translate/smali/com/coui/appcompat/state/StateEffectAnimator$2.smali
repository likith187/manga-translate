.class Lcom/coui/appcompat/state/StateEffectAnimator$2;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;II)V
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
.field final synthetic this$0:Lcom/coui/appcompat/state/StateEffectAnimator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/state/StateEffectAnimator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator$2;->this$0:Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/coui/appcompat/state/StateEffectAnimator;)F
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->access$100(Lcom/coui/appcompat/state/StateEffectAnimator;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator$2;->getValue(Lcom/coui/appcompat/state/StateEffectAnimator;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/coui/appcompat/state/StateEffectAnimator;F)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/coui/appcompat/state/StateEffectAnimator;->access$200(Lcom/coui/appcompat/state/StateEffectAnimator;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/state/StateEffectAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/state/StateEffectAnimator$2;->setValue(Lcom/coui/appcompat/state/StateEffectAnimator;F)V

    return-void
.end method

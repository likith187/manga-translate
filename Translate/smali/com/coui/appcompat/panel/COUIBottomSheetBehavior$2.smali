.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->createShapeValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/google/android/material/shape/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;->this$0:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/google/android/material/shape/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setInterpolation(F)V

    :cond_0
    return-void
.end method

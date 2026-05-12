.class Lcom/coui/appcompat/edittext/COUIEditText$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIEditText;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$5;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$5;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->access$500(Lcom/coui/appcompat/edittext/COUIEditText;)Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    return-void
.end method

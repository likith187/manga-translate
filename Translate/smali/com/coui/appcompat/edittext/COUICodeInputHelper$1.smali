.class Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUICodeInputHelper;->executeNumberAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const-string v1, "alphaHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$002(Lcom/coui/appcompat/edittext/COUICodeInputHelper;F)F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    const-string v1, "scaleHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$102(Lcom/coui/appcompat/edittext/COUICodeInputHelper;F)F

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUICodeInputHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->access$200(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

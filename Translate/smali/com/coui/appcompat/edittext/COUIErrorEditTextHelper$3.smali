.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$600(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$702(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;->this$1:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;->this$1:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$002(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F

    return-void
.end method

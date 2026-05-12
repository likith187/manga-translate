.class Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->show()Landroidx/appcompat/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$000(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$200(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

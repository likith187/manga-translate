.class Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$100(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$300(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;->this$0:Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->access$300(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

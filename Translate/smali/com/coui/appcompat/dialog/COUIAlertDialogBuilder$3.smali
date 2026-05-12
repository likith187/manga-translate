.class Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->disabledTitleScroll(Landroidx/appcompat/app/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field final synthetic val$titleMaxHeightScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;->this$0:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;->val$titleMaxHeightScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;->val$titleMaxHeightScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;->val$titleMaxHeightScrollView:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

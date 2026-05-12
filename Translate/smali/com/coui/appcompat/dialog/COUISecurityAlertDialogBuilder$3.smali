.class Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getStatementTextTouchListener(II)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

.field final synthetic val$termsIndex:I

.field final synthetic val$termsLength:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;II)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->this$0:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    iput p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->val$termsIndex:I

    iput p3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->val$termsLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    iget v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->val$termsIndex:I

    const/4 v3, 0x1

    if-le p2, v2, :cond_2

    iget p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;->val$termsLength:I

    add-int/2addr v2, p0

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const-wide/16 v2, 0x46

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_2
    return v1
.end method

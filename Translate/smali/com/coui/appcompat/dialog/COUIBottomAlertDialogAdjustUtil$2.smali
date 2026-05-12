.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->setFirstLayoutListener(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onFirstLayoutListener:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;->val$onFirstLayoutListener:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;->val$window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$2;->val$onFirstLayoutListener:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;

    invoke-interface {p0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;->onFirstLayout()V

    return-void
.end method

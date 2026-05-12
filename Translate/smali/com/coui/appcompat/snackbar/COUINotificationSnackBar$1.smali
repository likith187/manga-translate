.class Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->this$0:Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    iput-object p2, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->this$0:Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;

    invoke-static {v0}, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;->access$000(Lcom/coui/appcompat/snackbar/COUINotificationSnackBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerLRadius:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerLWeight:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result v8

    new-instance v2, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v2, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v7, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUINotificationSnackBar$1;->val$context:Landroid/content/Context;

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerL:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method

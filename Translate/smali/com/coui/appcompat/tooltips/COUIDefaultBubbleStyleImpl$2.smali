.class Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->initBubbleStyle(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

.field final synthetic val$insect:I

.field final synthetic val$mainPanel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->this$0:Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->val$mainPanel:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->val$insect:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->val$mainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->this$0:Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    invoke-static {v2}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->access$200(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/coordinatorlayout/widget/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->val$insect:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->val$mainPanel:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$2;->this$0:Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;->access$200(Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

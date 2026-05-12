.class Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/toolbar/COUIActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$100(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;->this$0:Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->access$200(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)Lcom/coui/appcompat/toolbar/COUIActionMenuView$OpenOverflowRunnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

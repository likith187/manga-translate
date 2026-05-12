.class Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->initBubbleStyle(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$2;->this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$2;->this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->access$900(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)Lcom/coui/appcompat/tooltips/IToolTipsAction;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/IToolTipsAction;->onCloseClick()V

    return-void
.end method

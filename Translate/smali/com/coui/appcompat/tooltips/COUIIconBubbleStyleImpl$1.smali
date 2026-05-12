.class Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;->initBubbleStyle(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl$1;->this$0:Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl$1;->this$0:Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;->access$600(Lcom/coui/appcompat/tooltips/COUIIconBubbleStyleImpl;)Lcom/coui/appcompat/tooltips/IToolTipsAction;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/IToolTipsAction;->onCloseClick()V

    return-void
.end method

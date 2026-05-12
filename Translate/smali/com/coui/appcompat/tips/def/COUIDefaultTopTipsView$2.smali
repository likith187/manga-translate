.class Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;->this$0:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;->this$0:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-static {v0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->access$100(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView$2;->this$0:Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;

    invoke-static {p0}, Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;->access$100(Lcom/coui/appcompat/tips/def/COUIDefaultTopTipsView;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

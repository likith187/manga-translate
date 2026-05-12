.class Lcom/coui/appcompat/tooltips/COUIToolTips$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tooltips/IToolTipsAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$5;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$5;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$5;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$600(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$5;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$600(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;->onCloseIconClick()V

    :cond_0
    return-void
.end method

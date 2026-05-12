.class Lcom/coui/appcompat/tooltips/COUIToolTips$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$800(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$702(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z

    :cond_0
    return-void
.end method

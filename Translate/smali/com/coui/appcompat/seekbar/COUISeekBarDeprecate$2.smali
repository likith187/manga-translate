.class Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initFastMoveAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lu2/e;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lu2/e;)V
    .locals 0

    return-void
.end method

.method public onSpringEndStateChange(Lu2/e;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lu2/e;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$000(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lu2/e;->e()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p1}, Lu2/e;->c()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$002(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;F)F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$002(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;F)F

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

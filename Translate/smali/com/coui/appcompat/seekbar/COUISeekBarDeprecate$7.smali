.class Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performAdaptiveFeedback()Z
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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$7;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$7;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/os/LinearmotorVibrator;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int v3, v0, v2

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    sub-int v4, p0, v2

    const/16 v5, 0xc8

    const/16 v6, 0x7d0

    const/16 v2, 0x98

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :cond_0
    return-void
.end method

.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2;->invoke()Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->f1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mAudioCurrentPos"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    int-to-long p2, p2

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/d;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/coloros/translate/ui/simultaneous/history/l0;->L(J)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousHistoryDetailsActivity"

    const-string v1, "onStartTrackingTouch"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->g1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->n1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousHistoryDetailsActivity"

    const-string v2, "onStopTrackingTouch"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->m1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Lcom/coloros/translate/ui/simultaneous/history/l0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->K(Z)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->j1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity$mSeekBarChangeListener$2$1;->a:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;->s1(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousHistoryDetailsActivity;)V

    :cond_1
    return-void
.end method

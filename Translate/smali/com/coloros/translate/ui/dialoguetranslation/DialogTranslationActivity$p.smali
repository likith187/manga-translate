.class public final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler msg what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->N1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/repository/local/Conversation;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p1

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->M1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Q1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "mRecordingButtonLottie"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    goto :goto_1

    :cond_4
    const-string p1, "mHandler addOutScreenView"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->v2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->g()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler cancelDeviceStateALL:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$p;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/k0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/k0;->m()Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler -> openDeviceStateALL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_1
    return-void
.end method

.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "longPressRunnable"

    const-string v2, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->b:Landroid/content/Context;

    const-string v1, "linearmotor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/os/LinearmotorVibrator;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oplus/os/LinearmotorVibrator;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/oplus/os/WaveformEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/os/LinearmotorVibrator;->vibrate(Lcom/oplus/os/WaveformEffect;)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    :cond_1
    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate: error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Y(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/i0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/i0;->b()V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getRealView()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$t;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

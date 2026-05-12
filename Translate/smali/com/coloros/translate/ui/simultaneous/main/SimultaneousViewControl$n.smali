.class public final Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$n;
.super Lcom/coloros/translate/ui/simultaneous/main/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$n;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl$n;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->w(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "mBottomButtonSpeakIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/16 p1, 0x1d

    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->B(II)V

    return-void
.end method

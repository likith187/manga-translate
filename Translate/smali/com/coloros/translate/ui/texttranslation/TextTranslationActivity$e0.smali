.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 6

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShouldOriVoiceStop value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "oriPlaySoundLAV"

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->x()V

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_3
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMaxFrame(I)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    new-instance v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, p0

    :goto_0
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    goto :goto_2

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 11
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->V1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 12
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_8
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_9
    const-string p1, "ShouldOriVoiceStop immediately and hide"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v3

    :cond_a
    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setMinFrame(I)V

    .line 15
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$e0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->d2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-nez p0, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v3, p0

    :goto_1
    invoke-static {v3}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    :goto_2
    return-void
.end method

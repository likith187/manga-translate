.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 13

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usingAITranslate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->J2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v1, 0x21

    const-string v3, "aiIcon"

    const-string v4, "aiBgOn"

    const-string v5, "aiBgNor"

    const-string v6, ""

    const-string v7, "translateFrame"

    const-string v8, "waitingResultLAV"

    const/4 v9, 0x0

    const-string v10, "resultTV"

    const/4 v11, 0x0

    if-eqz p1, :cond_d

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v10}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_0
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v9}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v9}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;I)V

    .line 10
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "resultFrame"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v11

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;II)V

    .line 11
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_2
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    .line 13
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7cd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v10}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_5
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v11

    :cond_6
    invoke-static {p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    .line 17
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v11

    :cond_7
    invoke-static {p1, v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    .line 18
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_8
    sget v0, Lcom/coloros/translate/R$drawable;->icon_ai_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1b

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 20
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_9
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object p1

    if-eqz p1, :cond_a

    const v0, 0x3df5c28f    # 0.12f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Float;

    move-result-object v0

    const-string v1, "marginAlpha"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string v0, "rotateSpeed"

    const/high16 v1, 0x42be0000    # 95.0f

    invoke-static {p1, v0, v1}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    move-object v11, p0

    :goto_0
    invoke-virtual {p1, v11}, Lcom/oplus/vfxsdk/rsview/g;->j(Landroid/view/View;)Lcom/oplus/vfxsdk/rsview/g;

    goto/16 :goto_4

    .line 24
    :cond_d
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v12

    if-nez v12, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v12, v11

    :cond_e
    invoke-static {p1, v12}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->t1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    .line 25
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v11

    :cond_f
    invoke-static {p1, v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V

    .line 26
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_10
    sget v3, Lcom/coloros/translate/R$drawable;->icon_ai:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_11

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_11
    invoke-static {p1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 28
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->p2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_12

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_12
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "inputET"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_13
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v3, "getText(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 30
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_1

    .line 31
    :cond_14
    const-string p1, "usingAITranslate input not changed and use last normal result"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1, v9, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->K(ZZ)V

    .line 33
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->Y()Landroidx/lifecycle/a0;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    goto :goto_2

    .line 34
    :cond_15
    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->K(ZZ)V

    .line 35
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_16

    invoke-static {v10}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_16
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x7cb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    :cond_17
    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_18

    invoke-static {v10}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v11

    :cond_18
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->u2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1b

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->s2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 40
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/rsview/g;->k()Lcom/oplus/vfxsdk/rsview/g;

    .line 41
    :cond_19
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-nez p1, :cond_1a

    invoke-static {v7}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_1a
    move-object v11, p1

    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object p0

    invoke-virtual {v11, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    :goto_4
    return-void
.end method

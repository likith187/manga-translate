.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->executeFeedbackAnimator(Z)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$o;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->t0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/View;)V

    return-void
.end method

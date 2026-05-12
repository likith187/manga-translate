.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g1(Z)V
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getRealView()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/oplus/view/ViewRootManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/view/ViewRootManager;->getBackgroundBlurDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$k;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->M0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

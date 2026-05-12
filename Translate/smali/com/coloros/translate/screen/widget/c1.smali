.class public final synthetic Lcom/coloros/translate/screen/widget/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:F

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/c1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput p2, p0, Lcom/coloros/translate/screen/widget/c1;->b:F

    iput p3, p0, Lcom/coloros/translate/screen/widget/c1;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/c1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget v1, p0, Lcom/coloros/translate/screen/widget/c1;->b:F

    iget p0, p0, Lcom/coloros/translate/screen/widget/c1;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;FILandroid/animation/ValueAnimator;)V

    return-void
.end method

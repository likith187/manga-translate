.class public final synthetic Lcom/coloros/translate/screen/widget/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic f:I

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/a1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput p2, p0, Lcom/coloros/translate/screen/widget/a1;->b:I

    iput p3, p0, Lcom/coloros/translate/screen/widget/a1;->c:F

    iput p4, p0, Lcom/coloros/translate/screen/widget/a1;->f:I

    iput p5, p0, Lcom/coloros/translate/screen/widget/a1;->h:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/a1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget v1, p0, Lcom/coloros/translate/screen/widget/a1;->b:I

    iget v2, p0, Lcom/coloros/translate/screen/widget/a1;->c:F

    iget v3, p0, Lcom/coloros/translate/screen/widget/a1;->f:I

    iget v4, p0, Lcom/coloros/translate/screen/widget/a1;->h:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IFIFLandroid/animation/ValueAnimator;)V

    return-void
.end method

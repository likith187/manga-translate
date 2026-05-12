.class public final synthetic Lcom/coloros/translate/screen/widget/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:Z

.field public final synthetic c:F

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/l0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-boolean p2, p0, Lcom/coloros/translate/screen/widget/l0;->b:Z

    iput p3, p0, Lcom/coloros/translate/screen/widget/l0;->c:F

    iput p4, p0, Lcom/coloros/translate/screen/widget/l0;->f:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/l0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/l0;->b:Z

    iget v2, p0, Lcom/coloros/translate/screen/widget/l0;->c:F

    iget p0, p0, Lcom/coloros/translate/screen/widget/l0;->f:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->y(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZFILandroid/animation/ValueAnimator;)V

    return-void
.end method

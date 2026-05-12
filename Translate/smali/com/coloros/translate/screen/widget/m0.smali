.class public final synthetic Lcom/coloros/translate/screen/widget/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:Lkotlin/jvm/internal/z;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/m0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/m0;->b:Lkotlin/jvm/internal/z;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/m0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/m0;->b:Lkotlin/jvm/internal/z;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->i(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V

    return-void
.end method

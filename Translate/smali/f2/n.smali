.class public final synthetic Lf2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/n;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iput p2, p0, Lf2/n;->b:I

    iput p3, p0, Lf2/n;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lf2/n;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iget v1, p0, Lf2/n;->b:I

    iget p0, p0, Lf2/n;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->o(Lcom/coloros/translate/panel/TextTranslationPanel;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

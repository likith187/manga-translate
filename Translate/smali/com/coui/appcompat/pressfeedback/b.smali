.class public final synthetic Lcom/coui/appcompat/pressfeedback/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/b;->a:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/b;->a:Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;

    invoke-static {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->a(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/coui/appcompat/tips/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tips/a;->a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/a;->a:Lcom/coui/appcompat/tips/COUIMarqueeTextView;

    invoke-static {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->b(Lcom/coui/appcompat/tips/COUIMarqueeTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/coui/appcompat/seekbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/b;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/b;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->b(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class Lg4/h$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/h;->h(Landroidx/activity/b;ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lg4/h;


# direct methods
.method constructor <init>(Lg4/h;ZI)V
    .locals 0

    iput-object p1, p0, Lg4/h$a;->c:Lg4/h;

    iput-boolean p2, p0, Lg4/h$a;->a:Z

    iput p3, p0, Lg4/h$a;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lg4/h$a;->c:Lg4/h;

    iget-object p1, p1, Lg4/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lg4/h$a;->c:Lg4/h;

    iget-boolean v1, p0, Lg4/h$a;->a:Z

    iget p0, p0, Lg4/h$a;->b:I

    invoke-virtual {p1, v0, v1, p0}, Lg4/h;->k(FZI)V

    return-void
.end method

.class Lg4/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/e;->h(Landroidx/activity/b;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg4/e;


# direct methods
.method constructor <init>(Lg4/e;)V
    .locals 0

    iput-object p1, p0, Lg4/e$a;->a:Lg4/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg4/e$a;->a:Lg4/e;

    iget-object p1, p1, Lg4/a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lg4/e$a;->a:Lg4/e;

    invoke-virtual {p0, v0}, Lg4/e;->k(F)V

    return-void
.end method

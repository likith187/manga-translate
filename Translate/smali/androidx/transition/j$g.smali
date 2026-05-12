.class abstract Landroidx/transition/j$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method static a(Landroid/animation/Animator;)J
    .locals 2

    invoke-virtual {p0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Landroid/animation/Animator;J)V
    .locals 0

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method

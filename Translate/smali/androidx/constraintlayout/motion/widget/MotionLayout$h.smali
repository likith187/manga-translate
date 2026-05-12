.class Landroidx/constraintlayout/motion/widget/MotionLayout$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;


# instance fields
.field a:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Landroidx/constraintlayout/motion/widget/MotionLayout$h;
    .locals 2

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public b()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_0
    return-void
.end method

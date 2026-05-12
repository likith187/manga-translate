.class public final Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
.super Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation<",
        "Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/d;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/d;",
            "F)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    .line 13
    new-instance p1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {p1, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>(F)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setFinalPosition(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->start()V

    :goto_0
    return-void
.end method

.method public canSkipToEnd()Z
    .locals 4

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-wide v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelComplete()V
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    return-void
.end method

.method getAcceleration(FF)F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public getSpring()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-object p0
.end method

.method isAtEquilibrium(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->isAtEquilibrium(FF)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setFinalPosition(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getFinalPosition()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public skipToEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEnableNonMainThread:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->sanityCheck()V

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setValueThreshold(D)V

    invoke-super {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v6, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setFinalPosition(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iput v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iput v4, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    iput-boolean v3, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mEndRequested:Z

    return v2

    :cond_1
    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getFinalPosition()F

    iget-object v6, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->updateValues(DDJ)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;

    move-result-object v1

    iget-object v6, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v7, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setFinalPosition(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iput v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mPendingPosition:F

    iget-object v13, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v5, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->updateValues(DDJ)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v1, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->updateValues(DDJ)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;

    move-result-object v1

    iget v5, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v1, v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    :goto_0
    iget v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v5, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->mSpring:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iput v4, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method

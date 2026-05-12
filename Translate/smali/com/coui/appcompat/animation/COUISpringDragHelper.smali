.class public Lcom/coui/appcompat/animation/COUISpringDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;,
        Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;
    }
.end annotation


# static fields
.field private static final ATTACH_FLAG_UNSET:I = 0x0

.field private static final ATTACH_FLAG_X:I = 0x1

.field private static final ATTACH_FLAG_XY:I = 0x3

.field private static final ATTACH_FLAG_Y:I = 0x2

.field public static final CHANGING:I = 0x1

.field private static final DEFAULT_BOUNCE_ATTACH:F = 0.2f

.field private static final DEFAULT_BOUNCE_DRAG:F = 0.0f

.field private static final DEFAULT_CURVE_RATIO:F = 0.12f

.field private static final DEFAULT_MAX_SIZE:F = 800.0f

.field private static final DEFAULT_MIN_SIZE:F = 100.0f

.field private static final DEFAULT_OVER_DISTANCE:F = 20.0f

.field private static final DEFAULT_RESPONSE_ATTACH:F = 0.35f

.field private static final DEFAULT_RESPONSE_DRAG:F = 0.1f

.field public static final IDLE:I = 0x0

.field private static final MAX_VELOCITY:I = 0x2ee0

.field private static final MILLISECOND_VELOCITY_UNIT:I = 0x3e8

.field private static final MINCHANGE:F = 0.01f

.field private static final MOVE_DISTANCE_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "COUISpringDragHelper"

.field private static final TRANSFORM_DISTANCE:I = 0x8

.field private static final TRANSFORM_VELOCITY:I = 0x1388

.field private static final UNSET:F = 1.4E-45f


# instance fields
.field private final mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private final mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mBounceAttach:F

.field private mBounceDrag:F

.field private mCurX:F

.field private mCurY:F

.field private mCurveRatio:F

.field private final mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

.field private final mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

.field private mDebug:Z

.field private mDeltaSatisfy:Z

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDownX:F

.field private mDownY:F

.field private final mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

.field private final mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

.field private mHasDrag:Z

.field private mMaxOverDistance:F

.field private mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

.field private mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

.field private mResponseAttach:F

.field private mResponseDrag:F

.field private final mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

.field private final mSpringX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

.field private final mSpringY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

.field private mStableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;"
        }
    .end annotation
.end field

.field private mStartX:F

.field private mStartY:F

.field private mStatus:I

.field private mTransformDistance:F

.field private mTransformVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)V"
        }
    .end annotation

    const v5, 0x459c4000    # 5000.0f

    const/high16 v6, 0x41000000    # 8.0f

    const v3, 0x3df5c28f    # 0.12f

    const/high16 v4, 0x41a00000    # 20.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/animation/COUISpringDragHelper;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;Ljava/util/ArrayList;FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;Ljava/util/ArrayList;FFFF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;FFFF)V"
        }
    .end annotation

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/coui/appcompat/animation/COUISpringDragHelper;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;Ljava/util/ArrayList;FFFFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;Ljava/util/ArrayList;FFFFFFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;FFFFFFFF)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;-><init>(FF)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    .line 5
    new-instance v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    const/high16 v2, 0x44480000    # 800.0f

    invoke-direct {v0, v2, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;-><init>(FF)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    .line 6
    new-instance v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-direct {v0, v1, v1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;-><init>(FF)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    .line 7
    new-instance v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-direct {v0, v2, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;-><init>(FF)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    .line 8
    new-instance v0, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/e;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

    .line 9
    new-instance v1, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/e;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

    const/4 v2, 0x1

    .line 10
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownX:F

    .line 11
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownY:F

    .line 12
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    .line 13
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    .line 14
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    .line 15
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mHasDrag:Z

    .line 17
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    .line 18
    iput v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    .line 19
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDebug:Z

    .line 20
    iput p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    .line 21
    iput p4, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    .line 22
    iput p5, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseAttach:F

    .line 23
    iput p6, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceAttach:F

    .line 24
    iput p7, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurveRatio:F

    .line 25
    iput p8, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxOverDistance:F

    .line 26
    iput p9, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformVelocity:F

    .line 27
    iput p10, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    .line 28
    iput-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    .line 29
    invoke-direct {p0, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->loadStableList(Ljava/util/ArrayList;)V

    .line 30
    new-instance p1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>(F)V

    iget p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p1

    iget p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    .line 31
    new-instance p3, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {p3, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>(F)V

    iget p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    invoke-virtual {p3, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p2

    iget p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    .line 32
    new-instance p3, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p3, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    .line 33
    new-instance p3, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {p3, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {p3, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    .line 34
    new-instance p3, Lcom/coui/appcompat/animation/d;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/animation/d;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;)V

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    .line 35
    new-instance p3, Lcom/coui/appcompat/animation/e;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/animation/e;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;)V

    invoke-virtual {p1, p3}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    .line 36
    new-instance p1, Lcom/coui/appcompat/animation/f;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/animation/f;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;)V

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    .line 37
    new-instance p1, Lcom/coui/appcompat/animation/g;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/animation/g;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;)V

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method public static synthetic a(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$findNeighborWithY$5(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$new$3(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method private beginDrag(FF)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    const-string v2, "COUISpringDragHelper"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    const-string v0, "beginDrag : startValue is Unset"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownX:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mHasDrag:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    sub-float/2addr v1, p2

    iput v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    iget-object v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    add-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginDrag : startSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",startValue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    add-float/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    add-float/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$new$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic d(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$findNeighborWithX$4(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I

    move-result p0

    return p0
.end method

.method private dragTo(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->dragTo(FFZ)V

    return-void
.end method

.method private dragTo(FFZ)V
    .locals 4

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseAttach:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceAttach:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseAttach:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceAttach:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    .line 6
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    add-float/2addr v0, p1

    .line 7
    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    add-float/2addr v1, p2

    .line 8
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_4

    sub-float/2addr v2, v0

    .line 9
    invoke-direct {p0, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->getSpringApproximateOffset(F)F

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    sub-float v0, v2, v0

    goto :goto_2

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_5

    sub-float/2addr v0, v2

    .line 12
    invoke-direct {p0, v0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->getSpringApproximateOffset(F)F

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    add-float/2addr v0, v2

    .line 14
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_6

    sub-float/2addr v2, v1

    .line 15
    invoke-direct {p0, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->getSpringApproximateOffset(F)F

    move-result v1

    .line 16
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    sub-float v1, v2, v1

    goto :goto_3

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    sub-float/2addr v1, v2

    .line 18
    invoke-direct {p0, v1}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->getSpringApproximateOffset(F)F

    move-result v1

    .line 19
    iget-object v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v2, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    add-float/2addr v1, v2

    .line 20
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDebug:Z

    if-eqz v2, :cond_8

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dragTo : isAttach:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " ,down:"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownX:F

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,mTransformDistance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,mDeltaSatisfy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    add-float/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    add-float/2addr p2, p1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ,curValue:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

    .line 22
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ,minPosition:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ,maxPosition:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    const-string p2, "COUISpringDragHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

    .line 25
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    return-void

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

    .line 27
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

    .line 28
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p1

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a

    return-void

    .line 29
    :cond_a
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    .line 30
    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static synthetic e(FFLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$findNeighborWithXY$6(FFLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$new$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    return-void
.end method

.method private findNeighborWithX(FFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p4, Lcom/coui/appcompat/animation/c;

    invoke-direct {p4, p3}, Lcom/coui/appcompat/animation/c;-><init>(F)V

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    const/4 v6, 0x0

    if-gez v5, :cond_1

    iget v5, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpg-float v5, v5, p1

    if-ltz v5, :cond_2

    :cond_1
    cmpl-float v4, p3, v4

    if-lez v4, :cond_3

    iget v4, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    iget v5, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAttachPosition : attachFlag-1: xOrderPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",result:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISpringDragHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private findNeighborWithXY(FFFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/coui/appcompat/animation/a;

    invoke-direct {v3, v1, v0}, Lcom/coui/appcompat/animation/a;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    const/4 v11, 0x0

    cmpg-float v12, v1, v11

    const/4 v13, 0x0

    if-gez v12, :cond_1

    iget v12, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpg-float v12, v12, p2

    if-ltz v12, :cond_2

    :cond_1
    cmpl-float v12, v1, v11

    if-lez v12, :cond_3

    iget v12, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v12, v12, p2

    if-lez v12, :cond_3

    :cond_2
    move v12, v10

    goto :goto_1

    :cond_3
    move v12, v13

    :goto_1
    cmpg-float v14, v0, v11

    if-gez v14, :cond_4

    iget v14, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpg-float v14, v14, p1

    if-ltz v14, :cond_5

    :cond_4
    cmpl-float v11, v0, v11

    if-lez v11, :cond_6

    iget v11, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v11, v11, p1

    if-lez v11, :cond_6

    :cond_5
    move v11, v10

    goto :goto_2

    :cond_6
    move v11, v13

    :goto_2
    iget v14, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v14, v14, p2

    if-nez v14, :cond_7

    move v14, v10

    goto :goto_3

    :cond_7
    move v14, v13

    :goto_3
    iget v15, v9, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v15, v15, p1

    if-nez v15, :cond_8

    goto :goto_4

    :cond_8
    move v10, v13

    :goto_4
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    if-nez v4, :cond_0

    move-object v4, v9

    goto :goto_0

    :cond_9
    if-eqz v12, :cond_a

    if-eqz v10, :cond_a

    if-nez v5, :cond_0

    move-object v5, v9

    goto :goto_0

    :cond_a
    if-eqz v11, :cond_b

    if-eqz v14, :cond_b

    if-nez v6, :cond_0

    move-object v6, v9

    goto :goto_0

    :cond_b
    if-eqz v12, :cond_c

    if-nez v7, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_c
    if-eqz v11, :cond_0

    if-nez v8, :cond_0

    move-object v8, v9

    goto :goto_0

    :cond_d
    if-eqz v4, :cond_e

    move-object v0, v4

    goto :goto_5

    :cond_e
    if-eqz v5, :cond_f

    move-object v0, v5

    goto :goto_5

    :cond_f
    if-eqz v6, :cond_10

    move-object v0, v6

    goto :goto_5

    :cond_10
    if-eqz v7, :cond_11

    move-object v0, v7

    goto :goto_5

    :cond_11
    if-eqz v8, :cond_12

    move-object v0, v8

    goto :goto_5

    :cond_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttachPosition : attachFlag-3: orderPosition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",yChangedXEqual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",xChangedYEqual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",allChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",yChangedOnly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",xChangedOnly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISpringDragHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private findNeighborWithY(FFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p4, Lcom/coui/appcompat/animation/b;

    invoke-direct {p4, p3}, Lcom/coui/appcompat/animation/b;-><init>(F)V

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    const/4 v6, 0x0

    if-gez v5, :cond_1

    iget v5, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpg-float v5, v5, p2

    if-ltz v5, :cond_2

    :cond_1
    cmpl-float v4, p3, v4

    if-lez v4, :cond_3

    iget v4, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v4, v4, p2

    if-lez v4, :cond_3

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    iget v5, v2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v5, v5, p1

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAttachPosition : attachFlag-2: yOrderPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",result:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISpringDragHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static synthetic g(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->lambda$new$2(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method

.method private getSpringApproximateOffset(F)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxOverDistance:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurveRatio:F

    mul-float/2addr p0, p1

    div-float/2addr p0, v1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    cmpl-float v2, p0, v0

    if-nez v2, :cond_1

    return v0

    :cond_1
    div-float p0, p1, p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$findNeighborWithX$4(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 2

    iget v0, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget v1, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0

    :cond_1
    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    iget p2, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    neg-int p1, p1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$findNeighborWithXY$6(FFLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 2

    iget v0, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    iget v1, p3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0

    :cond_1
    iget p0, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget p2, p3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    sub-float/2addr p0, p2

    float-to-int p0, p0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    neg-int p0, p0

    :goto_1
    return p0
.end method

.method private static synthetic lambda$findNeighborWithY$5(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I
    .locals 2

    iget v0, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    iget v1, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0

    :cond_1
    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget p2, p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    neg-int p1, p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    iput p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p1, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurX:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurX:F

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurY:F

    invoke-interface {p1, p2, p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onSizeChange(FF)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p0, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    iput p3, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p1, p3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurY:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurY:F

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurX:F

    invoke-interface {p1, p0, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onSizeChange(FF)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStatus:I

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mSpringChangeObserver:Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;

    invoke-interface {p0, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper$SpringChangeObserver;->onStateChange(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadStableList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStableList:Ljava/util/ArrayList;

    const-string v0, "COUISpringDragHelper"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v7, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v7, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v7, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {v1, v4, v5}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(FF)V

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(FF)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUISpringDragHelper : stableList:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    const-string p0, "COUISpringDragHelper : stableList is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mHasDrag:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownX:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDownY:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimX:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->cancelComplete()V

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mAnimY:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->cancelComplete()V

    return-void
.end method

.method public getAttachPosition()Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x3e8

    const v4, 0x463b8000    # 12000.0f

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_0
    iget-object v4, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderX:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result v4

    iget-object v5, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mFloatValueHolderY:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result v5

    iget-object v6, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v7, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpg-float v7, v4, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz v7, :cond_2

    iget-object v7, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v10, v7, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v10, v4, v10

    if-gtz v10, :cond_2

    iget v6, v6, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_2

    iget v6, v7, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v9

    :goto_2
    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStableList:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v9, :cond_8

    :cond_3
    new-instance v1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-direct {v1, v4, v5}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;-><init>(FF)V

    iget-object v3, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v3, v3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpg-float v6, v4, v3

    if-gez v6, :cond_4

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->setX(F)V

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v3, v3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    cmpl-float v6, v4, v3

    if-lez v6, :cond_5

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->setX(F)V

    :cond_5
    :goto_3
    iget-object v3, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v3, v3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpg-float v6, v5, v3

    if-gez v6, :cond_6

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->setY(F)V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v3, v3, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    cmpl-float v6, v5, v3

    if-lez v6, :cond_7

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->setY(F)V

    :cond_7
    :goto_4
    new-instance v3, Lcom/coui/appcompat/animation/COUISpringDragHelper$1;

    invoke-direct {v3, v0, v1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$1;-><init>(Lcom/coui/appcompat/animation/COUISpringDragHelper;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    move v6, v2

    move-object v7, v3

    move v3, v6

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStableList:Ljava/util/ArrayList;

    move-object v7, v2

    move v6, v3

    move v3, v1

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAttachPosition : stableList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,velocity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,curX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",curY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISpringDragHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v7, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v9, :cond_a

    return-object v1

    :cond_a
    if-ne v2, v9, :cond_b

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    return-object v0

    :cond_b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformVelocity:F

    cmpl-float v12, v2, v11

    if-ltz v12, :cond_c

    cmpl-float v12, v10, v11

    if-ltz v12, :cond_c

    iget-boolean v12, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    if-eqz v12, :cond_c

    const/4 v8, 0x3

    goto :goto_6

    :cond_c
    cmpl-float v2, v2, v11

    if-ltz v2, :cond_d

    iget-boolean v2, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    if-eqz v2, :cond_d

    move v8, v9

    goto :goto_6

    :cond_d
    cmpl-float v2, v10, v11

    if-ltz v2, :cond_e

    iget-boolean v2, v0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaSatisfy:Z

    if-eqz v2, :cond_e

    const/4 v8, 0x2

    :cond_e
    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v12, v1

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget v14, v15, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    sub-float/2addr v14, v4

    float-to-double v13, v14

    move-object/from16 v16, v2

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    iget v9, v15, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    sub-float/2addr v9, v5

    move/from16 v17, v4

    move/from16 v18, v5

    float-to-double v4, v9

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v13, v1

    cmpg-double v1, v13, v10

    if-gez v1, :cond_f

    move-wide v10, v13

    move-object v12, v15

    :cond_f
    move-object/from16 v2, v16

    move/from16 v4, v17

    move/from16 v5, v18

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto :goto_7

    :cond_10
    if-nez v12, :cond_11

    const/4 v1, 0x0

    return-object v1

    :cond_11
    const/4 v1, 0x1

    if-eq v8, v1, :cond_14

    const/4 v1, 0x2

    if-eq v8, v1, :cond_13

    const/4 v1, 0x3

    if-eq v8, v1, :cond_12

    return-object v12

    :cond_12
    iget v1, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget v2, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    move-object/from16 v0, p0

    move v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->findNeighborWithXY(FFFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    move-result-object v0

    return-object v0

    :cond_13
    iget v1, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget v2, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->findNeighborWithY(FFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    move-result-object v0

    return-object v0

    :cond_14
    iget v1, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget v2, v12, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->findNeighborWithX(FFFLjava/util/ArrayList;)Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    move-result-object v0

    return-object v0
.end method

.method public setAttachBounce(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceAttach:F

    return-void
.end method

.method public setAttachProp(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseAttach:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceAttach:F

    return-void
.end method

.method public setAttachResponse(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseAttach:F

    return-void
.end method

.method public setCurveRatio(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurveRatio:F

    return-void
.end method

.method public setDebug()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDebug:Z

    return-void
.end method

.method public setDragBounce(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    return-void
.end method

.method public setDragProp(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mBounceDrag:F

    return-void
.end method

.method public setDragResponse(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mResponseDrag:F

    return-void
.end method

.method public setMax(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStableList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    :cond_1
    return-void
.end method

.method public setMin(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStableList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMinPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMin:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    iget-object p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxPosition:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    iget-object p0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCustomMax:Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->set(Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)V

    :cond_1
    return-void
.end method

.method public setOverDistance(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxOverDistance:F

    return-void
.end method

.method public setOverProp(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurveRatio:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mMaxOverDistance:F

    return-void
.end method

.method public setStableList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->loadStableList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartX:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mStartY:F

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurX:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mCurY:F

    return-void
.end method

.method public setTransformDistance(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    return-void
.end method

.method public setTransformProp(FF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformVelocity:F

    iput p2, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformDistance:F

    return-void
.end method

.method public setTransformVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mTransformVelocity:F

    return-void
.end method

.method public springDrag(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mHasDrag:Z

    if-nez p1, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->beginDrag(FF)V

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->dragTo(FF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->getAttachPosition()Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->cancelDrag()V

    iget v0, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mX:F

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaX:F

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;->mY:F

    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mDeltaY:F

    sub-float/2addr p1, v1

    invoke-direct {p0, v0, p1, v3}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->dragTo(FFZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->dragTo(FF)V

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->recycleVelocityTracker()V

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->resetDrag()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/animation/COUISpringDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->beginDrag(FF)V

    :goto_1
    return-void
.end method

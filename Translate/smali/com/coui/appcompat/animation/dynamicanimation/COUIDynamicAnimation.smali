.class public abstract Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$MassState;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final ROTATION:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

.field public static final Z:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;


# instance fields
.field private final mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

.field mEnableNonMainThread:Z

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Landroidx/dynamicanimation/animation/d;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->TRANSLATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->TRANSLATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->TRANSLATION_Z:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCALE_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCALE_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->Z:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ALPHA:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCROLL_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCROLL_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    iput v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mStartValueIsSet:Z

    .line 6
    iput-boolean v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEnableNonMainThread:Z

    .line 7
    iput-boolean v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    .line 8
    iput v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    neg-float v2, v2

    .line 9
    iput v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 14
    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$15;

    const-string v2, "FloatValueHolder"

    invoke-direct {v1, p0, v2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$15;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;Ljava/lang/String;Landroidx/dynamicanimation/animation/e;)V

    iput-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/d;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    .line 16
    invoke-virtual {v0}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookAnimator()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/d;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 20
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mStartValueIsSet:Z

    .line 22
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEnableNonMainThread:Z

    .line 23
    iput-boolean v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    .line 24
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    neg-float v1, v1

    .line 25
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/d;

    .line 31
    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ROTATION_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->ALPHA:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    .line 33
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 34
    :cond_1
    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCALE_X:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->SCALE_Y:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$ViewProperty;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 36
    :cond_3
    :goto_0
    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 37
    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookAnimator()V

    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    invoke-static {}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->getInstance()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->removeCallback(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;)V

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookSpringAnimationEnd(I)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mStartValueIsSet:Z

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/d;

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/d;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->getInstance()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->addAnimationFrameCallback(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;J)V

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookSpringAnimationStart(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .locals 2

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

    const-string v0, "Animations may only be canceled on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->endAnimationInternal(Z)V

    :cond_2
    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-wide p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    iget p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mLastFrameTime:J

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setPropertyValue(F)V

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mAnimatorMonitor:Lcom/coui/appcompat/animation/COUIAnimatorMonitor;

    invoke-virtual {v1, p1, p2}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookAfterUpdateProperty(J)V

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->endAnimationInternal(Z)V

    :cond_1
    return v0
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getMinimumVisibleChange()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    return p0
.end method

.method getValueThreshold()F
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mRunning:Z

    return p0
.end method

.method public removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableNonMainThread(Z)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mEnableNonMainThread:Z

    return-object p0
.end method

.method public setMaxValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setPropertyValue(F)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/d;

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/d;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    iget v2, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 2

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

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->startAnimationInternal()V

    :cond_2
    return-void
.end method

.method abstract updateValueAndVelocity(J)Z
.end method

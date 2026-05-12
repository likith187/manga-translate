.class public Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.source "SourceFile"

# interfaces
.implements Ld7/a;
.implements Ld7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;,
        Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;,
        Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SaveFlags;,
        Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$State;,
        Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
        "TV;>;",
        "Ld7/a;",
        "Ld7/b;"
    }
.end annotation


# static fields
.field private static final CORNER_ANIMATION_DURATION:I = 0x1f4

.field private static DEBUG:Z = false

.field private static final DEFAULT_PHYSICS_DAMPING_RATIO:F = 0.6f

.field private static final DEFAULT_PHYSICS_FREQUENCY:F = 16.0f

.field private static final DEFAULT_TRANSLATE_HIDING_ANIMATOR_DURATION:F = 333.0f

.field private static final DEF_STYLE_RES:I

.field private static final DRAG_TO_HIDDEN_SPEED_THRESHOLD:I = 0x1388

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field private static final PHYSICS_UNSET:F = 1.4E-45f

.field private static final PROPERTY_OFFSET_TOP_AND_BOTTOM:Ljava/lang/String; = "offsetTopAndBottom"

.field private static final PULL_UP_DY_THRESHOLD:I = -0x64

.field private static final PULL_UP_FRICTION:F = 0.5f

.field private static final PULL_UP_SPEED_THRESHOLD:I = 0x2710

.field public static final SAVE_ALL:I = -0x1

.field public static final SAVE_FIT_TO_CONTENTS:I = 0x2

.field public static final SAVE_HIDEABLE:I = 0x4

.field public static final SAVE_NONE:I = 0x0

.field public static final SAVE_PEEK_HEIGHT:I = 0x1

.field public static final SAVE_SKIP_COLLAPSED:I = 0x8

.field private static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BottomSheetBehavior"

.field private static final VERTICAL_SLIDING_PARAMETER_THRESHOLD:I = 0x2


# instance fields
.field activePointerId:I

.field private alphaRadio:F

.field private final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field collapsedOffset:I

.field private final dragCallback:Landroidx/customview/widget/c$c;

.field private draggable:Z

.field elevation:F

.field expandedOffset:I

.field private fitToContents:Z

.field fitToContentsOffset:I

.field private gestureInsetBottomIgnored:Z

.field halfExpandedOffset:I

.field halfExpandedRatio:F

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialX:I

.field private initialY:I

.field private interpolatorAnimator:Landroid/animation/ValueAnimator;

.field private isShapeExpanded:Z

.field private lastNestedScrollDy:I

.field private mBarRect:Landroid/graphics/Rect;

.field mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

.field private mCanHideKeyboard:Z

.field private mContext:Landroid/content/Context;

.field private mDialogMaxHeight:I

.field private mDragBehavior:Ld7/h;

.field private mDragChild:Landroid/view/View;

.field private mDragCurrentValue:F

.field private mDragDampingRatio:F

.field private mDragFrequency:F

.field private mDragValueHolder:Ld7/k;

.field private mGlobalDrag:Z

.field mHalfExpandOffsetUseParentRootViewHeight:Z

.field private mIsHandlePanel:Z

.field private mIsIgnoreExpandedOffsetChange:Z

.field private mIsInTinyScreen:Z

.field private mLastOffsetInFling:I

.field private mPhysicalAnimator:Ld7/l;

.field private mPhysicsEnable:Z

.field private mPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

.field private materialShapeDrawable:Lcom/google/android/material/shape/i;

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field parentMarginTop:I

.field parentRootViewHeight:I

.field parentWidth:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightMin:I

.field private saveFlags:I

.field private settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior<",
            "TV;>.SettleRunnable;"
        }
    .end annotation
.end field

.field private shapeAppearanceModelDefault:Lcom/google/android/material/shape/n;

.field private shapeThemingEnabled:Z

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private updateImportantForAccessibilityOnSiblings:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroidx/customview/widget/c;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "BottomSheetBehavior"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomSheet_Modal:I

    sput v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->saveFlags:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->elevation:F

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    const/4 v5, 0x4

    iput v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mHalfExpandOffsetUseParentRootViewHeight:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mLastOffsetInFling:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->alphaRadio:F

    const/high16 v5, 0x41800000    # 16.0f

    iput v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragFrequency:F

    const v5, 0x3f19999a    # 0.6f

    iput v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragDampingRatio:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsInTinyScreen:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mBarRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mGlobalDrag:Z

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$7;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragCallback:Landroidx/customview/widget/c$c;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shapeThemingEnabled:Z

    sget v5, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v6, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_backgroundTint:I

    invoke-static {p1, v2, v6}, Lcom/coui/appcompat/view/MaterialResource;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v5}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->createShapeValueAnimator()V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_android_elevation:I

    invoke-virtual {v2, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->elevation:F

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 v4, -0x1

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/util/TypedValue;->data:I

    if-ne p2, v4, :cond_1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    goto :goto_1

    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v2, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(I)V

    :goto_1
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setHideable(Z)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_gestureInsetBottomIgnored:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setGestureInsetBottomIgnored(Z)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setFitToContents(Z)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelSkipCollapsed(Z)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v2, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setDraggable(Z)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_saveFlags:I

    invoke-virtual {v2, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setSaveFlags(I)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_halfExpandedRatio:I

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setHalfExpandedRatio(F)V

    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    if-eqz p2, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setExpandedOffset(I)V

    goto :goto_2

    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->BottomSheetBehavior_Layout_behavior_expandedOffset:I

    invoke-virtual {v2, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setExpandedOffset(I)V

    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->maximumVelocity:F

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/google/android/material/shape/i;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mLastOffsetInFling:I

    return p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getMarginBottom(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mLastOffsetInFling:I

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDialogMaxHeight:I

    return p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragToNewTop(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getYVelocity()F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Lcom/coui/appcompat/panel/COUIPanelPullUpListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePanelOutsideAlpha(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    return p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Ld7/h;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    return-object p0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$902(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsIgnoreExpandedOffsetChange:Z

    return p1
.end method

.method private addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ld0/h$a;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;

    invoke-direct {v0, p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$8;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;I)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroidx/core/view/m0;->e0(Landroid/view/View;Ld0/h$a;Ljava/lang/CharSequence;Ld0/k;)V

    return-void
.end method

.method private calculateCollapsedOffset()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_0
    return-void
.end method

.method private calculateHalfExpandedOffset()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    const-string v1, "BottomSheetBehavior"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateHalfExpandedOffset: halfExpandedRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " halfExpandedOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mHalfExpandOffsetUseParentRootViewHeight:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentMarginTop:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateHalfExpandedOffset: modified halfExpandedOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    :cond_2
    return-void
.end method

.method private calculatePanelOutsideAlpha(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->alphaRadio:F

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onOffsetChanged(F)V

    :cond_0
    return-void
.end method

.method private calculatePeekHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightMin:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentWidth:I

    mul-int/lit8 p0, p0, 0x9

    div-int/lit8 p0, p0, 0x10

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    return p0
.end method

.method private createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method private createMaterialShapeDrawable(Landroid/content/Context;Landroid/util/AttributeSet;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_1

    .line 3
    sget v0, Lcom/google/android/material/R$attr;->bottomSheetStyle:I

    sget v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEF_STYLE_RES:I

    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/shape/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/n$b;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/n;

    .line 6
    new-instance p2, Lcom/google/android/material/shape/i;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shapeAppearanceModelDefault:Lcom/google/android/material/shape/n;

    invoke-direct {p2, v0}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 8
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    invoke-virtual {p0, p4}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010031

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    iget p1, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setTint(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createShapeValueAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dragToNewTop(Landroid/view/View;F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {v0}, Ld7/h;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {p0, p2}, Ld7/h;->X(F)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragValueHolder:Ld7/k;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Ld7/j;->c(F)Ld7/j;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {p2, p1, p1}, Ld7/h;->N(FF)V

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragCurrentValue:F

    :goto_0
    return-void
.end method

.method public static from(Landroid/view/View;)Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;

    move-result-object p0

    instance-of v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with COUIBottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getMarginBottom(Landroid/view/View;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getYVelocity()F
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method private isClickedOnBar(Landroid/view/View;II)Z
    .locals 2

    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/panel/R$id;->panel_drag_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mBarRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private restoreOptionalState(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->saveFlags:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->peekHeight:I

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    :cond_2
    if-eq v0, v1, :cond_3

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    iget-boolean v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->fitToContents:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    :cond_4
    if-eq v0, v1, :cond_5

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    :cond_5
    iget-boolean v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->hideable:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    :cond_6
    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    :cond_7
    iget-boolean p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->skipCollapsed:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->skipCollapsed:Z

    :cond_8
    return-void
.end method

.method private setPanelPeekHeight(IZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    if-eq v0, p1, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculateCollapsedOffset()V

    .line 9
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 11
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleToStatePendingLayout(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setSystemGestureInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    :cond_0
    return-void
.end method

.method private settleToStatePendingLayout(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroidx/core/view/m0;->N(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleToState(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private startDragToHiddenAnimation(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;

    const-string v1, "offsetTopAndBottom"

    invoke-direct {v0, p0, v1, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Ljava/lang/String;Landroid/view/View;)V

    sget-boolean v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDragToHiddenAnimation parentRootViewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",child.getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BottomSheetBehavior"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Landroidx/dynamicanimation/animation/b;

    invoke-direct {v2, p1, v0}, Landroidx/dynamicanimation/animation/b;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/b;->w(F)Landroidx/dynamicanimation/animation/b;

    move-result-object p1

    const v0, 0x459c4000    # 5000.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/b;->t(F)Landroidx/dynamicanimation/animation/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/b;->v(F)Landroidx/dynamicanimation/animation/b;

    move-result-object p1

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/b;->u(F)Landroidx/dynamicanimation/animation/b;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/c;->a(Landroidx/dynamicanimation/animation/c$q;)Landroidx/dynamicanimation/animation/c;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/b;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/b;->p()V

    return-void
.end method

.method private startPanelTranslateAnimation(Landroid/view/View;IIFLandroid/view/animation/PathInterpolator;)V
    .locals 2

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    float-to-long p3, p4

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$4;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mLastOffsetInFling:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startSettleRunnable(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->access$400(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    iput p2, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-static {p1, v0}, Landroidx/core/view/m0;->a0(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->access$402(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;Z)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleRunnable:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    :goto_0
    return-void
.end method

.method private updateAccessibilityActions()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    sget-object v1, Ld0/h$a;->y:Ld0/h$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Ld0/h$a;->x:Ld0/h$a;

    invoke-direct {p0, v0, v1, v3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V

    sget-object v1, Ld0/h$a;->w:Ld0/h$a;

    invoke-direct {p0, v0, v1, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_5

    move v2, v4

    :cond_5
    sget-object v1, Ld0/h$a;->w:Ld0/h$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    sget-object v1, Ld0/h$a;->x:Ld0/h$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->addAccessibilityActionForState(Landroid/view/View;Ld0/h$a;I)V

    :goto_0
    return-void
.end method

.method private updateDrawableForTargetState(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isShapeExpanded:Z

    if-eq v3, p1, :cond_4

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isShapeExpanded:Z

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    sub-float/2addr v3, p1

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    aput v3, v2, v0

    aput p1, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    iget-boolean v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    :cond_8
    return-void
.end method


# virtual methods
.method public addBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public applyPhysics(FF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_1

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragFrequency:F

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragDampingRatio:F

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ld7/l;->j(Landroid/content/Context;)Ld7/l;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicalAnimator:Ld7/l;

    new-instance p1, Ld7/k;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ld7/k;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragValueHolder:Ld7/k;

    new-instance p1, Ld7/h;

    invoke-direct {p1}, Ld7/h;-><init>()V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragValueHolder:Ld7/k;

    new-array v1, v1, [Ld7/j;

    aput-object p2, v1, v0

    invoke-virtual {p1, v1}, Ld7/d;->K([Ld7/j;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/h;

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragFrequency:F

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragDampingRatio:F

    invoke-virtual {p1, p2, v0}, Ld7/h;->B(FF)Ld7/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/h;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicalAnimator:Ld7/l;

    invoke-virtual {p2, p1}, Ld7/l;->d(Ld7/d;)Ld7/d;

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicalAnimator:Ld7/l;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {p1, p2, p0}, Ld7/l;->a(Ld7/d;Ld7/a;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicalAnimator:Ld7/l;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {p1, p2, p0}, Ld7/l;->c(Ld7/d;Ld7/b;)V

    return-void

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    return-void
.end method

.method public disableShapeAnimations()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->interpolatorAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method dispatchOnSlide(I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    :goto_0
    div-float/2addr p1, v1

    goto :goto_2

    :cond_1
    :goto_1
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int p1, v1, p1

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    goto :goto_0

    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;

    invoke-virtual {v2, v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;->onSlide(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroidx/core/view/m0;->P(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCOUIPanelDragListener()Lcom/coui/appcompat/panel/COUIPanelDragListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-object p0
.end method

.method public getExpandedOffset()I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    :goto_0
    return p0
.end method

.method public getHalfExpandedRatio()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    return p0
.end method

.method public getPeekHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeight:I

    :goto_0
    return p0
.end method

.method public getPeekHeightMin()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightMin:I

    return p0
.end method

.method public getSaveFlags()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->saveFlags:I

    return p0
.end method

.method public getSkipCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->skipCollapsed:Z

    return p0
.end method

.method public getState()I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    return p0
.end method

.method public isCanHideKeyboard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    return p0
.end method

.method public isDraggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    return p0
.end method

.method public isFitToContents()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    return p0
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return p0
.end method

.method public isHideable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    return p0
.end method

.method public onAnimationCancel(Ld7/d;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Ld7/d;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Ld7/d;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Ld7/d;)V
    .locals 1

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragCurrentValue:F

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragCurrentValue:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    neg-int p1, p1

    invoke-static {v0, p1}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    :cond_1
    return-void
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onDetachedFromLayoutParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->reset()V

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    goto/16 :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->touchingScrollingChild:Z

    iput v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    if-eqz p2, :cond_a

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    return v1

    :cond_4
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/coui/appcompat/panel/COUIPanelPullUpListener;->onCancel()V

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialX:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    iget-boolean v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mGlobalDrag:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialX:I

    invoke-direct {p0, p2, v7, v6}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isClickedOnBar(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_6

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-eq v6, v5, :cond_8

    iget-object v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_0

    :cond_7
    move-object v6, v3

    :goto_0
    if-eqz v6, :cond_8

    iget v7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialX:I

    iget v8, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v6, v7, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-static {p3, v6}, Lcom/coui/appcompat/uiutil/UIUtil;->getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->touchingScrollingChild:Z

    :cond_8
    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->activePointerId:I

    if-ne v6, v4, :cond_9

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialX:I

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    invoke-virtual {p1, p2, v4, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z(Landroid/view/View;II)Z

    move-result p2

    if-nez p2, :cond_9

    move p2, v2

    goto :goto_1

    :cond_9
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    :cond_a
    :goto_2
    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p3}, Landroidx/customview/widget/c;->P(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_b

    return v2

    :cond_b
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    :cond_c
    if-eqz v3, :cond_e

    if-ne v0, v5, :cond_d

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    if-nez p2, :cond_d

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-eq p2, v2, :cond_d

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialX:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z(Landroid/view/View;II)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p0}, Landroidx/customview/widget/c;->z()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_d

    move v1, v2

    :cond_d
    return v1

    :cond_e
    if-ne v0, v5, :cond_f

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_f

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-eq p1, v2, :cond_f

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p0}, Landroidx/customview/widget/c;->z()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_f

    move v1, v2

    :cond_f
    return v1

    :cond_10
    :goto_3
    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    return v1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-static {p1}, Landroidx/core/view/m0;->s(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/m0;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/google/android/material/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->peekHeightMin:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/support/panel/R$dimen;->coui_panel_max_height:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDialogMaxHeight:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setSystemGestureInsets(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shapeThemingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_5

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->elevation:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v6, v7

    if-nez v7, :cond_2

    invoke-static {p2}, Landroidx/core/view/m0;->r(Landroid/view/View;)F

    move-result v6

    :cond_2
    invoke-virtual {v0, v6}, Lcom/google/android/material/shape/i;->setElevation(F)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-ne v0, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->isShapeExpanded:Z

    iget-object v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/i;

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {v6, v0}, Lcom/google/android/material/shape/i;->setInterpolation(F)V

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateAccessibilityActions()V

    invoke-static {p2}, Landroidx/core/view/m0;->t(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2, v1}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragCallback:Landroidx/customview/widget/c$c;

    invoke-static {p1, v0}, Landroidx/customview/widget/c;->o(Landroid/view/ViewGroup;Landroidx/customview/widget/c$c;)Landroidx/customview/widget/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->G(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentMarginTop:I

    sget-boolean p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    const-string p3, "BottomSheetBehavior"

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayoutChild: parentHeight="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " parentRootViewHeight="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " marginTop="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentMarginTop:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    instance-of p1, p2, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_9

    move-object p1, p2

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getRatio()F

    move-result v2

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->getHasAnchor()Z

    move-result p1

    goto :goto_2

    :cond_9
    move p1, v5

    :goto_2
    iget-boolean v6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsIgnoreExpandedOffsetChange:Z

    if-nez v6, :cond_b

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getMarginBottom(Landroid/view/View;)I

    move-result v6

    if-eqz p1, :cond_a

    iput v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_3

    :cond_a
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    sub-int/2addr p1, v6

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float/2addr p1, v6

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    :goto_3
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    :cond_b
    sget-boolean p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFollowHandPanelLocation fitToContentsOffset:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " expandOffset="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsHandlePanel="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput-boolean v5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsIgnoreExpandedOffsetChange:Z

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculateHalfExpandedOffset()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculateCollapsedOffset()V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-ne p1, v4, :cond_d

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    goto :goto_4

    :cond_d
    const/4 v3, 0x6

    if-ne p1, v3, :cond_e

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, p1}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    goto :goto_4

    :cond_e
    iget-boolean v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x5

    if-ne p1, v3, :cond_f

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-static {p2, p1}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    goto :goto_4

    :cond_f
    const/4 v3, 0x4

    if-ne p1, v3, :cond_10

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, p1}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    goto :goto_4

    :cond_10
    if-eq p1, v1, :cond_11

    const/4 v3, 0x2

    if-ne p1, v3, :cond_12

    :cond_11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    :cond_12
    :goto_4
    sget-boolean p1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    if-eqz p1, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "behavior parentHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " marginBottom: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getMarginBottom(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n mDesignBottomSheetFrameLayout.getRatio()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " fitToContentsOffset: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " H: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n Y: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " getExpandedOffset"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p7, p1, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int p7, p4, p5

    if-lez p5, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    if-ge p7, p3, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p4, p3

    aput p4, p6, p1

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePanelOutsideAlpha(Landroid/view/View;)V

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragToNewTop(Landroid/view/View;F)V

    goto :goto_1

    :cond_3
    aget p3, p6, p1

    neg-int p3, p3

    invoke-static {p2, p3}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    :goto_1
    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto/16 :goto_6

    :cond_4
    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    if-nez p3, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePanelOutsideAlpha(Landroid/view/View;)V

    aput p5, p6, p1

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-eqz p3, :cond_6

    int-to-float p3, p7

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragToNewTop(Landroid/view/View;F)V

    goto :goto_2

    :cond_6
    neg-int p3, p5

    invoke-static {p2, p3}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_6

    :cond_7
    if-gez p5, :cond_e

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-nez p3, :cond_e

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    if-le p7, p3, :cond_a

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePanelOutsideAlpha(Landroid/view/View;)V

    iget p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p4, p3

    aput p4, p6, p1

    iget-boolean p6, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-eqz p6, :cond_9

    int-to-float p3, p3

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragToNewTop(Landroid/view/View;F)V

    goto :goto_3

    :cond_9
    neg-int p3, p4

    invoke-static {p2, p3}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    :goto_3
    const/4 p3, 0x4

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    goto :goto_6

    :cond_a
    :goto_4
    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    if-nez p3, :cond_b

    return-void

    :cond_b
    aput p5, p6, p1

    const/16 p3, -0x64

    if-ge p5, p3, :cond_c

    int-to-float p3, p5

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    float-to-int p5, p3

    :cond_c
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePanelOutsideAlpha(Landroid/view/View;)V

    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-eqz p3, :cond_d

    int-to-float p3, p7

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dragToNewTop(Landroid/view/View;F)V

    goto :goto_5

    :cond_d
    neg-int p3, p5

    invoke-static {p2, p3}, Landroidx/core/view/m0;->U(Landroid/view/View;I)V

    :goto_5
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :cond_e
    :goto_6
    iget-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-nez p3, :cond_f

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->dispatchOnSlide(I)V

    :cond_f
    iput p5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrolled:Z

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    check-cast p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;

    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    invoke-direct {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->restoreOptionalState(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;)V

    iget p1, p3, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->state:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->lastNestedScrollDy:I

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrolled:Z

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPhysicsEnable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    invoke-virtual {p1}, Ld7/h;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragBehavior:Ld7/h;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Ld7/h;->S(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mDragChild:Landroid/view/View;

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result p4

    const/4 v0, 0x3

    if-ne p1, p4, :cond_1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_12

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrolled:Z

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->lastNestedScrollDy:I

    const/4 p3, 0x0

    const/4 p4, 0x6

    if-lez p1, :cond_5

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-le p1, v1, :cond_4

    move v0, p4

    move p1, v1

    goto/16 :goto_3

    :cond_4
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto/16 :goto_3

    :cond_5
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    const/4 v1, 0x5

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getYVelocity()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    goto/16 :goto_3

    :cond_6
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    :goto_0
    move v0, v1

    goto/16 :goto_3

    :cond_7
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->lastNestedScrollDy:I

    const/4 v2, 0x4

    if-nez p1, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_9

    iget p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    sub-int p4, p1, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p4, p1, :cond_8

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto/16 :goto_3

    :cond_8
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    if-ge p1, v1, :cond_b

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge p1, v1, :cond_a

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    goto :goto_3

    :cond_a
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_2

    :cond_b
    sub-int v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_c

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    goto :goto_2

    :cond_c
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_1

    :cond_d
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/coui/appcompat/panel/COUIPanelDragListener;->onDragWhileEditing()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_3

    :cond_e
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    goto :goto_0

    :cond_f
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    :goto_1
    move v0, v2

    goto :goto_3

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_11

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    :goto_2
    move v0, p4

    goto :goto_3

    :cond_11
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_1

    :goto_3
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->nestedScrolled:Z

    :cond_12
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p3}, Landroidx/customview/widget/c;->F(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->initialY:I

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {v0}, Landroidx/customview/widget/c;->z()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-static {p3, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/customview/widget/c;->b(Landroid/view/View;I)V

    :cond_5
    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public removeBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBottomSheetCallback(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BottomSheetBehavior"

    const-string v1, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setCanHideKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCanHideKeyboard:Z

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->draggable:Z

    return-void
.end method

.method public setExpandedOffset(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->expandedOffset:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be greater than or equal to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFitToContents(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculateCollapsedOffset()V

    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method public setGestureInsetBottomIgnored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->gestureInsetBottomIgnored:Z

    return-void
.end method

.method public setGlobalDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mGlobalDrag:Z

    return-void
.end method

.method public setHalfExpandOffsetUseParentRootViewHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mHalfExpandOffsetUseParentRootViewHeight:Z

    return-void
.end method

.method public setHalfExpandedRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedRatio:F

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculateHalfExpandedOffset()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ratio must be a float value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHideable(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateAccessibilityActions()V

    :cond_1
    return-void
.end method

.method public setIsHandlePanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsHandlePanel:Z

    return-void
.end method

.method public setIsInTinyScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsInTinyScreen:Z

    return-void
.end method

.method public setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mCOUIPanelDragListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-void
.end method

.method public setPanelPeekHeight(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelPeekHeight(IZ)V

    return-void
.end method

.method public setPanelSkipCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->skipCollapsed:Z

    return-void
.end method

.method public setPanelState(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->settleToStatePendingLayout(I)V

    return-void
.end method

.method public setPullUpListener(Lcom/coui/appcompat/panel/COUIPanelPullUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mPullUpListener:Lcom/coui/appcompat/panel/COUIPanelPullUpListener;

    return-void
.end method

.method public setSaveFlags(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->saveFlags:I

    return-void
.end method

.method setStateInternal(I)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    :cond_4
    invoke-direct {p0, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibility(Z)V

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateDrawableForTargetState(I)V

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateAccessibilityActions()V

    return-void
.end method

.method public setUpdateImportantForAccessibilityOnSiblings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateImportantForAccessibilityOnSiblings:Z

    return-void
.end method

.method settleToState(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x3

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->halfExpandedOffset:I

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContents:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v2, :cond_3

    move p2, v1

    move v0, v2

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->parentRootViewHeight:I

    :cond_3
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state argument: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->calculatePeekHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->collapsedOffset:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;IIZ)V
    .locals 6

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getState()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroidx/customview/widget/c;->O(II)Z

    move-result p3

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/c;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p4, p1, v0, p3}, Landroidx/customview/widget/c;->Q(Landroid/view/View;II)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_4

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->updateDrawableForTargetState(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getYVelocity()F

    move-result p3

    iget-boolean p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mIsInTinyScreen:Z

    const/4 v0, 0x5

    if-eqz p4, :cond_2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/panel/R$dimen;->coui_panel_max_height_tiny_screen:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance v5, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    const/4 v2, 0x0

    const v4, 0x43a68000    # 333.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startPanelTranslateAnimation(Landroid/view/View;IIFLandroid/view/animation/PathInterpolator;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettleRunnable(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_3

    const p4, 0x461c4000    # 10000.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startDragToHiddenAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->startSettleRunnable(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :goto_1
    return-void
.end method

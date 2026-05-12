.class public Lcom/coui/appcompat/tooltips/COUIToolTips;
.super Lcom/coui/appcompat/poplist/COUIPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x80

.field public static final ALIGN_END:I = 0x40

.field public static final ALIGN_LEFT:I = 0x10

.field public static final ALIGN_RIGHT:I = 0x8

.field public static final ALIGN_START:I = 0x20

.field public static final ALIGN_TOP:I = 0x100

.field public static final ANIMATION_DURATION:I = 0x12c

.field public static final ANIMATION_EXIT_DURATION:I = 0x14

.field private static final ARROW_DOWN:I = 0x8

.field private static final ARROW_DOWN_LEFT:I = 0x9

.field private static final ARROW_DOWN_RIGHT:I = 0x7

.field private static final ARROW_LEFT:I = 0xb

.field private static final ARROW_LEFT_DOWN:I = 0xa

.field private static final ARROW_LEFT_UP:I = 0xc

.field private static final ARROW_RIGHT:I = 0x5

.field private static final ARROW_RIGHT_DOWN:I = 0x6

.field private static final ARROW_RIGHT_UP:I = 0x4

.field private static final ARROW_UP:I = 0x2

.field private static final ARROW_UP_LEFT:I = 0x1

.field private static final ARROW_UP_RIGHT:I = 0x3

.field public static final DEFAULT_ALIGN_DIRECTION:I = 0x4

.field private static final DEFAULT_SPRING_FACTOR:F = 10000.0f

.field private static final DEFAULT_TOOLTIPS_ALPHA_SPRING_RESPONSE:F = 0.3f

.field private static final DEFAULT_TOOLTIPS_SCALE_SPRING_RESPONSE:F = 0.4f

.field private static final DEFAULT_TOOLTIPS_SPRING_BOUNCE:F = 0.2f

.field public static final MODE_INFO:I = 0x1

.field public static final MODE_TOOLTIPS:I = 0x0

.field private static final ONE:F = 1.0f

.field private static final POINT_FIVE:F = 0.5f

.field private static final ROTATION_ANGLE_0:F = 0.0f

.field private static final ROTATION_ANGLE_180:F = 180.0f

.field private static final ROTATION_ANGLE_270:F = 270.0f

.field private static final ROTATION_ANGLE_90:F = 90.0f

.field private static final TAG:Ljava/lang/String; = "COUIToolTips"

.field private static final ZERO:F


# instance fields
.field private mAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

.field private mAnchor:Landroid/view/View;

.field private mArrowDirection:I

.field private mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowOverflow:I

.field private mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowType:I

.field private mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowView:Landroid/widget/ImageView;

.field private mBubbleHorizontalPadding:I

.field private mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

.field private mCheckAnimateExit:Ljava/lang/Runnable;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mHasIndicator:Z

.field private mIndicatorEmbedDistance:I

.field private mIndicatorFollowContent:Z

.field private mIsDismissing:Z

.field private mIsEntering:Z

.field private mMainPanel:Landroid/view/ViewGroup;

.field private mMode:I

.field private mOffsetY:I

.field private mOnCloseIconClickListener:Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mParent:Landroid/view/View;

.field private mParentRectOnScreen:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mShowDirection:I

.field private final mTmpCoords:[I

.field private final mToolTipsAlphaProperty:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mToolTipsAnimationAlphaProgress:F

.field private mToolTipsAnimationScaleProgress:F

.field private final mToolTipsScaleProperty:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mViewPortOnScreen:Landroid/graphics/Rect;

.field private mViewportOffset:Landroid/graphics/Rect;

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;

    invoke-direct {v0}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl$Builder;->build()Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;ILcom/coui/appcompat/tooltips/COUIIBubbleStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/coui/appcompat/tooltips/COUIIBubbleStyle;)V
    .locals 3

    .line 6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    .line 8
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 9
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips$1;

    const-string v2, "toolTipsScaleProperty"

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips$1;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsScaleProperty:Landroidx/dynamicanimation/animation/d;

    .line 10
    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips$2;

    const-string v2, "toolTipsAlphaProperty"

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips$2;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAlphaProperty:Landroidx/dynamicanimation/animation/d;

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 12
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    const/4 v1, 0x4

    .line 13
    iput v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    .line 14
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationScaleProgress:F

    .line 17
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationAlphaProgress:F

    .line 18
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips$3;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$3;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 19
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$4;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 20
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$5;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    .line 21
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIToolTips$6;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCheckAnimateExit:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    .line 24
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    invoke-interface {p3, v0, p1, p2}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->setToolTipsAction(Lcom/coui/appcompat/tooltips/IToolTipsAction;Landroid/content/Context;I)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->init(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;ILcom/coui/appcompat/tooltips/COUIIBubbleStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/view/Window;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tooltips/COUIToolTips;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationScaleProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/tooltips/COUIToolTips;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setToolTipsScaleProgress(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/tooltips/COUIToolTips;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationAlphaProgress:F

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/tooltips/COUIToolTips;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setToolTipsAlphaProgress(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/tooltips/COUIToolTips;)Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnCloseIconClickListener:Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/tooltips/COUIToolTips;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/tooltips/COUIToolTips;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addIndicator(Landroid/graphics/Rect;I)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move p2, v1

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    if-eq v4, v2, :cond_4

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne v4, v2, :cond_3

    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->handleAlignLeftDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->handleAlignRightDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->handleAlignVerticalDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V

    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->safeForceHasOverlappingRendering(Landroid/view/View;Z)V

    return-void
.end method

.method private animateEnter()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v4, Lcom/support/tips/R$color;->coui_tool_tips_shadow_color:I

    invoke-static {v3, v4}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_two:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v5, Lcom/support/tips/R$color;->coui_tool_tips_shadow_color:I

    invoke-static {v3, v5}, Lr/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->animateSpring(Z)V

    return-void
.end method

.method private animateExit()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->clearShadow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->clearShadow(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->animateSpring(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCheckAnimateExit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCheckAnimateExit:Ljava/lang/Runnable;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private animateSpring(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsEntering:Z

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotX:F

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotY:F

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance p1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationScaleProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsScaleProperty:Landroidx/dynamicanimation/animation/d;

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    const v2, 0x461c4000    # 10000.0f

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    new-instance p1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationAlphaProgress:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAlphaProperty:Landroidx/dynamicanimation/animation/d;

    invoke-direct {p1, v3, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    new-instance p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private calculatePivot()V
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    move v3, v4

    :cond_1
    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotX:F

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotY:F

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v1

    if-lt v0, v1, :cond_3

    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotX:F

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v1, v1, v5

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    neg-int v0, v0

    :goto_1
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotX:F

    goto :goto_2

    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotX:F

    :goto_2
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v2, v5, v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_6

    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotY:F

    goto :goto_3

    :cond_6
    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mPivotY:F

    :goto_3
    return-void
.end method

.method private calculatePosition()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->registerOrientationHandler()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    aget v4, v1, v3

    aget v1, v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    filled-new-array {v4, v2}, [I

    move-result-object v2

    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v4, v2, v1, v6}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->setOriginCenterPoint([I[ILandroid/view/View;)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    aget v7, v1, v3

    div-int/2addr v2, v0

    sub-int v8, v7, v2

    iput v8, v6, Landroid/graphics/Rect;->left:I

    aget v1, v1, v5

    div-int/2addr v4, v0

    sub-int v0, v1, v4

    iput v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->sizePopupWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->refreshCoordinated(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorFollowContent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mHasIndicator:Z

    invoke-direct {p0, v0, v1, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->prepareContent(Landroid/graphics/Rect;ZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mHasIndicator:Z

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOffsetY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->prepareContent(Landroid/graphics/Rect;ZI)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->calculatePivot()V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->animateEnter()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOffsetY:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private checkViewTypeEnum(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getAnchorViewTypeEnum(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    :cond_0
    return-void
.end method

.method private createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    new-instance p0, Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method private dismissPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->dismissWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->unregisterOrientationHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCheckAnimateExit:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getViewportHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private getViewportWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleAlignBottomDirection(Landroid/widget/FrameLayout$LayoutParams;FFFI)V
    .locals 2

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    add-float/2addr p3, p2

    cmpg-float v0, v0, p3

    if-gez v0, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p4}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float p3, p3

    add-float/2addr p2, p4

    cmpg-float p3, p3, p2

    if-gez p3, :cond_2

    const/4 p3, 0x3

    iput p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p5

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private handleAlignLeftDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr v0, v3

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    :goto_0
    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimensFloat(Landroid/content/Context;I)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    add-float/2addr v0, p1

    cmpg-float v5, v5, v0

    if-gez v5, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v2, v3}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    const/4 p1, 0x4

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr p1, v4

    cmpg-float v0, v0, p1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p1, p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    const/4 p1, 0x5

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private handleAlignRightDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr v0, v3

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    :goto_0
    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimensFloat(Landroid/content/Context;I)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    add-float/2addr v0, p1

    cmpg-float v5, v5, v0

    if-gez v5, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v3, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    const/16 p1, 0xc

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v1, v1

    add-float/2addr p1, v4

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v2, v3}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    const/16 p1, 0xa

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p1, v0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    const/16 p1, 0xb

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private handleAlignTopDirection(Landroid/widget/FrameLayout$LayoutParams;FFFI)V
    .locals 3

    const/16 v0, 0x50

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    add-float/2addr p3, p2

    cmpg-float v0, v0, p3

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    if-gez v0, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p4, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/16 p2, 0x9

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr p2, p4

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-static {p2, p4, v2, v0}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    const/4 p2, 0x7

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    float-to-int p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p2

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p3, v2, v1}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    const/16 p2, 0x8

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p0, p5

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private handleAlignVerticalDirection(Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimensFloat(Landroid/content/Context;I)F

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v0, p1, :cond_1

    move-object v2, p0

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/tooltips/COUIToolTips;->handleAlignBottomDirection(Landroid/widget/FrameLayout$LayoutParams;FFFI)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/tooltips/COUIToolTips;->handleAlignTopDirection(Landroid/widget/FrameLayout$LayoutParams;FFFI)V

    :goto_1
    return-void
.end method

.method private offsetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private prepareContent(Landroid/graphics/Rect;ZI)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->addIndicator(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method private refreshCoordinated(Landroid/graphics/Rect;)V
    .locals 11

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getAnchorViewTypeEnum(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/16 v2, 0x10

    const/16 v3, 0x80

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v0

    if-lt v5, v0, :cond_0

    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    sub-int/2addr p1, v0

    goto/16 :goto_3

    :cond_0
    if-lt v6, v0, :cond_1

    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_1
    if-le v5, v6, :cond_2

    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_3

    :cond_2
    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_3

    :cond_3
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v0

    if-lt v6, v0, :cond_4

    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_4
    if-lt v5, v0, :cond_5

    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_5
    if-le v5, v6, :cond_6

    iput v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_6
    iput v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_7
    if-ne v1, v2, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_8
    iget v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    const/4 v5, 0x0

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v0, v0, v7

    iget-object v8, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v8, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mTmpCoords:[I

    aget v9, v8, v5

    aget v8, v8, v7

    iget-object v10, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mWindowLocationOnScreen:[I

    sub-int/2addr v6, v9

    aput v6, v10, v5

    sub-int/2addr v0, v8

    aput v0, v10, v7

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v7

    sub-int/2addr p1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/16 v6, 0x8

    if-ne v0, v6, :cond_9

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->END:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->checkViewTypeEnum(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    add-int/2addr v1, v0

    goto :goto_4

    :cond_9
    if-ne v0, v2, :cond_a

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->START:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->checkViewTypeEnum(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sub-int/2addr v1, v0

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowType:I

    if-ne v0, v4, :cond_b

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOP:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->checkViewTypeEnum(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sub-int/2addr p1, v0

    goto :goto_4

    :cond_b
    if-ne v0, v3, :cond_c

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->BOTTOM:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->checkViewTypeEnum(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    add-int/2addr p1, v0

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private registerOrientationHandler()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private setArrowViewDrawable()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDirection:I

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v4, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v3, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v3, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v3, v5}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowLeftDownDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v4, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v4, v5}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowDownRightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDownDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v6}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, v5}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowRightUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/coui/appcompat/tooltips/DrawableUtils;->rotateDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setBackground(IIIII)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimensFloat(Landroid/content/Context;I)F

    move-result v8

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/tooltips/COUIToolTips$7;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;IIIIF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setToolTipsAlphaProgress(F)V
    .locals 4

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationAlphaProgress:F

    iget-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsEntering:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    move v2, v1

    move v1, v3

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setToolTipsScaleProgress(F)V
    .locals 4

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationScaleProgress:F

    iget-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsEntering:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    move v2, v1

    move v1, v3

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mToolTipsAnimationScaleProgress:F

    invoke-static {v1, v2, p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getConvertedFraction(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private showToolTips()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->calculatePosition()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v3}, Lcom/coui/appcompat/uiutil/UIUtil;->safeForceHasOverlappingRendering(Landroid/view/View;Z)V

    :goto_0
    if-eqz v0, :cond_2

    instance-of p0, v0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3}, Lcom/coui/appcompat/uiutil/UIUtil;->safeForceHasOverlappingRendering(Landroid/view/View;Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sizePopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getMaxWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->sizeBubbleStyle(Landroid/view/ViewGroup;I)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-interface {v2, v0, v3}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getRealWidth(ILandroid/view/ViewGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->getViewportHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v2, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getMaxWidth()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->sizeBubbleStyle(Landroid/view/ViewGroup;I)V

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-interface {v1, v0, v2}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getRealWidth(ILandroid/view/ViewGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_2
    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateFakeBeyondScreenTips(Landroid/view/View;IZII)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    iput p5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOffsetY:I

    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/16 p4, 0x20

    if-eq p2, p4, :cond_2

    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p4, 0x100

    if-ne p2, p4, :cond_6

    const/4 p2, 0x4

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    if-ne p2, p4, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    if-ne p2, p4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->registerOrientationHandler()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 p4, 0x0

    aget v0, p1, p4

    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    aget p4, p1, p4

    aget p1, p1, v1

    invoke-virtual {p2, p4, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->sizePopupWindow()V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->refreshCoordinated(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p5}, Lcom/coui/appcompat/tooltips/COUIToolTips;->prepareContent(Landroid/graphics/Rect;ZI)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->calculatePivot()V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->animateEnter()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->unregisterOrientationHandler()V

    iget-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->animateExit()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissPopupWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    :goto_0
    return-void
.end method

.method public dismissImmediately()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissPopupWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIsDismissing:Z

    return-void
.end method

.method public getContentTv()Landroid/widget/TextView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getContentView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getDismissIv()Landroid/widget/ImageView;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getDismissIv()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public hideDismissButton()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->hideDismissView()V

    return-void
.end method

.method public init(I)V
    .locals 14

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getDefStyleParams()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v2}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getDefStyleParams()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMode:I

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    instance-of v3, v3, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    sget v4, Lcom/support/tips/R$drawable;->coui_blue_sharp_middle_arrow_up:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/support/tips/R$drawable;->coui_white_sharp_middle_arrow_up:I

    :goto_0
    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    sget p1, Lcom/support/tips/R$drawable;->coui_blue_sharp_edges_arrow_up_right:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/support/tips/R$drawable;->coui_white_sharp_edges_arrow_up_right:I

    :goto_1
    invoke-static {v3, p1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v3, Lcom/support/tips/R$drawable;->coui_white_sharp_middle_arrow_up:I

    invoke-static {p1, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v3, Lcom/support/tips/R$drawable;->coui_white_sharp_edges_arrow_up_right:I

    invoke-static {p1, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/support/tips/R$styleable;->COUIToolTips:[I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingTop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingEnd:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingBottom:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sget v0, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsMinWidth:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetStart:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v5, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetTop:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    sget v5, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetEnd:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    sget v5, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetBottom:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v5}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getLayoutId()I

    move-result v5

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setBackground(IIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {p1, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-interface {p1, v2}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->initBubbleStyle(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    goto :goto_3

    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v12, v11, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setElevationInPopupwindow(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/tips/R$dimen;->coui_tooltips_vertical_and_horizontal_gap_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/tips/R$dimen;->coui_tooltips_vertical_and_horizontal_gap_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOP:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    sget-object p1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->BOTTOM:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, v1, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    sget-object p1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->START:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    sget-object p1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->END:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/tips/R$dimen;->coui_tooltips_navigation_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/tips/R$dimen;->coui_tooltips_toolbar_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/tips/R$dimen;->coui_tooltips_indicator_embed_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorEmbedDistance:I

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/tips/R$dimen;->coui_tooltips_bubble_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleHorizontalPadding:I

    return-void
.end method

.method protected initPopupWindowBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refresh()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getDefStyleParams()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v2}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->getDefStyleParams()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    instance-of v3, v3, Lcom/coui/appcompat/tooltips/COUIDefaultBubbleStyleImpl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMode:I

    if-nez v4, :cond_0

    sget v4, Lcom/support/tips/R$drawable;->coui_blue_sharp_middle_arrow_up:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/support/tips/R$drawable;->coui_white_sharp_middle_arrow_up:I

    :goto_0
    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMode:I

    if-nez v4, :cond_1

    sget v4, Lcom/support/tips/R$drawable;->coui_blue_sharp_edges_arrow_up_right:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/support/tips/R$drawable;->coui_white_sharp_edges_arrow_up_right:I

    :goto_1
    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v4, Lcom/support/tips/R$drawable;->coui_white_sharp_middle_arrow_up:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    sget v4, Lcom/support/tips/R$drawable;->coui_white_sharp_edges_arrow_up_right:I

    invoke-static {v3, v4}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowUpRightDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget-object v3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/support/tips/R$styleable;->COUIToolTips:[I

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsBackgroundColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingStart:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsPaddingBottom:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    sget v2, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    sget v1, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setBackground(IIIII)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->refreshBubbleStyle(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setArrowViewDrawable()V

    return-void
.end method

.method public refreshWhileLayoutChange()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "COUIToolTips"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "activity is not active when refreshWhileLayoutChange"

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->isInVisibleRect(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->calculatePosition()V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    const-string p0, "mAnchor is now visible, so dismiss it."

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setArrowOverflow(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 8
    :cond_1
    invoke-static {v0}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->setContentText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContentTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setContentTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mBubbleStyle:Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;->setContentTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDismissOnTouchOutside(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public setOnCloseIconClickListener(Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOnCloseIconClickListener:Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZIIZ)V

    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZIIZ)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p4, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getAnchorViewTypeEnum(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object p4

    .line 6
    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->TOOLBAR:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-ne p4, v0, :cond_1

    .line 7
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->NAVIGATION:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    if-ne p4, v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mArrowOverflow:I

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mParent:Landroid/view/View;

    .line 11
    iput-boolean p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mHasIndicator:Z

    .line 12
    iput-boolean p6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mIndicatorFollowContent:Z

    .line 13
    iput p5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mOffsetY:I

    .line 14
    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    const/16 p3, 0x20

    if-eq p2, p3, :cond_4

    const/16 p4, 0x40

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_3
    const/16 p3, 0x100

    if-ne p2, p3, :cond_8

    const/4 p2, 0x4

    .line 15
    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    goto :goto_3

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    const/16 p4, 0x10

    const/16 p5, 0x8

    if-eqz p2, :cond_6

    .line 17
    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    if-ne p2, p3, :cond_5

    move p4, p5

    :cond_5
    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    goto :goto_3

    .line 18
    :cond_6
    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    if-ne p2, p3, :cond_7

    goto :goto_2

    :cond_7
    move p4, p5

    :goto_2
    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mShowDirection:I

    .line 19
    :cond_8
    :goto_3
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mAnchor:Landroid/view/View;

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showToolTips()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showToolTips fail,e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "COUIToolTips"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_4
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips;->mCheckAnimateExit:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

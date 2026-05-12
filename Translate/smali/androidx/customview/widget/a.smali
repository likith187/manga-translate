.class public abstract Landroidx/customview/widget/a;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/customview/widget/a$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/b$a;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/b$b;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/a$c;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Landroidx/customview/widget/a$a;

    invoke-direct {v0}, Landroidx/customview/widget/a$a;-><init>()V

    sput-object v0, Landroidx/customview/widget/a;->NODE_ADAPTER:Landroidx/customview/widget/b$a;

    new-instance v0, Landroidx/customview/widget/a$b;

    invoke-direct {v0}, Landroidx/customview/widget/a$b;-><init>()V

    sput-object v0, Landroidx/customview/widget/a;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    iput v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    iput v0, p0, Landroidx/customview/widget/a;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Landroidx/core/view/m0;->t(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(I)Z
    .locals 1

    iget v0, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d()Z
    .locals 3

    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/customview/widget/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/a;->f(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p2}, Landroidx/customview/widget/a;->g(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method private f(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->obtainAccessibilityNodeInfo(I)Ld0/h;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ld0/h;->x()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ld0/h;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ld0/h;->Q()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {v0}, Ld0/h;->P()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    invoke-virtual {v0}, Ld0/h;->I()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    invoke-virtual {v0}, Ld0/h;->F()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ld0/h;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {p2, v0, p1}, Ld0/j;->c(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private g(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private h(I)Ld0/h;
    .locals 7

    invoke-static {}, Ld0/h;->V()Ld0/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld0/h;->n0(Z)V

    invoke-virtual {v0, v1}, Ld0/h;->p0(Z)V

    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    sget-object v2, Landroidx/customview/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, v3}, Ld0/h;->x0(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->onPopulateNodeForVirtualView(ILd0/h;)V

    invoke-virtual {v0}, Ld0/h;->x()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ld0/h;->r()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/customview/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ld0/h;->k(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Ld0/h;->i()I

    move-result v3

    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_b

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_a

    iget-object v3, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld0/h;->v0(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, v3, p1}, Ld0/h;->G0(Landroid/view/View;I)V

    iget v3, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    const/4 v5, 0x0

    if-ne v3, p1, :cond_2

    invoke-virtual {v0, v1}, Ld0/h;->b0(Z)V

    invoke-virtual {v0, v4}, Ld0/h;->a(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Ld0/h;->b0(Z)V

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ld0/h;->a(I)V

    :goto_1
    iget v3, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v3, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v5

    :goto_2
    if-eqz p1, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ld0/h;->a(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ld0/h;->K()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Ld0/h;->a(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Ld0/h;->q0(Z)V

    iget-object p1, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ld0/h;->l(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ld0/h;->k(Landroid/graphics/Rect;)V

    iget p1, v0, Ld0/h;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    invoke-static {}, Ld0/h;->V()Ld0/h;

    move-result-object p1

    iget v3, v0, Ld0/h;->b:I

    :goto_4
    if-eq v3, v2, :cond_6

    iget-object v4, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Ld0/h;->y0(Landroid/view/View;I)V

    sget-object v4, Landroidx/customview/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3, p1}, Landroidx/customview/widget/a;->onPopulateNodeForVirtualView(ILd0/h;)V

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Ld0/h;->k(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/customview/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v3, p1, Ld0/h;->b:I

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ld0/h;->Z()V

    :cond_7
    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    iget-object p1, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    iget-object v2, p0, Landroidx/customview/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroidx/customview/widget/a;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/customview/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/customview/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroidx/customview/widget/a;->m(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0, v1}, Ld0/h;->K0(Z)V

    :cond_9
    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private i()Ld0/h;
    .locals 6

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0}, Ld0/h;->W(Landroid/view/View;)Ld0/h;

    move-result-object v0

    iget-object v1, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/m0;->W(Landroid/view/View;Ld0/h;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/customview/widget/a;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v0}, Ld0/h;->n()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ld0/h;->d(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private j()Landroidx/collection/j;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/customview/widget/a;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v1, Landroidx/collection/j;

    invoke-direct {v1}, Landroidx/collection/j;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/customview/widget/a;->h(I)Ld0/h;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroidx/collection/j;->h(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private k(ILandroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->obtainAccessibilityNodeInfo(I)Ld0/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Ld0/h;->k(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static l(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x82

    if-ne p1, p0, :cond_0

    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object p2
.end method

.method private m(Landroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method private static n(I)I
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 p0, 0x82

    return p0

    :cond_0
    const/16 p0, 0x42

    return p0

    :cond_1
    const/16 p0, 0x11

    return p0

    :cond_2
    const/16 p0, 0x21

    return p0
.end method

.method private o(ILandroid/graphics/Rect;)Z
    .locals 9

    invoke-direct {p0}, Landroidx/customview/widget/a;->j()Landroidx/collection/j;

    move-result-object v7

    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v0}, Landroidx/collection/j;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/h;

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, v8, :cond_3

    invoke-direct {p0, v0, v4}, Landroidx/customview/widget/a;->k(ILandroid/graphics/Rect;)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {p2, p1, v4}, Landroidx/customview/widget/a;->l(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :goto_3
    sget-object v1, Landroidx/customview/widget/a;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/b$b;

    sget-object v2, Landroidx/customview/widget/a;->NODE_ADAPTER:Landroidx/customview/widget/b$a;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/customview/widget/b;->c(Ljava/lang/Object;Landroidx/customview/widget/b$b;Landroidx/customview/widget/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld0/h;

    goto :goto_5

    :cond_5
    iget-object p2, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {p2}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    move v5, p2

    :goto_4
    sget-object v1, Landroidx/customview/widget/a;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/b$b;

    sget-object v2, Landroidx/customview/widget/a;->NODE_ADAPTER:Landroidx/customview/widget/b$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/customview/widget/b;->d(Ljava/lang/Object;Landroidx/customview/widget/b$b;Landroidx/customview/widget/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld0/h;

    :goto_5
    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v7, p1}, Landroidx/collection/j;->f(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v7, p1}, Landroidx/collection/j;->g(I)I

    move-result v8

    :goto_6
    invoke-virtual {p0, v8}, Landroidx/customview/widget/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0
.end method

.method private p(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/customview/widget/a;->c(I)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/customview/widget/a;->r(I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result p0

    return p0
.end method

.method private q(ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-static {p0, p1, p2}, Landroidx/core/view/m0;->Y(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private r(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/customview/widget/a;->c(I)Z

    :cond_1
    iput p1, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private s(I)V
    .locals 2

    iget v0, p0, Landroidx/customview/widget/a;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/customview/widget/a;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Landroidx/customview/widget/a;->mHoveredVirtualViewId:I

    if-eq p1, v4, :cond_2

    invoke-direct {p0, v4}, Landroidx/customview/widget/a;->s(I)V

    return v3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/a;->getVirtualViewAt(FF)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/customview/widget/a;->s(I)V

    if-eq p1, v4, :cond_4

    move v1, v3

    :cond_4
    :goto_0
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x42

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroidx/customview/widget/a;->n(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0, v0, v4}, Landroidx/customview/widget/a;->o(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroidx/customview/widget/a;->d()Z

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    invoke-direct {p0, p1, v4}, Landroidx/customview/widget/a;->o(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2, v4}, Landroidx/customview/widget/a;->o(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Ld0/i;
    .locals 0

    iget-object p1, p0, Landroidx/customview/widget/a;->mNodeProvider:Landroidx/customview/widget/a$c;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/customview/widget/a$c;

    invoke-direct {p1, p0}, Landroidx/customview/widget/a$c;-><init>(Landroidx/customview/widget/a;)V

    iput-object p1, p0, Landroidx/customview/widget/a;->mNodeProvider:Landroidx/customview/widget/a$c;

    :cond_0
    iget-object p0, p0, Landroidx/customview/widget/a;->mNodeProvider:Landroidx/customview/widget/a$c;

    return-object p0
.end method

.method public getFocusedVirtualView()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/customview/widget/a;->getAccessibilityFocusedVirtualViewId()I

    move-result p0

    return p0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 0

    iget p0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    return p0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method public final invalidateRoot()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 4
    invoke-direct {p0, p1, v1}, Landroidx/customview/widget/a;->e(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Ld0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 6
    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Ld0/h;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/customview/widget/a;->i()Ld0/h;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/customview/widget/a;->h(I)Ld0/h;

    move-result-object p0

    return-object p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/a;->o(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/a;->onPopulateNodeForHost(Ld0/h;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected onPopulateNodeForHost(Ld0/h;)V
    .locals 0

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILd0/h;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/customview/widget/a;->p(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/customview/widget/a;->q(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/customview/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    iput p1, p0, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/a;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/customview/widget/a;->e(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p0, p0, Landroidx/customview/widget/a;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

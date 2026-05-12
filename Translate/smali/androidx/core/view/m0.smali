.class public abstract Landroidx/core/view/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/m0$m;,
        Landroidx/core/view/m0$k;,
        Landroidx/core/view/m0$l;,
        Landroidx/core/view/m0$n;,
        Landroidx/core/view/m0$h;,
        Landroidx/core/view/m0$f;,
        Landroidx/core/view/m0$j;,
        Landroidx/core/view/m0$g;,
        Landroidx/core/view/m0$i;,
        Landroidx/core/view/m0$e;
    }
.end annotation


# static fields
.field private static a:Ljava/util/WeakHashMap;

.field private static final b:[I

.field private static final c:Landroidx/core/view/b0;

.field private static final d:Landroidx/core/view/m0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    sget v0, Landroidx/core/R$id;->accessibility_custom_action_0:I

    sget v1, Landroidx/core/R$id;->accessibility_custom_action_1:I

    sget v2, Landroidx/core/R$id;->accessibility_custom_action_2:I

    sget v3, Landroidx/core/R$id;->accessibility_custom_action_3:I

    sget v4, Landroidx/core/R$id;->accessibility_custom_action_4:I

    sget v5, Landroidx/core/R$id;->accessibility_custom_action_5:I

    sget v6, Landroidx/core/R$id;->accessibility_custom_action_6:I

    sget v7, Landroidx/core/R$id;->accessibility_custom_action_7:I

    sget v8, Landroidx/core/R$id;->accessibility_custom_action_8:I

    sget v9, Landroidx/core/R$id;->accessibility_custom_action_9:I

    sget v10, Landroidx/core/R$id;->accessibility_custom_action_10:I

    sget v11, Landroidx/core/R$id;->accessibility_custom_action_11:I

    sget v12, Landroidx/core/R$id;->accessibility_custom_action_12:I

    sget v13, Landroidx/core/R$id;->accessibility_custom_action_13:I

    sget v14, Landroidx/core/R$id;->accessibility_custom_action_14:I

    sget v15, Landroidx/core/R$id;->accessibility_custom_action_15:I

    sget v16, Landroidx/core/R$id;->accessibility_custom_action_16:I

    sget v17, Landroidx/core/R$id;->accessibility_custom_action_17:I

    sget v18, Landroidx/core/R$id;->accessibility_custom_action_18:I

    sget v19, Landroidx/core/R$id;->accessibility_custom_action_19:I

    sget v20, Landroidx/core/R$id;->accessibility_custom_action_20:I

    sget v21, Landroidx/core/R$id;->accessibility_custom_action_21:I

    sget v22, Landroidx/core/R$id;->accessibility_custom_action_22:I

    sget v23, Landroidx/core/R$id;->accessibility_custom_action_23:I

    sget v24, Landroidx/core/R$id;->accessibility_custom_action_24:I

    sget v25, Landroidx/core/R$id;->accessibility_custom_action_25:I

    sget v26, Landroidx/core/R$id;->accessibility_custom_action_26:I

    sget v27, Landroidx/core/R$id;->accessibility_custom_action_27:I

    sget v28, Landroidx/core/R$id;->accessibility_custom_action_28:I

    sget v29, Landroidx/core/R$id;->accessibility_custom_action_29:I

    sget v30, Landroidx/core/R$id;->accessibility_custom_action_30:I

    sget v31, Landroidx/core/R$id;->accessibility_custom_action_31:I

    filled-new-array/range {v0 .. v31}, [I

    move-result-object v0

    sput-object v0, Landroidx/core/view/m0;->b:[I

    new-instance v0, Landroidx/core/view/l0;

    invoke-direct {v0}, Landroidx/core/view/l0;-><init>()V

    sput-object v0, Landroidx/core/view/m0;->c:Landroidx/core/view/b0;

    new-instance v0, Landroidx/core/view/m0$e;

    invoke-direct {v0}, Landroidx/core/view/m0$e;-><init>()V

    sput-object v0, Landroidx/core/view/m0;->d:Landroidx/core/view/m0$e;

    return-void
.end method

.method public static A(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method public static A0(Landroid/view/View;Landroidx/core/view/d0;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/d0;->a()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/PointerIcon;

    invoke-static {p0, p1}, Landroidx/core/view/m0$j;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    return-void
.end method

.method public static B(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public static B0(Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/core/view/m0$i;->b(Landroid/view/View;II)V

    return-void
.end method

.method public static C(Landroid/view/View;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$i;->a(Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->H0()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/m0$f;->f(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static D(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->H0()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/m0$f;->e(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static D0(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->n(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static E(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->o(Landroid/view/View;F)V

    return-void
.end method

.method public static F(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->f(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static F0(Landroid/view/View;Landroidx/core/view/z0$b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/z0;->d(Landroid/view/View;Landroidx/core/view/z0$b;)V

    return-void
.end method

.method public static G(Landroid/view/View;)Landroidx/core/view/c1;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$n;->c(Landroid/view/View;)Landroidx/core/view/c1;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->p(Landroid/view/View;F)V

    return-void
.end method

.method public static H(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    return p0
.end method

.method private static H0()Landroidx/core/view/m0$f;
    .locals 5

    new-instance v0, Landroidx/core/view/m0$c;

    sget v1, Landroidx/core/R$id;->tag_state_description:I

    const/16 v2, 0x40

    const/16 v3, 0x1e

    const-class v4, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/core/view/m0$c;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static I(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->g(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static I0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->q(Landroid/view/View;)V

    return-void
.end method

.method public static J(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0;->k(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static K(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0
.end method

.method public static L(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0
.end method

.method public static M(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->a()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/m0$f;->e(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static N(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public static O(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0
.end method

.method public static P(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->h(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static Q(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p0

    return p0
.end method

.method public static R(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->i0()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/m0$f;->e(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static S(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not fully implement ViewParent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x800

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/core/view/m0;->u0(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static T(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public static U(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public static V(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 2

    invoke-virtual {p1}, Landroidx/core/view/a1;->x()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroidx/core/view/m0$g;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Landroidx/core/view/a1;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static W(Landroid/view/View;Ld0/h;)V
    .locals 0

    invoke-virtual {p1}, Ld0/h;->L0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private static X()Landroidx/core/view/m0$f;
    .locals 5

    new-instance v0, Landroidx/core/view/m0$b;

    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    const/16 v2, 0x8

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/core/view/m0$b;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static Y(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static Z(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private static a()Landroidx/core/view/m0$f;
    .locals 4

    new-instance v0, Landroidx/core/view/m0$d;

    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/m0$d;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static a0(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/CharSequence;Ld0/k;)I
    .locals 2

    invoke-static {p0, p1}, Landroidx/core/view/m0;->n(Landroid/view/View;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ld0/h$a;

    invoke-direct {v1, v0, p1, p2}, Ld0/h$a;-><init>(ILjava/lang/CharSequence;Ld0/k;)V

    invoke-static {p0, v1}, Landroidx/core/view/m0;->c(Landroid/view/View;Ld0/h$a;)V

    :cond_0
    return v0
.end method

.method public static b0(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static c(Landroid/view/View;Ld0/h$a;)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->h(Landroid/view/View;)V

    invoke-virtual {p1}, Ld0/h$a;->b()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/core/view/m0;->d0(ILandroid/view/View;)V

    invoke-static {p0}, Landroidx/core/view/m0;->m(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/m0;->S(Landroid/view/View;I)V

    return-void
.end method

.method public static c0(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p0}, Landroidx/core/view/m0;->d0(ILandroid/view/View;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/view/m0;->S(Landroid/view/View;I)V

    return-void
.end method

.method public static d(Landroid/view/View;)Landroidx/core/view/u0;
    .locals 2

    sget-object v0, Landroidx/core/view/m0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/m0;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Landroidx/core/view/m0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/u0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/u0;

    invoke-direct {v0, p0}, Landroidx/core/view/u0;-><init>(Landroid/view/View;)V

    sget-object v1, Landroidx/core/view/m0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static d0(ILandroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/core/view/m0;->m(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/h$a;

    invoke-virtual {v1}, Ld0/h$a;->b()I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Landroid/view/View;Landroidx/core/view/a1;Landroid/graphics/Rect;)Landroidx/core/view/a1;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/core/view/m0$h;->a(Landroid/view/View;Landroidx/core/view/a1;Landroid/graphics/Rect;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Landroid/view/View;Ld0/h$a;Ljava/lang/CharSequence;Ld0/k;)V
    .locals 0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ld0/h$a;->b()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ld0/h$a;->a(Ljava/lang/CharSequence;Ld0/k;)Ld0/h$a;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/m0;->c(Landroid/view/View;Ld0/h$a;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/View;Landroidx/core/view/a1;)Landroidx/core/view/a1;
    .locals 2

    invoke-virtual {p1}, Landroidx/core/view/a1;->x()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroidx/core/view/m0$n;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Landroidx/core/view/a1;->z(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/a1;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static f0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$g;->b(Landroid/view/View;)V

    return-void
.end method

.method static g(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static g0(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method static h(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->j(Landroid/view/View;)Landroidx/core/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/a;

    invoke-direct {v0}, Landroidx/core/view/a;-><init>()V

    :cond_0
    invoke-static {p0, v0}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method public static h0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/core/view/m0$m;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    return-void
.end method

.method public static i()I
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method private static i0()Landroidx/core/view/m0$f;
    .locals 4

    new-instance v0, Landroidx/core/view/m0$a;

    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/m0$a;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static j(Landroid/view/View;)Landroidx/core/view/a;
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->k(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroidx/core/view/a$a;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/core/view/a$a;

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    return-object p0

    :cond_1
    new-instance v0, Landroidx/core/view/a;

    invoke-direct {v0, p0}, Landroidx/core/view/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method

.method public static j0(Landroid/view/View;Landroidx/core/view/a;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/m0;->k(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/a$a;

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1}, Landroidx/core/view/a;-><init>()V

    :cond_0
    invoke-static {p0}, Landroidx/core/view/m0;->u0(Landroid/view/View;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/a;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private static k(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$m;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Landroid/view/View;Z)V
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->a()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/m0$f;->f(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static l(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->X()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/m0$f;->e(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static l0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method private static m(Landroid/view/View;)Ljava/util/List;
    .locals 2

    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static m0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {}, Landroidx/core/view/m0;->X()Landroidx/core/view/m0$f;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/m0$f;->f(Landroid/view/View;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/core/view/m0;->d:Landroidx/core/view/m0$e;

    invoke-virtual {p1, p0}, Landroidx/core/view/m0$e;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/core/view/m0;->d:Landroidx/core/view/m0$e;

    invoke-virtual {p1, p0}, Landroidx/core/view/m0$e;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static n(Landroid/view/View;Ljava/lang/CharSequence;)I
    .locals 8

    invoke-static {p0}, Landroidx/core/view/m0;->m(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld0/h$a;

    invoke-virtual {v2}, Ld0/h$a;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld0/h$a;

    invoke-virtual {p0}, Ld0/h$a;->b()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    move v2, p1

    move v1, v0

    :goto_1
    sget-object v3, Landroidx/core/view/m0;->b:[I

    array-length v4, v3

    if-ge v1, v4, :cond_5

    if-ne v2, p1, :cond_5

    aget v3, v3, v1

    const/4 v4, 0x1

    move v5, v0

    move v6, v4

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld0/h$a;

    invoke-virtual {v7}, Ld0/h$a;->b()I

    move-result v7

    if-eq v7, v3, :cond_2

    move v7, v4

    goto :goto_3

    :cond_2
    move v7, v0

    :goto_3
    and-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public static n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static o(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->b(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->i(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static p(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->c(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->j(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static q(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static r(Landroid/view/View;)F
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$h;->d(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static r0(Landroid/view/View;F)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->k(Landroid/view/View;F)V

    return-void
.end method

.method public static s(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    return p0
.end method

.method public static s0(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static t(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0
.end method

.method public static t0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public static u(Landroid/view/View;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/m0$k;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private static u0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public static v(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static v0(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$k;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static w(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p0

    return p0
.end method

.method public static w0(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    return-void
.end method

.method public static x(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public static x0(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->l(Landroid/view/View;Z)V

    return-void
.end method

.method public static y(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public static y0(Landroid/view/View;Landroidx/core/view/a0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/m0$h;->m(Landroid/view/View;Landroidx/core/view/a0;)V

    return-void
.end method

.method public static z(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method public static z0(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

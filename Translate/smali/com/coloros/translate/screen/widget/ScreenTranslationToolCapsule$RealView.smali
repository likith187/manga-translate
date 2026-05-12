.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView$a;


# instance fields
.field private a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private final getRealViewBackgroundDrawable()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/oplus/view/ViewRootManager;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->G(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-direct {v2, v3}, Lcom/oplus/view/ViewRootManager;-><init>(Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->I0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/oplus/view/ViewRootManager;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "getRealViewBackgroundDrawable NoClassDefFoundError"

    const-string v3, "ScreenTranslationToolCapsule"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-class v1, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    const-string v2, "getViewRootImpl"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_c

    :catch_2
    move-exception v1

    :try_start_3
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get viewRootImpl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_2
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewRootImpl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/coloros/translate/utils/c0$a;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "createBackgroundBlurDrawable"

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-object v5, v0

    :goto_3
    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_4
    move-object v1, v0

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backgroundDrawable is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v5, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->s0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/Object;)V

    :goto_6
    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_7

    :cond_6
    move-object v5, v0

    :goto_7
    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-nez v5, :cond_7

    goto :goto_9

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "setColor"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    invoke-static {v5, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/reflect/Method;)V

    :goto_9
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_b
    :goto_b
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->a0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorForBackground is null "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_d

    :goto_c
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {p0}, Ln8/e;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealViewBackgroundDrawable exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static synthetic h(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->l(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->r(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    return-void
.end method

.method public static synthetic j(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    return-void
.end method

.method public static synthetic k(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->n(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static final l(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->m(I)V

    return-void
.end method

.method private final m(I)V
    .locals 12

    const/4 v0, 0x0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->b:I

    const/4 v1, 0x7

    const-string v2, "ScreenTranslationToolCapsule"

    if-eq p1, v1, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "RealView initViewWhenReady:is not ready"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "RealView initViewWhenReady"

    invoke-virtual {p1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->getRealViewBackgroundDrawable()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->C(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/m;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v4

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->S(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->h0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->g0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v9

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    new-array v11, v11, [Landroid/view/View;

    aput-object v3, v11, v0

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const/4 v3, 0x2

    aput-object v5, v11, v3

    const/4 v3, 0x3

    aput-object v6, v11, v3

    const/4 v3, 0x4

    aput-object v7, v11, v3

    const/4 v3, 0x5

    aput-object v8, v11, v3

    const/4 v3, 0x6

    aput-object v9, v11, v3

    aput-object v10, v11, v1

    invoke-virtual {v2, v11}, Lcom/coloros/translate/screen/widget/m;->v([Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B1()V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getEventLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->p()Z

    move-result v2

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->p0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->c0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->e0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->b0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v2

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->d0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->M(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->J(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->L(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v2

    :goto_1
    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->V(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->v0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->q0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->f0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    :goto_2
    new-instance v0, Lcom/coloros/translate/screen/widget/l1;

    invoke-direct {v0, p0, p1, v1}, Lcom/coloros/translate/screen/widget/l1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private static final n(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ScreenTranslationToolCapsule"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->X(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final p()Z
    .locals 5

    const-string p0, "ScreenTranslationToolCapsule"

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const-string v1, "ro.surface_flinger.supports_background_blur"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/wrapper/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedGaussBlur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v1

    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedGaussBlur: onFailure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private static final q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->m(I)V

    return-void
.end method

.method private static final r(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->m(I)V

    return-void
.end method


# virtual methods
.method public final getToolCapsule()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    return-object p0
.end method

.method public final o()Z
    .locals 1

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->b:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "RealView onAttachedToWindow"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/coloros/translate/screen/widget/k1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/k1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "RealView onDetachedFromWindow"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "RealView onFinishInflate"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/widget/i1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/i1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setToolCapsule(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationToolCapsule"

    const-string v2, "RealView set toolCapsule"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    new-instance p1, Lcom/coloros/translate/screen/widget/j1;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/j1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

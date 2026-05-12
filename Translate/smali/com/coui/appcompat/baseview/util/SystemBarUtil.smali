.class public final Lcom/coui/appcompat/baseview/util/SystemBarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coui/appcompat/baseview/util/SystemBarUtil;

.field private static final NAVIGATION_BAR_KEY:Ljava/lang/String; = "hide_navigationbar_enable"

.field private static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field private static final NAV_STATE_SWIPE_UP_GESTURE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/baseview/util/SystemBarUtil;

    invoke-direct {v0}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;-><init>()V

    sput-object v0, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->INSTANCE:Lcom/coui/appcompat/baseview/util/SystemBarUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->setStatusBarTransparentAndBlackFont$lambda$2$lambda$1(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private static final fixNavigationBarPadding(Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {p0}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final getStatusBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static final isGestureNavigation(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/coui/appcompat/baseview/util/a;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/baseview/util/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    new-instance v1, Landroidx/core/view/c1;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/core/view/c1;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-static {p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Landroidx/core/view/c1;->d(Z)V

    return-void
.end method

.method private static final setStatusBarTransparentAndBlackFont$lambda$2$lambda$1(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/coui/appcompat/baseview/util/SystemBarUtil;->fixNavigationBarPadding(Landroid/app/Activity;Landroid/view/WindowInsets;)V

    return-object p2
.end method

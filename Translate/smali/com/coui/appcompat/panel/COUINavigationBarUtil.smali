.class public Lcom/coui/appcompat/panel/COUINavigationBarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;,
        Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;
    }
.end annotation


# static fields
.field private static final HIDE_NAVIGATION_BAR_ENABLE:Ljava/lang/String; = "hide_navigationbar_enable"

.field private static final MANUAL_HIDE_NAVIGATION_BAR:Ljava/lang/String; = "manual_hide_navigationbar"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAVIGATION_BAR_IMMERSIVE:Ljava/lang/String; = "nav_bar_immersive"

.field private static final NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

.field private static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field private static final NAV_STATE_SWIPE_UP_GESTURE:I = 0x2

.field private static final NAV_STATE_VIRTUAL_KEY:I = 0x0

.field private static final NAV_STATE_VIRTUAL_KEY_AND_HIDE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NavigationBarUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nav_bar_immersive"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v2, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_1

    div-float/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    :cond_1
    return v0
.end method

.method public static isGestureNavigation(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNavigationBarShow(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_hide_navigationbar"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportNavigationBar(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_showNavigationBar"

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "qemu.hw.mainkeys"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, p0

    :goto_1
    move p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get navigation bar status message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return p0
.end method

.method public static registerObserver(Landroid/content/Context;Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;)Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;-><init>(Landroid/content/Context;Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarChangeListener;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0
.end method

.method public static unregisterObserver(Landroid/content/Context;Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil$NavigationBarContentObserver;->clearListener()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

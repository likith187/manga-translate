.class public Lcom/coui/appcompat/uiutil/UIUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANIM_LEVEL_HIGN_END:I = 0x1

.field public static final ANIM_LEVEL_INVALID:I = -0x1

.field public static final ANIM_LEVEL_LOW_END:I = 0x3

.field public static final ANIM_LEVEL_MID_END:I = 0x2

.field public static final ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

.field public static final ANIM_LEVEL_ULTRA_LOW_END:I = 0x4

.field public static final CONSTANT_COLOR_MASK:I = 0xffffff

.field public static final CONSTANT_INT_EIGHT:I = 0x8

.field public static final CONSTANT_INT_EIGHTEEN:I = 0x12

.field public static final CONSTANT_INT_ELEVEN:I = 0xb

.field public static final CONSTANT_INT_FIFTEEN:I = 0xf

.field public static final CONSTANT_INT_FIVE:I = 0x5

.field public static final CONSTANT_INT_FORE:I = 0x4

.field public static final CONSTANT_INT_FOURTEEN:I = 0xe

.field public static final CONSTANT_INT_NINE:I = 0x9

.field public static final CONSTANT_INT_NINETY:I = 0x5a

.field public static final CONSTANT_INT_ONE_HUNDRED:I = 0x64

.field public static final CONSTANT_INT_ONE_HUNDRED_TEENTY:I = 0x78

.field public static final CONSTANT_INT_ONE_THOUSAND:I = 0x3e8

.field public static final CONSTANT_INT_SEVEN:I = 0x7

.field public static final CONSTANT_INT_SIX:I = 0x6

.field public static final CONSTANT_INT_SIXTEEN:I = 0x10

.field public static final CONSTANT_INT_SIXTY:I = 0x3c

.field public static final CONSTANT_INT_TEN:I = 0xa

.field public static final CONSTANT_INT_THIRTEEN:I = 0xd

.field public static final CONSTANT_INT_THIRTY:I = 0x1e

.field public static final CONSTANT_INT_THREE:I = 0x3

.field public static final CONSTANT_INT_THREE_HUNDRED:I = 0x12c

.field public static final CONSTANT_INT_THTEE_HUNDRED_THIRTY:I = 0x14a

.field public static final CONSTANT_INT_TWELVE:I = 0xc

.field public static final CONSTANT_INT_TWO_HUNDRED_SEVENTY:I = 0x10e

.field public static final DEBUG:Z = false

.field public static final DIRECTION_BOTTOM:I = 0x3

.field public static final DIRECTION_END:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_START:I = 0x5

.field public static final DIRECTION_TOP:I = 0x1

.field public static final INT_TWENTY_FOUR:I = 0x18

.field public static final LARGE_WIDTH_DP:I = 0x348

.field public static final MEDIUM_WIDTH_DP:I = 0x258

.field private static final TAG:Ljava/lang/String; = "UIUtil"

.field public static final TWO_FIVE_FIVE:I = 0xff

.field private static sCurrentAnimLevel:I

.field private static sStringMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/AnimLevel;->MID_END:Lcom/coui/appcompat/uiutil/AnimLevel;

    sput-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    const/4 v0, -0x1

    sput v0, Lcom/coui/appcompat/uiutil/UIUtil;->sCurrentAnimLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaColor(IF)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static colorToFloats(I)[F
    .locals 5

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 v3, p0, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float/2addr p0, v1

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p0, v1, v0

    return-object v1
.end method

.method public static confirmLevelAnim(Lcom/coui/appcompat/uiutil/AnimLevel;)Z
    .locals 2

    sget v0, Lcom/coui/appcompat/uiutil/UIUtil;->sCurrentAnimLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/coui/appcompat/uiutil/UIUtil;->getAnimLevelVersion()I

    move-result v0

    sput v0, Lcom/coui/appcompat/uiutil/UIUtil;->sCurrentAnimLevel:I

    :cond_0
    sget v0, Lcom/coui/appcompat/uiutil/UIUtil;->sCurrentAnimLevel:I

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/AnimLevel;->getIntValue()I

    move-result p0

    if-gt v0, p0, :cond_2

    sget p0, Lcom/coui/appcompat/uiutil/UIUtil;->sCurrentAnimLevel:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static contextToActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static getAdjustmentPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getAnimLevelVersion()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "persist.sys.oplus.anim_level"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimLevelVersion e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UIUtil"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getColorStateListCompatNoCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static final getConvertedFraction(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static getPrice(D)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->removeZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPx(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getScreenHeightMetrics(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenHeightRealSize(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    return-object v0
.end method

.method public static getScreenWidthMetrics(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getScreenWidthRealSize(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->sStringMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->sStringMap:Landroid/util/SparseArray;

    :cond_0
    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->sStringMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object p0, Lcom/coui/appcompat/uiutil/UIUtil;->sStringMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static initEditViewCursor(Landroid/widget/TextView;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-gt p1, p0, :cond_1

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "the cursor of EditText is indexOutOfBoundException!!!!!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isInMarketStack(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static isInVisibleRect(Landroid/view/View;)Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreenBaseOnRealSize(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result p0

    const/16 v0, 0x348

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmallScreenBaseOnRealSize(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result p0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeGradientDrawable(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-object v0
.end method

.method public static makeSelector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, p0}, Lcom/coui/appcompat/uiutil/UIUtil;->makeSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static makeSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, -0x101009c

    const v2, -0x10100a1

    const v3, -0x10100a7

    .line 2
    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p0, 0x10100a1

    .line 3
    filled-new-array {v1, p0, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x101009c

    .line 4
    filled-new-array {v1, v2, v3}, [I

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    filled-new-array {v1, p0, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x10100a7

    .line 6
    filled-new-array {p0, v1}, [I

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 7
    filled-new-array {v1}, [I

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static makeShapeDrawable(FIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p3, 0x0

    cmpl-float p3, p0, p3

    if-lez p3, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object v0
.end method

.method public static px2dip(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static removeZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "0+?$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[.]$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static safeForceHasOverlappingRendering(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method public static safeSetOutlineAmbientShadowColor(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    return-void
.end method

.method public static safeSetOutlineSpotShadowColor(Landroid/view/View;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    return-void
.end method

.method public static setElevationToView(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_for_lowerP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->setElevationToView(Landroid/view/View;III)V

    return-void
.end method

.method public static setElevationToView(Landroid/view/View;III)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public static setMargin(Landroid/view/View;II)V
    .locals 2

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_4
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_5
    move-object p1, v0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

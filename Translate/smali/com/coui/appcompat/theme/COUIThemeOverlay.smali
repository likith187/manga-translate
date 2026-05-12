.class public Lcom/coui/appcompat/theme/COUIThemeOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;
    }
.end annotation


# static fields
.field private static final BASE_CONFIG_NEW:Ljava/lang/String; = "android.content.res.OplusBaseConfiguration"

.field private static final COLOR_MATERIAL_ENABLE:Ljava/lang/String; = "color_material_enable"

.field private static final COMPAT_VERSION:I = 0x2ee0

.field private static final COUI_CUSTOM_FALG:I = 0x20000

.field private static final COUI_CUSTOM_THEME_FLAG:I = 0x100

.field private static final COUI_ONLINE_FALG:I = 0x100000

.field private static final COUI_SELECT_FALG:I = 0xffff

.field private static final COUI_SINGLE_FALG:I = 0x10000

.field private static final COUI_THIRD_THEME_FLAG:I = 0x1

.field private static final COUI_TYPE_FALG:I = 0xff0000

.field private static final COUI_WALLPAPER_FALG:I = 0x40000

.field private static final CUSTOM_THEME_PATH:Ljava/lang/String; = "my_company/media/theme/"

.field private static final CUSTOM_THEME_PATH_SETTING:Ljava/lang/String; = "custom_theme_path_setting"

.field private static final DATA_THEME_PATH:Ljava/lang/String; = "data/theme/"

.field private static final TAG:Ljava/lang/String; = "COUIThemeOverlay"

.field private static final THEME_VERSION_KEY:Ljava/lang/String; = "ro.oplus.theme.version"

.field private static final WRAPPER_CLASS_NEW:Ljava/lang/String; = "com.oplus.inner.content.res.ConfigurationWrapper"

.field private static mCompatVersion:I

.field private static mThemeO:Z

.field private static mThemeOverlayName:Ljava/lang/String;

.field private static mThemeP:Z

.field private static mThemeR:Z


# instance fields
.field private mMetaCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private themeOverlays:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.inner.content.res.ConfigurationWrapper"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getConfigurationName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeOverlayName:Ljava/lang/String;

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isThemeO()Z

    move-result v0

    sput-boolean v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeO:Z

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isThemeR()Z

    move-result v0

    sput-boolean v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeR:Z

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isThemeP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeP:Z

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getCompatVersion()I

    move-result v0

    sput v0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mCompatVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    return-void
.end method

.method private canReachBaseConfiguration()Z
    .locals 0

    :try_start_0
    const-string p0, "android.content.res.OplusBaseConfiguration"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static canReachFrameworkWrapper()Z
    .locals 1

    :try_start_0
    const-string v0, "com.oplus.inner.content.res.ConfigurationWrapper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getBoolValue(Landroid/content/res/Resources;I)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCompatVersion()I
    .locals 5

    const/4 v0, 0x0

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

    const-string v2, "ro.oplus.theme.version"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/version/COUICompatUtil;->getThemeVerisonName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompatVersion e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIThemeOverlay"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return v0
.end method

.method private getExtraConfig(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;
    .locals 1

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    return-object p0
.end method

.method public static getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay$SingleTone;->access$000()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    return-object v0
.end method

.method private getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getThemeArrayId(Landroid/content/Context;II)I
    .locals 5

    const/4 v0, 0x0

    if-lez p2, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mCompatVersion:I

    const/16 v3, 0x2ee0

    if-le v2, v3, :cond_2

    sget p0, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_2
    const-string v4, "array"

    if-ne v2, v3, :cond_6

    sget-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeR:Z

    if-eqz v2, :cond_3

    const-string v2, "coui_theme_arrays_ids_patch_r"

    goto :goto_0

    :cond_3
    const-string v2, "coui_theme_arrays_ids_patch_o"

    :goto_0
    invoke-direct {p0, p1, v2, v4}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget-boolean p1, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeO:Z

    if-eqz p1, :cond_4

    const/high16 p1, 0x100000

    if-ne p3, p1, :cond_4

    sget p0, Lcom/support/appcompat/R$array;->coui_theme_arrays_ids:I

    :cond_4
    if-eqz p0, :cond_9

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lt p1, p2, :cond_5

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_6
    sget-boolean p3, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeR:Z

    if-eqz p3, :cond_7

    const-string p3, "coui_theme_arrays_ids_repatch_r"

    goto :goto_1

    :cond_7
    const-string p3, "coui_theme_arrays_ids_repatch_o"

    :goto_1
    invoke-direct {p0, p1, p3, v4}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    if-lt p1, p2, :cond_8

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    :goto_2
    return v0
.end method

.method private hasCustomThemePkg(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "my_company/media/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "custom_theme_path_setting"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    :cond_3
    :goto_0
    return v2
.end method

.method private hasDataThemePkg(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getExtraConfig(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    :cond_1
    const-string p0, "data/theme/"

    if-lez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isCOUIEnable(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "color_material_enable"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move p0, v0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCOUIEnable e: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIThemeOverlay"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_4
    return p0
.end method

.method private static isThemeO()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v0

    :array_0
    .array-data 2
        0x4fs
        0x50s
        0x50s
        0x4fs
    .end array-data

    :array_1
    .array-data 2
        0x4fs
        0x70s
        0x70s
        0x6fs
    .end array-data
.end method

.method private static isThemeP()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [C

    fill-array-data v2, :array_3

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [C

    fill-array-data v2, :array_4

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v0

    :array_0
    .array-data 2
        0x4fs
        0x6es
        0x65s
        0x50s
        0x6cs
        0x75s
        0x73s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4fs
        0x4es
        0x45s
        0x50s
        0x4cs
        0x55s
        0x53s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x47s
        0x41s
        0x4cs
        0x49s
        0x4cs
        0x45s
        0x49s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x67s
        0x61s
        0x6cs
        0x69s
        0x6cs
        0x65s
        0x69s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x46s
        0x41s
        0x52s
        0x41s
        0x44s
        0x41s
        0x59s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x66s
        0x61s
        0x72s
        0x61s
        0x64s
        0x61s
        0x79s
    .end array-data
.end method

.method private static isThemeR()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v0

    nop

    :array_0
    .array-data 2
        0x52s
        0x45s
        0x41s
        0x4cs
        0x4ds
        0x45s
    .end array-data

    :array_1
    .array-data 2
        0x52s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x72s
        0x65s
        0x61s
        0x6cs
        0x6ds
        0x65s
    .end array-data
.end method

.method private resolveThemeStyle(Landroid/content/Context;)V
    .locals 12

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isRejectTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget v0, Lcom/support/appcompat/R$attr;->couiThemeIdentifier:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide v3

    const-wide/32 v5, 0xffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, v3

    long-to-int v5, v5

    sget v6, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mCompatVersion:I

    const/16 v7, 0x2ee0

    const/4 v8, 0x1

    if-ge v6, v7, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-eqz v3, :cond_c

    if-nez v0, :cond_2

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    const/high16 v3, 0x20000

    if-ne v5, v3, :cond_3

    sget p1, Lcom/support/appcompat/R$id;->coui_global_theme:I

    sget v0, Lcom/support/appcompat/R$style;->COUIOverlay_Theme_Single_First:I

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->setThemeOverlay(II)V

    return-void

    :cond_3
    const/high16 v3, 0x10000

    const/4 v4, -0x1

    if-ne v5, v3, :cond_6

    sget-boolean v2, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeP:Z

    if-eqz v2, :cond_5

    if-eqz v6, :cond_4

    const-string v2, "coui_theme_arrays_single_repatch_p"

    goto :goto_1

    :cond_4
    const-string v2, "coui_theme_arrays_single_patch_p"

    :goto_1
    const-string v3, "array"

    invoke-direct {p0, p1, v2, v3}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_5
    sget v2, Lcom/support/appcompat/R$array;->coui_theme_arrays_single:I

    goto :goto_4

    :cond_6
    const/high16 v3, 0x40000

    if-ne v5, v3, :cond_7

    sget v0, Lcom/support/appcompat/R$array;->coui_theme_arrays_default_patch:I

    :goto_2
    sub-int/2addr v2, v8

    move v11, v2

    move v2, v0

    move v0, v11

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_9

    const/high16 v3, 0x100000

    if-ne v5, v3, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    move v0, v4

    goto :goto_4

    :cond_9
    :goto_3
    invoke-direct {p0, p1, v0, v5}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getThemeArrayId(Landroid/content/Context;II)I

    move-result v0

    goto :goto_2

    :goto_4
    if-eqz v2, :cond_c

    if-ne v0, v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-le v2, v0, :cond_b

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v1, Lcom/support/appcompat/R$id;->coui_global_theme:I

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->setThemeOverlay(II)V

    :cond_b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    :goto_5
    return-void
.end method

.method private typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public applyCOUITintIcon(Landroid/content/Context;Landroid/widget/ImageView;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isRejectTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->isCOUITheme(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_5

    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    instance-of p3, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    move-object p3, p0

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimaryText:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p3, p1}, Lcom/coui/appcompat/tintimageview/COUITintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    sget p3, Lcom/support/appcompat/R$attr;->couiColorPrimaryText:I

    invoke-static {p1, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/tintimageview/COUITintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-static {p2, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public applyThemeOverlays(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->clearThemeOverlays()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->resolveThemeStyle(Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearThemeOverlays()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCOUITheme(Landroid/content/res/Configuration;)J
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->canReachBaseConfiguration()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getExtraConfig(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeOverlayName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "getMaterialColor"

    const-class v4, Landroid/content/res/Configuration;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCOUITheme e: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIThemeOverlay"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getThemeOverlay(I)I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCOUITheme(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGreenMaterial(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    const-wide/16 v0, 0x5

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRejectTheme(Landroid/content/Context;)Z
    .locals 11

    const-string v0, "COUIThemeOverlay"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->canReachBaseConfiguration()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getExtraConfig(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    :try_start_1
    iget-wide v7, v6, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v6, v3

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get extra config failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v7, v4

    :goto_1
    if-nez v6, :cond_2

    :try_start_2
    sget-object v6, Lcom/coui/appcompat/theme/COUIThemeOverlay;->mThemeOverlayName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "getThemeChangedFlags"

    const-class v10, Landroid/content/res/Configuration;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRejectTheme e: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-wide/16 v9, 0x1

    and-long/2addr v9, v7

    cmp-long v0, v9, v4

    if-eqz v0, :cond_4

    const-wide/16 v9, 0x100

    and-long v6, v7, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->hasCustomThemePkg(Landroid/content/Context;)Z

    move-result p0

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->hasDataThemePkg(Landroid/content/Context;)Z

    move-result p0

    goto :goto_3

    :cond_4
    move p0, v2

    :goto_3
    if-eqz p0, :cond_5

    iget p0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-eq p0, p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_4
    return v2
.end method

.method public setThemeOverlay(II)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/coui/appcompat/theme/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldResetTheme(Landroid/content/res/Configuration;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x40000

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

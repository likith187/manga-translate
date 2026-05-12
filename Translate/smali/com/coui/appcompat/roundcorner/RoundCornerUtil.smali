.class public Lcom/coui/appcompat/roundcorner/RoundCornerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIM_LEVEL_KEY:Ljava/lang/String; = "persist.sys.oplus.anim_level"

.field private static final DEFAULT_WEIGHT_KEY:Ljava/lang/String; = "persist.sys.oplus.default_smooth_weight"

.field private static final DEFAULT_WIGHT:I = 0xaa

.field private static final DEFAULT_WIGHT_DIVISOR:F = 100.0f

.field private static final LIGHT_ANIM:I = 0x3

.field private static final NON_WEIGHT:F = 2.0f

.field private static final SDK_SUB_VERSION_PATH_SUPPORT_SINGLE_CORNER:I = 0xc

.field public static final SDK_SUB_VERSION_SUPPORT_BLUR:I = 0xa

.field public static final SDK_VERSION:I = 0x22

.field public static final SMOOTH_ROUND_CORNER_TYPE_OS15:I = 0x0

.field public static final SMOOTH_ROUND_CORNER_TYPE_OS16:I = 0x1

.field public static final SMOOTH_ROUND_CORNER_TYPE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RoundCornerUtil"

.field private static final UPGRADE_ANIM_LEVEL_KEY:Ljava/lang/String; = "persist.sys.oplus.upgrade_anim_level"

.field private static sAnimLevel:Ljava/lang/Integer;

.field private static sDefaultWeight:Ljava/lang/Float;

.field private static sIsSmoothOn:Ljava/lang/Boolean;

.field private static sSdkVersion:Ljava/lang/Integer;

.field private static sUpgradeAnimLevel:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmoothStyleType()I
    .locals 2

    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x25

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static getSystemProp(Ljava/lang/String;I)I
    .locals 4

    const-string v0, "RoundCornerUtil"

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

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal access:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation target exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_4
    return p1
.end method

.method public static isPathSupportSingleCorner()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x22

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getSDKSubVersion()I

    move-result v0

    const/16 v3, 0xc

    if-lt v0, v3, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static isSmoothRoundRectOn()Z
    .locals 3

    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sIsSmoothOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sAnimLevel:Ljava/lang/Integer;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    const-string v0, "persist.sys.oplus.anim_level"

    invoke-static {v0, v1}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSystemProp(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sAnimLevel:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sUpgradeAnimLevel:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-string v0, "persist.sys.oplus.upgrade_anim_level"

    invoke-static {v0, v1}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSystemProp(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sUpgradeAnimLevel:Ljava/lang/Integer;

    :cond_2
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sDefaultWeight:Ljava/lang/Float;

    if-nez v0, :cond_3

    const-string v0, "persist.sys.oplus.default_smooth_weight"

    const/16 v2, 0xaa

    invoke-static {v0, v2}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSystemProp(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sDefaultWeight:Ljava/lang/Float;

    :cond_3
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sAnimLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sUpgradeAnimLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sDefaultWeight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sIsSmoothOn:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sIsSmoothOn:Ljava/lang/Boolean;

    :goto_1
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sIsSmoothOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportRoundCornerWhenBlur()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x22

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getSDKSubVersion()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static isVersionSupport()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->sSdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

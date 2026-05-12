.class public Lcom/coui/appcompat/version/COUIVersionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COUI_1_0:I = 0x1

.field public static final COUI_1_2:I = 0x2

.field public static final COUI_1_4:I = 0x3

.field public static final COUI_2_0:I = 0x4

.field public static final COUI_2_1:I = 0x5

.field public static final COUI_3_0:I = 0x6

.field public static final COUI_3_1:I = 0x7

.field public static final COUI_3_2:I = 0x8

.field public static final COUI_5_0:I = 0x9

.field public static final COUI_5_1:I = 0xa

.field public static final COUI_5_2:I = 0xb

.field public static final COUI_6_0:I = 0xc

.field public static final COUI_6_1:I = 0xd

.field public static final COUI_6_2:I = 0xe

.field public static final COUI_6_7:I = 0xf

.field public static final COUI_7_0:I = 0x10

.field public static final COUI_7_1:I = 0x11

.field public static final COUI_7_2:I = 0x12

.field public static final COUI_8_0:I = 0x13

.field public static final COUI_8_1:I = 0x14

.field public static final COUI_8_2:I = 0x15

.field private static final GET_OS_VERSION_METHOD:Ljava/lang/String; = "getOplusOSVERSION"

.field private static final TAG:Ljava/lang/String; = "COUIVersionUtil"

.field public static final UNKNOWN:I = 0x0

.field private static final VERSION_WRAPPER:Ljava/lang/String; = "com.oplus.os.OplusBuild"

.field private static mGetOsVersionMethodName:Ljava/lang/String;

.field private static mVersionWrapperName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canReachFrameworkWrapper()Z
    .locals 1

    :try_start_0
    const-string v0, "com.oplus.os.OplusBuild"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkOPlusViewSubSDK(II)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    if-ne v0, p0, :cond_2

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getSDKSubVersion()I

    move-result p0

    if-lt p0, p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.os.OplusBuild"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getOsBuildName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->mVersionWrapperName:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDeviceName"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceName failed. error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIVersionUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getOSVersionCode()I
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.os.OplusBuild"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getOsBuildName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->mVersionWrapperName:Ljava/lang/String;

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->canReachFrameworkWrapper()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getOplusOSVERSION"

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/version/COUICompatUtil;->getInstance()Lcom/coui/appcompat/version/COUICompatUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/version/COUICompatUtil;->getOsVersionMethodName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->mGetOsVersionMethodName:Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/coui/appcompat/version/COUIVersionUtil;->mVersionWrapperName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_2

    sget v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/coui/appcompat/version/COUIVersionUtil;->mGetOsVersionMethodName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOSVersionCode failed. error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVersionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static getSDKSubVersion()I
    .locals 1

    :try_start_0
    sget v0, Lcom/oplus/os/OplusBuild$VERSION;->SDK_SUB_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColorOS()Z
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

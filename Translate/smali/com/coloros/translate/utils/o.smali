.class public abstract Lcom/coloros/translate/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/coloros/translate/utils/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/o;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "persist.sys.oplus.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/coloros/translate/utils/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "UnSupportedApiVersionException: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceInfoModel"

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/o;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/coloros/translate/utils/o;->a:Ljava/lang/String;

    return-object v0
.end method

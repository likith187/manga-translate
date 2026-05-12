.class public final Lcom/oplus/aiunit/core/utils/AuthUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHENTICATE_PERMISSION_OPLUS:Ljava/lang/String; = "com.oplus.permission.safe.AUTHENTICATE"

.field private static final AUTHENTICATE_PERMISSION_OPPO:Ljava/lang/String; = "com.oppo.permission.safe.AUTHENTICATE"

.field public static final AUTH_STYLE_INNER:Ljava/lang/String; = "0"

.field private static final COMPONENT_SAFE_PERMISSION_OPLUS:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final COMPONENT_SAFE_PERMISSION_OPPO:Ljava/lang/String; = "oppo.permission.OPPO_COMPONENT_SAFE"

.field public static final INSTANCE:Lcom/oplus/aiunit/core/utils/AuthUtil;

.field public static final META_KEY_AUTH_STYLE:Ljava/lang/String; = "com.oplus.aiunit.auth_style"

.field private static final TAG:Ljava/lang/String; = "AuthClient"

.field private static metaAuthStyle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/utils/AuthUtil;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/utils/AuthUtil;-><init>()V

    sput-object v0, Lcom/oplus/aiunit/core/utils/AuthUtil;->INSTANCE:Lcom/oplus/aiunit/core/utils/AuthUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCallingAuthenticatePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.oppo.permission.safe.AUTHENTICATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.permission.safe.AUTHENTICATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

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

.method public static final checkSelfAuthenticatePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.oppo.permission.safe.AUTHENTICATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.permission.safe.AUTHENTICATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

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

.method public static final getAuthStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/utils/AuthUtil;->metaAuthStyle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com.oplus.aiunit.auth_style"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/utils/AuthUtil;->metaAuthStyle:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static final isInnerAuth(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AuthUtil;->getAuthStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
.super Lcom/oplus/aisubsystem/core/client/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;,
        Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;

.field public static final PARAM_ANTISPAM_CONTENT:Ljava/lang/String; = "custom::antispam_content"

.field public static final PARAM_ANTISPAM_METHOD:Ljava/lang/String; = "custom::antispam_method"

.field public static final PARAM_ANTISPAM_SAMPLE:Ljava/lang/String; = "custom::antispam_sample"

.field public static final PARAM_ANTISPAM_SCENE_ID:Ljava/lang/String; = "custom::antispam_scene_id"

.field public static final PARAM_ANTISPAM_SDK_TYPE:Ljava/lang/String; = "custom::antispam_sdk_type"

.field public static final PARAM_ANTISPAM_SDK_VERSION_NO:Ljava/lang/String; = "custom::antispam_sdk_version_no"

.field public static final PARAM_ANTISPAM_SESSION_ID:Ljava/lang/String; = "custom::antispam_session_id"

.field private static final TAG:Ljava/lang/String; = "AntiSpamRequest"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/a;-><init>()V

    return-void
.end method

.method public static final build(Lw8/l;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;->Companion:Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;->build(Lw8/l;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;

    move-result-object p0

    return-object p0
.end method

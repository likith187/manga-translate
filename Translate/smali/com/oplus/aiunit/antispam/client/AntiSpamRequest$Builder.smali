.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
.super Lcom/oplus/aisubsystem/core/client/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;

    invoke-virtual {p0, v0}, Lcom/oplus/aisubsystem/core/client/a$b;->buildRequest(Ljava/lang/Class;)Lcom/oplus/aisubsystem/core/client/a;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;

    return-object p0
.end method

.method public final setContent(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_content"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setMethod(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_method"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSDKType(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_sdk_type"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSDKVersionNo(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_sdk_version_no"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSample(Z)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "custom::antispam_sample"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSceneId(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_scene_id"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;
    .locals 2

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/a$b;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "custom::antispam_session_id"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

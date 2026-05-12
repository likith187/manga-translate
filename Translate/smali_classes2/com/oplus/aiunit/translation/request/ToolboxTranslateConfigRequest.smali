.class public final Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;
.super Lcom/oplus/aiunit/translation/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/request/BaseRequest;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->deviceModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeviceModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->deviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->language:Ljava/lang/String;

    return-void
.end method

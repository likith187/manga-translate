.class public Lcom/oplus/aisubsystem/core/client/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aisubsystem/core/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final paramPackage:Lcom/oplus/aiunit/core/ParamPackage;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::request_id"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    return-void
.end method


# virtual methods
.method public final addProcessCallback(Lcom/oplus/aiunit/core/callback/IProcessCallback;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 3

    const-string v0, "callback::"

    const-string v1, "callback"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/callback/IProcessCallback;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "AiRequest"

    const-string v1, "setProcessCallback"

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public final buildRequest(Ljava/lang/Class;)Lcom/oplus/aisubsystem/core/client/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oplus/aisubsystem/core/client/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/aisubsystem/core/client/a;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/a;->getFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    check-cast v0, Lcom/oplus/aisubsystem/core/client/a;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error creating instance of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AiRequest"

    invoke-static {v1, p1, v0}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {p0}, Ln8/s;->b(Ljava/lang/Object;)V

    const-string p1, "getOrThrow(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/aisubsystem/core/client/a;

    return-object p0
.end method

.method public final getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    return-object p0
.end method

.method public final setAiSettings(Lcom/oplus/aisubsystem/core/client/AiSettings;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 3

    const-string v0, "aiSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getRunningType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "package::running_type"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getRunningId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "package::running_id"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getSurvivalLifecycle()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "package::survival_lifecycle"

    invoke-virtual {v2, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getRunningMaximumMemory()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "package::running_maximum_memory"

    invoke-virtual {v2, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getUserClick()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v2, "ai::key::user_click"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getAppForeground()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "ai::key::app_foreground"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-object p0
.end method

.method public final setApiLevel(I)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package::unit_api_level"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setClientMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "messenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package:client_messenger"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "AiRequest"

    const-string v1, "setClientCallback"

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public final setImagesUri(Ljava/util/Map;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/oplus/aisubsystem/core/client/a$b;"
        }
    .end annotation

    const-string v0, "images"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lz5/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::images_uri"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "AiRequest"

    const-string v0, "setImagesUri failed"

    invoke-static {p1, v0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public final setInferenceCallback(Lcom/oplus/aiunit/core/callback/IInferenceCallback;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::client_inference_callback"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "AiRequest"

    const-string v1, "setInferenceCallback"

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public final setJsonResult(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "jsonResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::json_result"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setJsonSource(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "jsonSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::json_source"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOapApi(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "oapApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::unit_name"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setOapId(I)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package::detector_type"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setPackageName(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::package_name"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setPackageVersion(I)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package::package_version"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setRequestId(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::request_id"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSdkVersion(I)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package::sdk_version"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setSdkVersionName(Ljava/lang/String;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 2

    const-string v0, "sdkVersionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::sdk_version_name"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setTextsUri(Ljava/util/List;)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/oplus/aisubsystem/core/client/a$b;"
        }
    .end annotation

    const-string v0, "texts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lz5/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    const-string v1, "package::texts_uri"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "AiRequest"

    const-string v0, "setTextsUri failed"

    invoke-static {p1, v0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public final setTimeout(J)Lcom/oplus/aisubsystem/core/client/a$b;
    .locals 1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/a$b;->paramPackage:Lcom/oplus/aiunit/core/ParamPackage;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "package::timeout_time"

    invoke-virtual {v0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

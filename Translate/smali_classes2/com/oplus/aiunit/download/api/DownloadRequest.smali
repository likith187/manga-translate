.class public final Lcom/oplus/aiunit/download/api/DownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;

.field public static final PARAM_KEY_DOWNLOAD_ALIAS_NAME:Ljava/lang/String; = "ai::download::key::alias_name"

.field public static final PARAM_KEY_DOWNLOAD_ALLOW_AUTO:Ljava/lang/String; = "ai::download::key::allow_auto_downloads"

.field public static final PARAM_KEY_DOWNLOAD_COMPLETE:Ljava/lang/String; = "ai::download::key::term_download_complete"

.field public static final PARAM_KEY_DOWNLOAD_DESCRIPTION:Ljava/lang/String; = "ai::download::key::description"

.field public static final PARAM_KEY_DOWNLOAD_DOWNLOADING:Ljava/lang/String; = "ai::download::key::term_downloading"

.field public static final PARAM_KEY_DOWNLOAD_ENABLE_CELLULAR:Ljava/lang/String; = "ai::download::key::enable_cellular"

.field public static final PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_CALLBACK:Ljava/lang/String; = "ai::download::key::enable_progress_callback"

.field public static final PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_UI:Ljava/lang/String; = "ai::download::key::enable_progress_ui"

.field public static final PARAM_KEY_DOWNLOAD_EVENT_ID:Ljava/lang/String; = "ai::download::key::event_id"

.field public static final PARAM_KEY_DOWNLOAD_FAIL_RETRY:Ljava/lang/String; = "ai::download::key::term_download_retry"

.field public static final PARAM_KEY_DOWNLOAD_INSTALL_FAIL_RETRY:Ljava/lang/String; = "ai::download::key::term_install_retry"

.field public static final PARAM_KEY_DOWNLOAD_PENDING_INTENT:Ljava/lang/String; = "ai::download::key::pending_intent"

.field public static final PARAM_KEY_DOWNLOAD_REQUEST_ID:Ljava/lang/String; = "ai::download::key::request_id"

.field public static final PARAM_KEY_DOWNLOAD_SILENCE:Ljava/lang/String; = "ai::download::key::silence"

.field public static final PARAM_KEY_DOWNLOAD_SKIP_CONFIRM_UI:Ljava/lang/String; = "ai::download::key::skip_confirm_ui"

.field public static final PARAM_KEY_DOWNLOAD_TITLE:Ljava/lang/String; = "ai::download::key::title"


# instance fields
.field private allowAutoDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private command:Lcom/oplus/aiunit/download/core/Command;

.field private detectName:Ljava/lang/String;

.field private detectNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadListener:Lcom/oplus/aiunit/download/core/DownloadListener;

.field private enableCellular:Z

.field private enableProgressCallback:Z

.field private enableProgressUI:Z

.field private eventId:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private intent:Landroid/app/PendingIntent;

.field private requestId:Ljava/lang/String;

.field private sceneName:Ljava/lang/String;

.field private silence:Z

.field private skipConfirmUI:Z

.field private state:I

.field private terms:Lcom/oplus/aiunit/download/api/CustomTerms;

.field private unitIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/download/api/DownloadRequest;->Companion:Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    new-instance v1, Lcom/oplus/aiunit/download/api/CustomTerms;

    invoke-direct {v1}, Lcom/oplus/aiunit/download/api/CustomTerms;-><init>()V

    iput-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->terms:Lcom/oplus/aiunit/download/api/CustomTerms;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressUI:Z

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->eventId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->state:I

    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->command:Lcom/oplus/aiunit/download/core/Command;

    return-void
.end method

.method public static final synthetic access$setRequestId$p(Lcom/oplus/aiunit/download/api/DownloadRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public static final buildRequest(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/DownloadRequest;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/download/api/DownloadRequest;->Companion:Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/download/api/DownloadRequest$Companion;->buildRequest(Landroid/os/Bundle;)Lcom/oplus/aiunit/download/api/DownloadRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildBody()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    const-string v2, "package::scene_name"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    const-string v2, "package::unit_name"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai::key::download::group_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->command:Lcom/oplus/aiunit/download/core/Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai::download::key::request_command"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->terms:Lcom/oplus/aiunit/download/api/CustomTerms;

    invoke-virtual {v1, v0}, Lcom/oplus/aiunit/download/api/CustomTerms;->fillBody(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->intent:Landroid/app/PendingIntent;

    const-string v2, "ai::download::key::pending_intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressUI:Z

    const-string v2, "ai::download::key::enable_progress_ui"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressCallback:Z

    const-string v2, "ai::download::key::enable_progress_callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->silence:Z

    const-string v2, "ai::download::key::silence"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    const-string v2, "ai::download::key::request_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->eventId:Ljava/lang/String;

    const-string v2, "ai::download::key::event_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableCellular:Z

    const-string v2, "ai::download::key::enable_cellular"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->skipConfirmUI:Z

    const-string v2, "ai::download::key::skip_confirm_ui"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->unitIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->unitIds:Ljava/util/ArrayList;

    const-string v2, "package::unit_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectNames:Ljava/util/ArrayList;

    const-string v2, "package::detect_name_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->allowAutoDownloads:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->allowAutoDownloads:Ljava/util/ArrayList;

    const-string v1, "ai::download::key::allow_auto_downloads"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    :goto_4
    return-object v0
.end method

.method public final getAllowAutoDownloads()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->allowAutoDownloads:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getCommand()Lcom/oplus/aiunit/download/core/Command;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->command:Lcom/oplus/aiunit/download/core/Command;

    return-object p0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDetectNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getDownloadListener()Lcom/oplus/aiunit/download/core/DownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->downloadListener:Lcom/oplus/aiunit/download/core/DownloadListener;

    return-object p0
.end method

.method public final getEnableCellular()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableCellular:Z

    return p0
.end method

.method public final getEnableProgressCallback()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressCallback:Z

    return p0
.end method

.method public final getEnableProgressUI()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressUI:Z

    return p0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->eventId:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->intent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getOrBuildRequestId$aiunit_sdk_download_release()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSceneName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSilence()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->silence:Z

    return p0
.end method

.method public final getSkipConfirmUI()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->skipConfirmUI:Z

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->state:I

    return p0
.end method

.method public final getTerms()Lcom/oplus/aiunit/download/api/CustomTerms;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->terms:Lcom/oplus/aiunit/download/api/CustomTerms;

    return-object p0
.end method

.method public final getUnitIds()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->unitIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final isComplete()Z
    .locals 1

    iget p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->state:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

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

.method public final isSceneOrDetect()I
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final isValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->isSceneOrDetect()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setAllowAutoDownloads(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->allowAutoDownloads:Ljava/util/ArrayList;

    return-void
.end method

.method public final setCommand(Lcom/oplus/aiunit/download/core/Command;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->command:Lcom/oplus/aiunit/download/core/Command;

    return-void
.end method

.method public final setDetectName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectName:Ljava/lang/String;

    return-void
.end method

.method public final setDetectNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->detectNames:Ljava/util/ArrayList;

    return-void
.end method

.method public final setDownloadListener(Lcom/oplus/aiunit/download/core/DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->downloadListener:Lcom/oplus/aiunit/download/core/DownloadListener;

    return-void
.end method

.method public final setEnableCellular(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableCellular:Z

    return-void
.end method

.method public final setEnableProgressCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressCallback:Z

    return-void
.end method

.method public final setEnableProgressUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->enableProgressUI:Z

    return-void
.end method

.method public final setEventId$aiunit_sdk_download_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->eventId:Ljava/lang/String;

    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public final setIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->intent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final setSceneName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public final setSilence(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->silence:Z

    return-void
.end method

.method public final setSkipConfirmUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->skipConfirmUI:Z

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->state:I

    return-void
.end method

.method public final setTerms(Lcom/oplus/aiunit/download/api/CustomTerms;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->terms:Lcom/oplus/aiunit/download/api/CustomTerms;

    return-void
.end method

.method public final setUnitIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->unitIds:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadRequest("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/download/api/DownloadRequest;->command:Lcom/oplus/aiunit/download/core/Command;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

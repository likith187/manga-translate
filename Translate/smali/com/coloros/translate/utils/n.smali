.class public final Lcom/coloros/translate/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/n$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/n;

    invoke-direct {v0}, Lcom/coloros/translate/utils/n;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic L(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "1"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->K(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, "unknown"

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, -0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/utils/n;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic X(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "0"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Z(Lcom/coloros/translate/utils/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "1"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->Y(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private final b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    sget-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/translate/utils/f1$a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    const-string v0, "switch"

    invoke-direct {p0, p1}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_simultaneous_translate_auto_play_btn"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_simultaneous_translate_enter_source"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final C()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_translate_history_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final D(Z)V
    .locals 1

    const-string v0, "switch"

    invoke-direct {p0, p1}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_simultaneous_translate_record_switch"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final E()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_translate_voice_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_text_translate_enter_source"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final G()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_text_translate_voice_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final H(I)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_dialog_translate_asr_error"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLanguage"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "targetLanguage"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_dialog_translate_asr_language"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final J(Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_dialog_translate_page_duration"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_enter_translate_app_home"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final M(I)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_face_to_face_asr_error"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLanguage"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "targetLanguage"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_face_to_face_asr_language"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final O(Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_face_to_face_page_duration"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final P(Ljava/lang/String;Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventTime"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-virtual {p2}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "duration"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_function_use_time"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventPluginDownloadAbort: pluginName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataTrackReporterOS15"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "errorMsg"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    invoke-static {v1, p3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_plugin_download_abort"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorMsg"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventPluginDownloadFail: pluginName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", errorMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DataTrackReporterOS15"

    invoke-virtual {v3, v5, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-static {v1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    invoke-static {v2, p3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, -0x1

    if-eq p4, p2, :cond_0

    const-string p2, "errorCode"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "event_plugin_download_fail"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventPluginDownloadStart: pluginName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataTrackReporterOS15"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-static {v1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_plugin_download_start"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventPluginDownloadSuccess: pluginName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataTrackReporterOS15"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-static {v1, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_plugin_download_success"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final V(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "reqId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "reqid"

    invoke-static {v1, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    const-string v0, "is_sensitive_Interception"

    invoke-direct {p0, p3}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "request_translate"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_simultaneous_history_details_share_btn"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_simultaneous_history_enter_edit_mode"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a0(I)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_simultaneous_translate_asr_error"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLanguage"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "targetLanguage"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_simultaneous_translate_asr_language"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c0(II)V
    .locals 1

    const-string v0, "duration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    const-string v0, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p2, p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_simultaneous_translate_once_data_time"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    const-string v0, "switch"

    invoke-direct {p0, p1}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_dialog_translate_auto_play_btn"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final d0(Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_simultaneous_translate_page_duration"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_dialog_translate_enter_source"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final e0(ILjava/lang/String;)V
    .locals 4

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventTextTranslateAsrError: errorStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataTrackReporterOS15"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "event_text_translate_asr_error"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_dialog_translate_voice_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLanguage"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "targetLanguage"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    filled-new-array {p1, p2}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_text_translate_asr_language"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final g(ZLcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "switch"

    invoke-direct {p0, p1}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v0

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide p1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-static {p2, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {v0, p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_click_double_screen_btn"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const-string v0, "reqId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorMsg"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventTextTranslateError: errorStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", module="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isSensitive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", errorMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataTrackReporterOS15"

    invoke-virtual {v2, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v2, "reqid"

    invoke-static {v2, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    invoke-static {v0, p3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p3

    const-string v0, "is_sensitive_Interception"

    invoke-direct {p0, p4}, Lcom/coloros/translate/utils/n;->a(Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p1, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p2, "event_text_translate_error"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_face_to_face_enter_source"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final h0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLanguage"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    const-string v0, "targetLanguage"

    invoke-static {v0, p2}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p2

    const-string v0, "count"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p3

    const-string v0, "algorithm_type"

    invoke-static {v0, p4}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "event_text_translate_language"

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_face_to_face_voice_me_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final i0(Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_text_translate_page_duration"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_face_to_face_voice_other_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final j0(Lcom/coloros/translate/utils/n$a;)V
    .locals 2

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/utils/n$a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_translate_app_home_page_duration"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_caption_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final k0(I)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_tts_error"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_dialog_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_document_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_real_subtitle_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final o()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_screen_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_simultaneous_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_home_text_translate_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_jump_offline_download"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final s(I)V
    .locals 1

    const-string v0, "speed"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p1

    filled-new-array {p1}, [Ln8/q;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->j([Ln8/q;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "event_click_select_voice_speed_item"

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/utils/n;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_setting_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_history_delete_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_history_details_delete_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final w()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_history_details_play_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final x()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_history_details_rename_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_history_rename_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final z()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "event_click_simultaneous_save_dialog_save_btn"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/coloros/translate/utils/n;->c(Lcom/coloros/translate/utils/n;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

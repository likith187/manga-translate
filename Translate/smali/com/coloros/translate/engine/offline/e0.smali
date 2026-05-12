.class public final Lcom/coloros/translate/engine/offline/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/offline/e0;

.field private static final a:Landroid/util/ArrayMap;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static final d:Ln8/j;

.field private static volatile e:Lcom/coloros/translate/engine/offline/i0;

.field private static f:Landroid/content/Context;

.field private static g:La2/b;

.field private static h:J

.field private static final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/offline/e0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/e0;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/e0;->a:Landroid/util/ArrayMap;

    sget-object v0, Lcom/coloros/translate/engine/offline/e0$b;->INSTANCE:Lcom/coloros/translate/engine/offline/e0$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/e0;->d:Ln8/j;

    sget-object v0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/e0;->f:Landroid/content/Context;

    new-instance v0, Lcom/coloros/translate/engine/offline/c0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/c0;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/e0;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/offline/e0;->m()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/e0;->i(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V

    return-void
.end method

.method public static final synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic d()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic e(Lcom/coloros/translate/engine/offline/e0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/e0;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    return-void
.end method

.method private final g()V
    .locals 1

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->e:Lcom/coloros/translate/engine/offline/i0;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->e:Lcom/coloros/translate/engine/offline/i0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/engine/offline/i0;->j()V

    :cond_0
    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->g:La2/b;

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->a:Landroid/util/ArrayMap;

    invoke-interface {p0, v0}, La2/b;->b(Ljava/util/Map;)V

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lcom/coloros/translate/engine/offline/e0;->g:La2/b;

    :cond_2
    return-void
.end method

.method private final h()V
    .locals 5

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-boolean v0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRequestOfflinePackageInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflinePackageConfigClient"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    new-instance v0, Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOfflinePackageInfo start: requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    const-string v3, "request_download_offline_info"

    invoke-static {v3, p0, v1, v2}, Lcom/coloros/translate/utils/u0;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    new-instance p0, Lcom/coloros/translate/engine/offline/d0;

    invoke-direct {p0, v0}, Lcom/coloros/translate/engine/offline/d0;-><init>(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V

    invoke-static {v3, p0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final i(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V
    .locals 3

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/engine/offline/e0$a;

    invoke-direct {v2}, Lcom/coloros/translate/engine/offline/e0$a;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getOfflinePackageInfo(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;Lcom/oplus/aiunit/translation/callback/OfflinePackageCallback;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextRecognizeHelper getOfflinePackageInfo: errorMsg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OfflinePackageConfigClient"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final j()Lcom/coloros/translate/engine/offline/d;
    .locals 1

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coloros/translate/engine/offline/d;

    return-object p0
.end method

.method private final l()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/coloros/translate/engine/offline/e0;->h:J

    sub-long/2addr v0, v2

    const-wide v2, 0x134fd9000L

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final m()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "OfflinePackageConfigClient"

    const-string v2, "offline callback timeout "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coloros/translate/engine/offline/e0;->b:Z

    :cond_0
    return-void
.end method

.method private final n(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseOfflineLanguageMap list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflinePackageConfigClient"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "parseOfflineLanguageMap list is empty!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "substring(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Ln8/q;

    invoke-direct {v5, v4, v3}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln8/q;

    invoke-virtual {v5}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseOfflineLanguageMap:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final o(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/e0;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->j()Lcom/coloros/translate/engine/offline/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/translate/engine/offline/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lcom/coloros/translate/engine/offline/e0;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/coloros/translate/engine/offline/e0;->h:J

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->j()Lcom/coloros/translate/engine/offline/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/offline/d;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "getLanguagePairList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/e0;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->g()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "OfflinePackageConfigClient"

    const-string v0, "innerQueryDownload finish!"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final r(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "OfflinePackageConfigClient"

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "setServerNewVersion json is null"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServerNewVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServerNewVersion fail, json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catch_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServerNewVersion parseObject fail, json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final k(La2/b;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-object v1, Lcom/coloros/translate/engine/offline/e0;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOfflineLanguageMapFromServer:mOfflineCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflinePackageConfigClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->a:Landroid/util/ArrayMap;

    invoke-interface {p1, p0}, La2/b;->b(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    sput-object p1, Lcom/coloros/translate/engine/offline/e0;->g:La2/b;

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->h()V

    :goto_1
    return-void
.end method

.method public final p()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-object v1, Lcom/coloros/translate/engine/offline/e0;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestOfflineLanguageAndPackageInfo:mOfflineCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflinePackageConfigClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/e0;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->g()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e0;->h()V

    :goto_1
    return-void
.end method

.method public final q(Lcom/coloros/translate/engine/offline/i0;)V
    .locals 0

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/coloros/translate/engine/offline/e0;->e:Lcom/coloros/translate/engine/offline/i0;

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->e:Lcom/coloros/translate/engine/offline/i0;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->e:Lcom/coloros/translate/engine/offline/i0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/engine/offline/i0;->a()V

    :cond_0
    return-void
.end method

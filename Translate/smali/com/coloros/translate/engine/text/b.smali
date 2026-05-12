.class public final Lcom/coloros/translate/engine/text/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/text/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/text/b;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/b;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/text/b;->INSTANCE:Lcom/coloros/translate/engine/text/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/text/b;->e(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/engine/text/b;Lkotlinx/coroutines/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/text/b;->c(Lkotlinx/coroutines/c0;)V

    return-void
.end method

.method private final c(Lkotlinx/coroutines/c0;)V
    .locals 1

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlinx/coroutines/d0;->e(Lkotlinx/coroutines/c0;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0}, Lkotlinx/coroutines/d0;->c(Lkotlinx/coroutines/c0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "SupportLanguageClient"

    const-string v0, "cancelTimeoutCoroutineSafely onFailure"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final e(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V
    .locals 3

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/engine/text/b$a;

    invoke-direct {v2, p1, p2}, Lcom/coloros/translate/engine/text/b$a;-><init>(Lkotlinx/coroutines/c0;La2/b;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getTranslationConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/TranslateConfigCallback;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTranslationConfig onError:code"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SupportLanguageClient"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final f()Lkotlinx/coroutines/c0;
    .locals 8

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/j1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object p0

    new-instance v5, Lcom/coloros/translate/engine/text/b$b;

    invoke-direct {v5, v1}, Lcom/coloros/translate/engine/text/b$b;-><init>(Lkotlin/coroutines/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-object p0
.end method


# virtual methods
.method public final d(La2/b;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;->setRequestId(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportOnlineLanguage start requestId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SupportLanguageClient"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/b;->f()Lkotlinx/coroutines/c0;

    move-result-object p0

    new-instance v1, Lcom/coloros/translate/engine/text/a;

    invoke-direct {v1, v0, p0, p1}, Lcom/coloros/translate/engine/text/a;-><init>(Lcom/oplus/aiunit/translation/request/TranslateConfigRequest;Lkotlinx/coroutines/c0;La2/b;)V

    const-string p0, "request_download_offline_info"

    invoke-static {p0, v1}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

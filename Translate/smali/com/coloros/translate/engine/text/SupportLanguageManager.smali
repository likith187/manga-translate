.class public final Lcom/coloros/translate/engine/text/SupportLanguageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    const-string v0, ""

    sput-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/coloros/translate/engine/text/c;

    invoke-direct {v0}, Lcom/coloros/translate/engine/text/c;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->h()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->j()V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/engine/text/SupportLanguageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->i()V

    return-void
.end method

.method public static final synthetic d()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    return-void
.end method

.method public static final synthetic f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->a:Ljava/lang/String;

    return-void
.end method

.method private static final h()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->INSTANCE:Lcom/coloros/translate/engine/text/SupportLanguageManager;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->m()V

    return-void
.end method

.method private final i()V
    .locals 6

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchCallbackResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportLanguageManager"

    invoke-virtual {p0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    sget-object v1, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/IRegisterListener;

    if-eqz v1, :cond_1

    sget-object v3, Lcom/coloros/translate/engine/text/SupportLanguageManager;->a:Ljava/lang/String;

    const/16 v4, 0x66

    invoke-interface {v1, v4, v3}, Lcom/coloros/translate/engine/IRegisterListener;->callback(ILjava/lang/String;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCallbackResult error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final j()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SupportLanguageManager"

    const-string v2, "offline callback timeout "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 5

    const-string v0, "register"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SupportLanguageManager"

    if-nez v1, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "addSupportLanguageRegister new"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v1, Lcom/coloros/translate/engine/text/SupportLanguageManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSupportLanguageRegister size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/engine/text/SupportLanguageManager;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager;->i()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/coloros/translate/engine/text/d;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/d;-><init>()V

    const-string p1, "request_download_offline_info"

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final k(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 5

    const-string p0, "register"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SupportLanguageManager"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSupportLanguageRegister containsKey, original size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "removeSupportLanguageRegister contains: false"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final l(Lcom/coloros/translate/engine/IRegisterListener;)V
    .locals 3

    const-string p0, "messenger"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/request/BaseRequest;->setRequestId(Ljava/lang/String;)V

    const-string v0, "zh"

    invoke-virtual {p0, v0}, Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;->setLanguage(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/engine/text/SupportLanguageManager$a;

    invoke-direct {v2, p1}, Lcom/coloros/translate/engine/text/SupportLanguageManager$a;-><init>(Lcom/coloros/translate/engine/IRegisterListener;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getToolboxTranslateConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/ToolboxTranslateConfigRequest;Lcom/oplus/aiunit/translation/callback/ToolboxTranslateConfigCallback;)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranslationConfig onError:code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SupportLanguageManager"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 6

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-boolean v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSupportLanguage isRequesting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportLanguageManager"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "requestSupportLanguage doing"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/coloros/translate/engine/text/SupportLanguageManager;->b:Z

    new-instance p0, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;

    invoke-direct {p0}, Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;-><init>()V

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/z;

    invoke-direct {v1}, Lkotlin/jvm/internal/z;-><init>()V

    sget-object v2, Lcom/coloros/translate/engine/text/SupportLanguageManager;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    const-string v5, "request_download_offline_info"

    invoke-static {v5, v2, v3, v4}, Lcom/coloros/translate/utils/u0;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    new-instance v2, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/coloros/translate/engine/text/SupportLanguageManager$requestSupportLanguage$resultCallback$1;-><init>(Lkotlin/jvm/internal/z;Lcom/coloros/translate/engine/text/SupportLanguageManager$SupportLanguageConfig;Lkotlin/jvm/internal/z;)V

    sget-object p0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-virtual {p0, v2}, Lcom/coloros/translate/engine/offline/a0;->e(La2/b;)V

    sget-object p0, Lcom/coloros/translate/engine/text/b;->INSTANCE:Lcom/coloros/translate/engine/text/b;

    invoke-virtual {p0, v2}, Lcom/coloros/translate/engine/text/b;->d(La2/b;)V

    return-void
.end method

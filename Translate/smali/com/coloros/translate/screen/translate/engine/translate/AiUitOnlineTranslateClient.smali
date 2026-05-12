.class public final Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$Companion;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:I

.field private g:Lcom/oplus/aiunit/translation/model/YoudaoInfo;

.field private h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

.field private i:Lcom/coloros/translate/screen/translate/engine/language/f;

.field private final j:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->a:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->e:Ljava/lang/Object;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$a;-><init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->j:Ln8/j;

    sget-object p1, Lcom/coloros/translate/screen/aiunit/c;->o:Lcom/coloros/translate/screen/aiunit/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f()Landroidx/lifecycle/b0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/aiunit/c$a;->c(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->e(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$convertToSingleTranslateResult(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMImageTranslateListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    return-object p0
.end method

.method public static final synthetic access$getMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Lcom/coloros/translate/screen/translate/engine/language/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->i:Lcom/coloros/translate/screen/translate/engine/language/f;

    return-object p0
.end method

.method public static final synthetic access$getMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$parseAuthCfg(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMHasInit$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->d:Z

    return-void
.end method

.method public static final synthetic access$setMImageRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMLanguageLoadListener$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Lcom/coloros/translate/screen/translate/engine/language/f;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->i:Lcom/coloros/translate/screen/translate/engine/language/f;

    return-void
.end method

.method public static final synthetic access$setMTextRequestId$p(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    return-void
.end method

.method private final b()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelImageTranslate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUitOnlineTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->cancelImageTranslate(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTextTranslate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUitOnlineTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->cancelTextTranslate(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 6

    :try_start_0
    invoke-static {p2}, Lcom/coloros/translate/screen/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/translate/a;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/screen/translate/engine/translate/a;-><init>(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "convertToSingleTranslateResult error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AiUitOnlineTranslateClient"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static final e(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/model/TextTranslateData;->getIfSafe()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateImageTranslate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUitOnlineTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    if-eqz p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3, p4, p0}, Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;->onTextResult(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method private final f()Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final g()V
    .locals 6

    iget-boolean v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "AiUitOnlineTranslateClient"

    iget-boolean v3, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTranslate if necessary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v3, "AiUitOnlineTranslateClient"

    const-string v4, "initTranslate"

    invoke-virtual {v1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->a:Landroid/content/Context;

    new-instance v4, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1;

    invoke-direct {v4, p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1;-><init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V

    new-instance v5, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2;

    invoke-direct {v5, v2, p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->initTranslate(Landroid/content/Context;Lcom/oplus/aiunit/translation/callback/ITranslateConfig;Lcom/oplus/aiunit/translation/callback/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "AiUitOnlineTranslateClient"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTranslate e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final h(Ljava/lang/String;)V
    .locals 6

    const-string v0, "authCfg"

    const-string v1, "picture_translate_model"

    const-string v2, "AiUitOnlineTranslateClient"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f:I

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAuthCfg: picture_translate_model:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "parseAuthCfg: picture_translate_model is empty authCfg"

    invoke-virtual {p1, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "appKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appSecret"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "private"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v4, v0, v1, v3, p1}, Lcom/oplus/aiunit/translation/model/YoudaoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g:Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "parseAuthCfg:empty authCfg"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseAuthCfg onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_4
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "parseAuthCfg:empty data"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cancelTranslate()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b()V

    return-void
.end method

.method public final destroy()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUitOnlineTranslateClient"

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/aiunit/c;->o:Lcom/coloros/translate/screen/aiunit/c$a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/aiunit/c$a;->e(Landroidx/lifecycle/b0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->i:Lcom/coloros/translate/screen/translate/engine/language/f;

    return-void
.end method

.method public final getImgTransConfig(Lcom/coloros/translate/screen/translate/engine/language/f;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUitOnlineTranslateClient"

    const-string v2, "getImgTransConfig"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->i:Lcom/coloros/translate/screen/translate/engine/language/f;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g()V

    new-instance p1, Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;

    invoke-direct {p1}, Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lz8/c;->Default:Lz8/c$a;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lz8/c$a;->nextInt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;->setRequestId(Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$getImgTransConfig$callback$1;-><init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;)V

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->getImgTransConfig(Landroid/content/Context;Lcom/oplus/aiunit/translation/request/ImgTransConfigRequest;Lcom/oplus/aiunit/translation/callback/ImgTransConfigCallback;)V

    return-void
.end method

.method public final translateImage(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b()V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g()V

    new-instance p2, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;

    invoke-direct {p2}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setSourceLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setTargetLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getImageBytes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setImageBytes(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f:I

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setPictureTransModel(I)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getImageModel()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setImageModel(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setImageModel(I)V

    :goto_0
    iget p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g:Lcom/oplus/aiunit/translation/model/YoudaoInfo;

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;->setYoudaoInfo(Lcom/oplus/aiunit/translation/model/YoudaoInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c:Ljava/lang/String;

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->f:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateImageTranslate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUitOnlineTranslateClient"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateImage$2;-><init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->generateImageTranslate(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    return-void
.end method

.method public final translateText(Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V
    .locals 6

    const-string v0, "translateParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->h:Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p2, Lz8/c;->Default:Lz8/c$a;

    const/16 v2, 0x64

    invoke-virtual {p2, v2}, Lz8/c$a;->nextInt(I)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-sensitive"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;

    invoke-direct {v0}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;-><init>()V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getSourceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getTargetLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translateText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AiUitOnlineTranslateClient"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getSourceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setSource(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getTargetLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getText()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setText(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/aiunit/translation/request/TextTranslateRequest;->setRegion(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTranslate, requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->b:Ljava/lang/String;

    sget-object v1, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->INSTANCE:Lcom/oplus/aiunit/translation/TextRecognizeHelper;

    new-instance v2, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient$translateText$2;-><init>(Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Lcom/coloros/translate/screen/translate/engine/translate/TextTranslateParams;)V

    invoke-virtual {v1, v0, v2}, Lcom/oplus/aiunit/translation/TextRecognizeHelper;->generateTextTranslate(Lcom/oplus/aiunit/translation/request/TextTranslateRequest;Lcom/oplus/aiunit/translation/callback/TextTranslateCallback;)V

    return-void
.end method

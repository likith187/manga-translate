.class public abstract Lcom/coloros/translate/engine/asr/voicetranslate/g;
.super Lx1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/asr/voicetranslate/g$a;,
        Lcom/coloros/translate/engine/asr/voicetranslate/g$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/engine/asr/voicetranslate/g$a;


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;

.field private f:Lx1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/asr/voicetranslate/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->g:Lcom/coloros/translate/engine/asr/voicetranslate/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lx1/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/engine/asr/voicetranslate/g$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g$c;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/g;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->d:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Lx1/n;

    invoke-direct {p1}, Lx1/n;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->f:Lx1/n;

    return-void
.end method

.method public static final synthetic i(Lcom/coloros/translate/engine/asr/voicetranslate/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->l()V

    return-void
.end method

.method public static final synthetic j(Lcom/coloros/translate/engine/asr/voicetranslate/g;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final l()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseTranslateRtAsrWrapper"

    const-string v2, "doBinderDied"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->o()V

    :cond_0
    return-void
.end method


# virtual methods
.method public h()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->d:Landroid/os/Handler;

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseTranslateRtAsrWrapper"

    const-string v1, "clearScienceMsg"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lx1/n;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->f:Lx1/n;

    return-object p0
.end method

.method public n()V
    .locals 4

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->d:Landroid/os/Handler;

    iget-object v1, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x1000

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lx1/a;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result p0

    int-to-long v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResetScienceMsg "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseTranslateRtAsrWrapper"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BaseTranslateRtAsrWrapper"

    const-string v1, "realDoBinderDied"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 4

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;

    invoke-virtual {v1}, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllBinderCallBack error 2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseTranslateRtAsrWrapper"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public pauseRecord()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    return-void
.end method

.method public registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->f:Lx1/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lx1/n;->registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    :cond_1
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    new-instance v0, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;-><init>(Lcom/coloros/translate/engine/asr/voicetranslate/g;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x0

    invoke-interface {p2, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

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

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerRtasrListener error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BaseTranslateRtAsrWrapper"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public resumeRecord()V
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->n()V

    return-void
.end method

.method public sendAudioBytes([B)V
    .locals 0

    return-void
.end method

.method public unRegisterRtasrListener(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->f:Lx1/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lx1/n;->unRegisterRtasrListener(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g;->k()V

    iget-object p0, p0, Lcom/coloros/translate/engine/asr/voicetranslate/g;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/engine/asr/voicetranslate/g$b;->a()V

    :cond_1
    return-void
.end method

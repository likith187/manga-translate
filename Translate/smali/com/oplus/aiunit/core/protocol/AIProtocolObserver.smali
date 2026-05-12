.class public final Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

.field private static final SETTINGS_PROTOCOL_KEY:Ljava/lang/String; = "ai::settings::global::protocol::"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final detectName:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final observer:Lcom/oplus/aiunit/core/protocol/AIObserver;

.field private final observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/aiunit/core/protocol/AIObserver;",
            ">;"
        }
    .end annotation
.end field

.field private subscribed:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/core/protocol/AIObserver;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observer:Lcom/oplus/aiunit/core/protocol/AIObserver;

    iput-object p4, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "AIContentObserver("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->unregister$lambda$1(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V

    return-void
.end method

.method public static final decode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final encode(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getProtocolSettingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->access$getProtocolSettingsKey(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final unregister$lambda$1(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/protocol/AIObserver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onSubscribeResult(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final update$aiunit_sdk_toolkits_release(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/data/AIConfig;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->update$aiunit_sdk_toolkits_release(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/oplus/aiunit/core/protocol/AIObserver;)V
    .locals 1

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getObserver()Lcom/oplus/aiunit/core/protocol/AIObserver;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observer:Lcom/oplus/aiunit/core/protocol/AIObserver;

    return-object p0
.end method

.method public final newSubscribe(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->subscribed:Landroid/os/Bundle;

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 2
    iget-object p2, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    iget-object v1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->access$getProtocolSettingsKey(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oplus/providers/AppSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onChange "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->access$removeShell(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observer:Lcom/oplus/aiunit/core/protocol/AIObserver;

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/oplus/aiunit/core/protocol/AIObserver;->onProtocolChange(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final register(Lcom/oplus/aiunit/core/protocol/AIObserver;)Z
    .locals 3

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->Companion:Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->detectName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;->access$getProtocolSettingsKey(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver$Companion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/providers/AppSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->add(Lcom/oplus/aiunit/core/protocol/AIObserver;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register observe err. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final subscribeEquals(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->subscribed:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final unregister()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/aiunit/core/protocol/e;

    invoke-direct {v1, p0}, Lcom/oplus/aiunit/core/protocol/e;-><init>(Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->subscribed:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/core/protocol/AIProtocolObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister err. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

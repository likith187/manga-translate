.class public final Lcom/coloros/translate/engine/text/engine/d;
.super Lcom/coloros/translate/engine/ITranslateEngine$Stub;
.source "SourceFile"

# interfaces
.implements La2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/text/engine/d$a;,
        Lcom/coloros/translate/engine/text/engine/d$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/coloros/translate/engine/text/engine/d$a;


# instance fields
.field private final a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

.field private final b:Lcom/coloros/translate/engine/text/engine/a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/text/engine/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/text/engine/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/text/engine/d;->d:Lcom/coloros/translate/engine/text/engine/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/engine/ITranslateEngine$Stub;-><init>()V

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    const-string v1, "stream_text_offline"

    invoke-virtual {v0, p1, v1}, Lcom/coloros/translate/engine/offline/a0;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    new-instance v0, Lcom/coloros/translate/engine/text/engine/a;

    invoke-direct {v0, p1}, Lcom/coloros/translate/engine/text/engine/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->b:Lcom/coloros/translate/engine/text/engine/a;

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic b(Lcom/coloros/translate/engine/text/engine/d;)Lcom/coloros/translate/engine/text/engine/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d;->b:Lcom/coloros/translate/engine/text/engine/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/engine/text/engine/d;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lz8/c;->Default:Lz8/c$a;

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lz8/c$a;->nextInt(I)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-sensitive"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "StreamTextTranslateEngine"

    const-string p2, "mOfflineTranslateEngine is null"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const/16 p0, 0x66

    invoke-interface {p5, p2, p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/coloros/translate/engine/text/engine/d$c;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/text/engine/d$c;-><init>(Ljava/lang/String;Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v7, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 6

    iget-object p4, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez p4, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "StreamTextTranslateEngine"

    const-string p2, "mOfflineTranslateEngine is null"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const/16 p0, 0x66

    invoke-interface {p5, p2, p0}, Lcom/coloros/translate/engine/IOfflineTranslateListener;->onOfflineError(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/coloros/translate/engine/text/engine/d$d;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/translate/engine/text/engine/d$d;-><init>(Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p4, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 8

    new-instance v7, Lcom/coloros/translate/engine/text/engine/d$e;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/text/engine/d$e;-><init>(Ljava/lang/String;Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v7, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 8

    new-instance v7, Lcom/coloros/translate/engine/text/engine/d$f;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coloros/translate/engine/text/engine/d$f;-><init>(Ljava/lang/String;Lcom/coloros/translate/engine/text/engine/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v7, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->destroy()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d;->b:Lcom/coloros/translate/engine/text/engine/a;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/text/engine/a;->d()V

    return-void
.end method

.method public existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d;->a:Lcom/coloros/translate/engine/IOfflineTranslateEngine;

    if-nez p0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "StreamTextTranslateEngine"

    const-string p2, "offline engine is not existed"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/engine/IOfflineTranslateEngine;->existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "cancelStreamTextTranslate"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "requestId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/d;->b:Lcom/coloros/translate/engine/text/engine/a;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/text/engine/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 8

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "StreamTextTranslateEngine"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/text/engine/d;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translate net is ok --> translateOnline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coloros/translate/engine/text/engine/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translate net is no --> offline only"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/coloros/translate/engine/text/engine/d$b;

    const/4 v0, 0x1

    invoke-direct {v7, v6, p4, v0}, Lcom/coloros/translate/engine/text/engine/d$b;-><init>(Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;Z)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/coloros/translate/engine/text/engine/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate some param is null, just return!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "translate from to or inputText is empty"

    const/16 p1, 0x66

    const-string p2, ""

    invoke-interface {p4, p2, p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 8

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTextList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "StreamTextTranslateEngine"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/engine/text/engine/d;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/translate/utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList net is ok --> translateOnline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coloros/translate/engine/text/engine/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "translateList net is no --> translateOffline"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/coloros/translate/engine/text/engine/d$b;

    const/4 v0, 0x0

    invoke-direct {v7, v6, p4, v0}, Lcom/coloros/translate/engine/text/engine/d$b;-><init>(Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;Z)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/coloros/translate/engine/text/engine/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translateList some param is null, just return!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "translateList from to or inputText is empty"

    const/16 p1, 0x66

    const-string p2, ""

    invoke-interface {p4, p2, p0, p1}, Lcom/coloros/translate/engine/ITranslateListener;->onError(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

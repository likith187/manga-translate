.class public final Lcom/coloros/translate/repository/remote/TranslationEngineHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/remote/TranslationEngineHandler$a;,
        Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
    }
.end annotation


# static fields
.field public static final c:Lcom/coloros/translate/repository/remote/TranslationEngineHandler$a;


# instance fields
.field private a:Lcom/coloros/translate/engine/ITranslateEngine;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->c:Lcom/coloros/translate/repository/remote/TranslationEngineHandler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "machine"

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/repository/remote/TranslationEngineHandler;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->a:Lcom/coloros/translate/engine/ITranslateEngine;

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/repository/remote/TranslationEngineHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelStreamTextTranslate requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationEngineHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->a:Lcom/coloros/translate/engine/ITranslateEngine;

    if-eqz p0, :cond_0

    const-string p1, "cancelStreamTextTranslate"

    invoke-interface {p0, p1, v0}, Lcom/coloros/translate/engine/ITranslateEngine;->invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    const-string p1, "cancelStreamTextTranslate error"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/coloros/translate/engine/ITranslateEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->a:Lcom/coloros/translate/engine/ITranslateEngine;

    const-string p1, "machine"

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public final e(Lcom/coloros/translate/engine/ITranslateEngine;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->a:Lcom/coloros/translate/engine/ITranslateEngine;

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V
    .locals 9

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "translate textTranslateType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationEngineHandler"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/repository/remote/TranslationEngineHandler;Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

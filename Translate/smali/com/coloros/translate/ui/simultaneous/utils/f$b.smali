.class public final Lcom/coloros/translate/ui/simultaneous/utils/f$b;
.super Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/utils/f;->k(Lo2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/utils/f;

.field final synthetic b:Lo2/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/utils/f;Lo2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler$TranslateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string p2, "requesId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->c(Lcom/coloros/translate/ui/simultaneous/utils/f;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {p2}, Lo2/a;->d()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "TranslateQueueManager"

    if-eqz p1, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p3, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {p3}, Lo2/a;->d()J

    move-result-wide v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translate fail id:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lo2/a;->B(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->b(Lcom/coloros/translate/ui/simultaneous/utils/f;)Lw8/p;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-interface {p1, p3, v0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    :try_start_0
    sget-object p3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->c(Lcom/coloros/translate/ui/simultaneous/utils/f;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lo2/a;->d()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo2/a;

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

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate error remove fail"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate onError reject"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResult(Lcom/coloros/translate/engine/info/OnLineTranslateResult;)V
    .locals 14

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    invoke-static {v0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->c(Lcom/coloros/translate/ui/simultaneous/utils/f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TranslateQueueManager"

    if-eqz v0, :cond_3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {v2}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translate success id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/engine/info/OnLineTranslateResult;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p1

    goto :goto_2

    :cond_1
    :goto_1
    const-string p1, ""

    goto :goto_0

    :goto_2
    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "\\\\"

    const-string v4, "\\"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "\\n"

    const-string v10, "\n"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo2/a;->A(Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {v2, v3}, Lo2/a;->n(Z)V

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {v2, p1}, Lo2/a;->z(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-virtual {p1, v0}, Lo2/a;->B(Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->b(Lcom/coloros/translate/ui/simultaneous/utils/f;)Lw8/p;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    invoke-interface {p1, v0, v2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->a:Lcom/coloros/translate/ui/simultaneous/utils/f;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/utils/f$b;->b:Lo2/a;

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->c(Lcom/coloros/translate/ui/simultaneous/utils/f;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lo2/a;->d()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo2/a;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate error remove fail"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate onResult reject"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public onResultList(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onTranslateStart(Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateQueueManager"

    const-string v0, "translate onTranslateStart"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public abstract Lcom/coloros/translate/engine/offline/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "zh"

    sget-object v2, Lcom/ai/slp/library/mt/c;->CHINESE:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "en"

    sget-object v2, Lcom/ai/slp/library/mt/c;->ENGLISH:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "ja"

    sget-object v2, Lcom/ai/slp/library/mt/c;->JAPANESE:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "ko"

    sget-object v2, Lcom/ai/slp/library/mt/c;->KOREAN:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "it"

    sget-object v2, Lcom/ai/slp/library/mt/c;->ITALIAN:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "fr"

    sget-object v2, Lcom/ai/slp/library/mt/c;->FRENCH:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "de"

    sget-object v2, Lcom/ai/slp/library/mt/c;->GERMAN:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "es"

    sget-object v2, Lcom/ai/slp/library/mt/c;->SPANISH:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "vi"

    sget-object v2, Lcom/ai/slp/library/mt/c;->Vietnamese:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "th"

    sget-object v2, Lcom/ai/slp/library/mt/c;->THAILAND:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "id"

    sget-object v2, Lcom/ai/slp/library/mt/c;->INDONESIA:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    const-string v1, "hi"

    sget-object v2, Lcom/ai/slp/library/mt/c;->HINDI:Lcom/ai/slp/library/mt/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ai/slp/library/mt/c;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/h;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ai/slp/library/mt/c;

    return-object p0
.end method

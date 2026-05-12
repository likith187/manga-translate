.class public final Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->generatePhotoTranslate(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;->getImageBytes()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "from"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "to"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "render"

    invoke-virtual {p0, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, [Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->containsValue([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge containsValue([Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getEntries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge get(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->get(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge get(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getOrDefault(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getOrDefault(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge getOrDefault(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public bridge getSize()I
    .locals 0

    invoke-super {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->remove(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p2, [Ljava/lang/String;

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->remove(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge remove(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge remove(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->remove(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge remove(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getSize()I

    move-result p0

    return p0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient$generatePhotoTranslate$params$1;->getValues()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/oplus/aiunit/translation/model/TextTranslateDataDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/h;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/oplus/aiunit/translation/model/TextTranslateData;
    .locals 1

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeOfT"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/i;->e()Lcom/google/gson/l;

    move-result-object p0

    .line 3
    const-string p1, "sourceText"

    invoke-virtual {p0, p1}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string p3, ""

    if-nez p1, :cond_1

    move-object p1, p3

    .line 4
    :cond_1
    const-string v0, "translateText"

    invoke-virtual {p0, v0}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/i;->h()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, p2

    .line 5
    :goto_1
    const-string p2, "ifSafe"

    invoke-virtual {p0, p2}, Lcom/google/gson/l;->p(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/i;->a()Z

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    .line 6
    :goto_2
    new-instance p2, Lcom/oplus/aiunit/translation/model/TextTranslateData;

    invoke-direct {p2, p1, p3, p0}, Lcom/oplus/aiunit/translation/model/TextTranslateData;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aiunit/translation/model/TextTranslateDataDeserializer;->deserialize(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Lcom/oplus/aiunit/translation/model/TextTranslateData;

    move-result-object p0

    return-object p0
.end method

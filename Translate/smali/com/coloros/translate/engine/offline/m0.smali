.class public abstract Lcom/coloros/translate/engine/offline/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCELanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCJLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCKLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "2"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCFLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "3"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCSLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "4"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCVLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "5"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEHLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "6"

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCILanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "7"

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCGLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "8"

    goto :goto_0

    :cond_8
    const-string p0, ""

    :goto_0
    return-object p0
.end method

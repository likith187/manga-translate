.class public abstract Lcom/coloros/translate/engine/offline/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/h0;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/h0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/offline/g0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ziyan/model/common"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/h0;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/g0;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/h0;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ai/slp/library/mt/c;->CHINESE:Lcom/ai/slp/library/mt/c;

    sget-object v1, Lcom/ai/slp/library/mt/c;->ENGLISH:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v1}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCELanguageCode()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lcom/ai/slp/library/mt/c;->JAPANESE:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCJLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/ai/slp/library/mt/c;->KOREAN:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCKLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/ai/slp/library/mt/c;->ITALIAN:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCILanguageCode()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/ai/slp/library/mt/c;->FRENCH:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCFLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/ai/slp/library/mt/c;->GERMAN:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCGLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/ai/slp/library/mt/c;->SPANISH:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCSLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/ai/slp/library/mt/c;->Vietnamese:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v0, v3}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getCVLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/ai/slp/library/mt/c;->HINDI:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEHLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-static {p0, p1, v1, v3}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEVLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/ai/slp/library/mt/c;->THAILAND:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getETLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_a
    invoke-static {p0, p1, v1, v2}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getESLanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/ai/slp/library/mt/c;->INDONESIA:Lcom/ai/slp/library/mt/c;

    invoke-static {p0, p1, v1, v0}, Lcom/coloros/translate/engine/offline/h0;->g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getEILanguageCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_c
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/engine/offline/h0;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/y;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/translate/engine/offline/h0;->e:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/coloros/translate/engine/offline/h0;->e:Ljava/lang/String;

    return-object p0
.end method

.method private static e(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/h0;->c(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/coloros/translate/engine/offline/k0;->e()Lcom/coloros/translate/engine/offline/k0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/engine/offline/k0;->h(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static f(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/h0;->e(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;Lcom/ai/slp/library/mt/c;)Z
    .locals 0

    if-ne p0, p2, :cond_0

    if-eq p1, p3, :cond_1

    :cond_0
    if-ne p0, p3, :cond_2

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSON_ENCODE:Ljava/lang/String; = "json"

.field private static final TAG:Ljava/lang/String; = "BRPluginConfigParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Lcom/google/gson/i;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/i;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p0, Lcom/google/gson/l;

    invoke-virtual {p0}, Lcom/google/gson/l;->o()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/i;

    invoke-virtual {v1}, Lcom/google/gson/i;->i()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/google/gson/f;

    goto :goto_1

    :cond_0
    move-object v4, v2

    :goto_1
    invoke-virtual {v1}, Lcom/google/gson/i;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v1, Lcom/google/gson/o;

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/gson/f;->size()I

    move-result v6

    if-gtz v6, :cond_2

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Lcom/google/gson/f;->n(I)Lcom/google/gson/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/i;->l()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/google/gson/f;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    :goto_3
    if-ge v5, v1, :cond_4

    invoke-virtual {v4, v5}, Lcom/google/gson/f;->n(I)Lcom/google/gson/i;

    move-result-object v7

    check-cast v7, Lcom/google/gson/o;

    invoke-virtual {v7}, Lcom/google/gson/o;->q()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/google/gson/o;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v3, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/o;->n()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/google/gson/o;->a()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/google/gson/o;->p()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/google/gson/o;->m()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/google/gson/o;->q()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/google/gson/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to transform json to bundle "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BRPluginConfigParser"

    invoke-static {v3, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-object v0

    :cond_b
    return-object v2
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const-string v1, "="

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v1, ";"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/io/File;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 4

    .line 7
    invoke-static {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 8
    const-string v0, "encode"

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "version"

    invoke-static {p0, v1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v0, v1, p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "encode"

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "version"

    invoke-static {p0, v1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_0
    invoke-static {v0, v1, p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method protected static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginConfigParser"

    invoke-static {v0, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p1, "json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 15
    :try_start_0
    new-instance p0, Lcom/google/gson/n;

    invoke-direct {p0}, Lcom/google/gson/n;-><init>()V

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/gson/n;->a(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->fromJson(Lcom/google/gson/i;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_0

    .line 19
    new-instance p1, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    invoke-direct {p1, p0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object p1
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new FileInputStream failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BRPluginConfigParser"

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const-string v0, "close failed, "

    const-string v1, "BRPluginConfigParser"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_8

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_1
    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :goto_4
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readInputStream, e ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_3
    :goto_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_8
    if-eqz p0, :cond_4

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_3
    move-exception p0

    goto :goto_a

    :cond_4
    :goto_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    throw v2
.end method

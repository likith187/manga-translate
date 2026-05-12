.class public Lcom/oplus/backup/sdk/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 4
    :try_start_1
    new-array p1, p1, [B

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 6
    invoke-virtual {v2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    :goto_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_2
    return v0

    .line 12
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 15
    throw p1

    :cond_4
    :goto_5
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    .line 20
    :try_start_2
    new-array p1, p1, [B

    .line 21
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_0
    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_4

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-object v2, v1

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :catch_5
    :goto_2
    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    return v0

    .line 28
    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 31
    :cond_7
    throw p1
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move v2, v0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static deleteFileOrFolder(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    return v0

    :catch_0
    const-string p0, "FileUtils"

    const-string v1, "deleteFileOrFolder exception"

    invoke-static {p0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isEmptyFolder(Ljava/io/File;)Z
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->isEmptyFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file.renameTo false, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileUtils"

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public static nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    :goto_0
    move-object v0, v8

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v8

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object p1, v0

    :goto_1
    move-object v0, v1

    :goto_2
    move-object v1, p1

    goto :goto_4

    :catch_1
    move-exception v2

    move-object p1, p0

    move-object p0, v0

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_2

    :catch_3
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    move-object v8, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v0

    goto :goto_0

    :goto_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_4
    throw v2
.end method

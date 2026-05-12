.class public Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/b;


# static fields
.field private static c:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lh5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized c()V
    .locals 5

    const-class v0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "language_id_l2c_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lb5/a;

    const-string v3, "Couldn\'t load language identification library."

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v1}, Lb5/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;
.end method

.method private native nativeInitFromBuffer(Ljava/nio/MappedByteBuffer;J)J
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->j(Z)V

    invoke-static {}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->c()V

    const/16 v0, 0xd

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "tflite_langid.tflite.jpg"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v10

    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->nativeInitFromBuffer(Ljava/nio/MappedByteBuffer;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long p0, v5, v2

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_5
    new-instance p0, Lb5/a;

    const-string v2, "Couldn\'t load language identification model"

    invoke-direct {p0, v2, v0}, Lb5/a;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_4
    new-instance v1, Lb5/a;

    const-string v2, "Couldn\'t open language identification model file"

    invoke-direct {v1, v2, v0, p0}, Lb5/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;F)Ljava/util/List;
    .locals 4

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->j(Z)V

    iget-wide v2, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length p2, p0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    new-instance v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a()F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final release()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->nativeDestroy(J)V

    iput-wide v2, p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b:J

    return-void
.end method

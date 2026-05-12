.class public final Lcom/coloros/translate/engine/tts/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/tts/n$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/coloros/translate/engine/tts/n$a;

.field private static final e:Lcom/coloros/translate/engine/tts/n;


# instance fields
.field private a:Lcom/score/rahasak/utils/OpusDecoder;

.field private b:[S

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/engine/tts/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/engine/tts/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/engine/tts/n;->d:Lcom/coloros/translate/engine/tts/n$a;

    new-instance v0, Lcom/coloros/translate/engine/tts/n;

    invoke-direct {v0}, Lcom/coloros/translate/engine/tts/n;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/tts/n;->e:Lcom/coloros/translate/engine/tts/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x200000

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/n;->b:[S

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/n;->e()V

    return-void
.end method

.method public static final synthetic a()Lcom/coloros/translate/engine/tts/n;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/tts/n;->e:Lcom/coloros/translate/engine/tts/n;

    return-object v0
.end method

.method private final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "MediaCodecOpus"

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/n;->a:Lcom/score/rahasak/utils/OpusDecoder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initOpusDecoder\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/n;->a:Lcom/score/rahasak/utils/OpusDecoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/score/rahasak/utils/OpusDecoder;

    invoke-direct {v0}, Lcom/score/rahasak/utils/OpusDecoder;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/tts/n;->a:Lcom/score/rahasak/utils/OpusDecoder;

    const/16 v1, 0x3e80

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/score/rahasak/utils/OpusDecoder;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b(Ljava/nio/ShortBuffer;)[B
    .locals 2

    const-string p0, "buffer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    shl-int/lit8 v1, v0, 0x18

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p1, "toByteArray(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c([B)[S
    .locals 1

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    div-int/lit8 p0, p0, 0x2

    new-array p0, p0, [S

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method public final declared-synchronized d([B)[B
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/tts/n;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object v2, p0, Lcom/coloros/translate/engine/tts/n;->a:Lcom/score/rahasak/utils/OpusDecoder;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/engine/tts/n;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/coloros/translate/engine/tts/n;->a:Lcom/score/rahasak/utils/OpusDecoder;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/coloros/translate/engine/tts/n;->b:[S

    const/16 v4, 0x780

    invoke-virtual {v2, p1, v3, v4}, Lcom/score/rahasak/utils/OpusDecoder;->a([B[SI)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-gtz p1, :cond_2

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "MediaCodecOpus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode2Bytes error, sampleCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_2
    :try_start_3
    new-array v2, p1, [S

    iget-object v3, p0, Lcom/coloros/translate/engine/tts/n;->b:[S

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "MediaCodecOpus"

    const-string v4, "decode2Bytes"

    invoke-virtual {p1, v3, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object p1

    const-string v2, "wrap(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/tts/n;->b(Ljava/nio/ShortBuffer;)[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_5
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "MediaCodecOpus"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode2Bytes error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_7
    monitor-exit v0

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

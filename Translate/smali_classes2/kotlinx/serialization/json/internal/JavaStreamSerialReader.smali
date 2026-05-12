.class public final Lkotlinx/serialization/json/internal/JavaStreamSerialReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/internal/InternalJsonReader;


# instance fields
.field private final reader:Lkotlinx/serialization/json/internal/CharsetReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/json/internal/CharsetReader;

    sget-object v1, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/json/internal/CharsetReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->reader:Lkotlinx/serialization/json/internal/CharsetReader;

    return-void
.end method


# virtual methods
.method public read([CII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->reader:Lkotlinx/serialization/json/internal/CharsetReader;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/CharsetReader;->read([CII)I

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JavaStreamSerialReader;->reader:Lkotlinx/serialization/json/internal/CharsetReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/CharsetReader;->release()V

    return-void
.end method

.class public Lcom/score/rahasak/utils/OpusDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "senz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDecodeBytes([B[BI)I
.end method

.method private native nativeDecodeShorts([B[SI)I
.end method

.method private native nativeInitDecoder(II)I
.end method

.method private native nativeReleaseDecoder()Z
.end method


# virtual methods
.method public a([B[SI)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/score/rahasak/utils/OpusDecoder;->nativeDecodeShorts([B[SI)I

    move-result p0

    invoke-static {p0}, Lcom/score/rahasak/utils/a;->throwIfError(I)I

    move-result p0

    return p0
.end method

.method public b(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/score/rahasak/utils/OpusDecoder;->nativeInitDecoder(II)I

    move-result p0

    invoke-static {p0}, Lcom/score/rahasak/utils/a;->throwIfError(I)I

    return-void
.end method

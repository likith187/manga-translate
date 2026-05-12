.class public Lu2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lu2/f;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1, v2, v3}, Lu2/f;->b(DD)Lu2/f;

    move-result-object v0

    sput-object v0, Lu2/f;->c:Lu2/f;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu2/f;->b:D

    iput-wide p3, p0, Lu2/f;->a:D

    return-void
.end method

.method public static a(DD)Lu2/f;
    .locals 1

    new-instance v0, Lu2/c;

    invoke-direct {v0, p2, p3, p0, p1}, Lu2/c;-><init>(DD)V

    invoke-virtual {v0}, Lu2/c;->f()D

    move-result-wide p0

    invoke-virtual {v0}, Lu2/c;->e()D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lu2/f;->b(DD)Lu2/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(DD)Lu2/f;
    .locals 1

    new-instance v0, Lu2/f;

    invoke-static {p0, p1}, Lu2/d;->d(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Lu2/d;->a(D)D

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lu2/f;-><init>(DD)V

    return-object v0
.end method

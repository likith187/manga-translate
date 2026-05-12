.class public final Lokhttp3/internal/connection/g$b;
.super Ll9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/g;-><init>(Ll9/e;IJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/connection/g;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/g;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/connection/g$b;->e:Lokhttp3/internal/connection/g;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Ll9/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object p0, p0, Lokhttp3/internal/connection/g$b;->e:Lokhttp3/internal/connection/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/g;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

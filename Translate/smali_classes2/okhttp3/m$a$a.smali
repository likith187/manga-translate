.class final Lokhttp3/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/u;)Ljava/util/List;
    .locals 0

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Lokhttp3/u;Ljava/util/List;)V
    .locals 0

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cookies"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

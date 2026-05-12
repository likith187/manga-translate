.class final Lokhttp3/s$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/s;-><init>(Lokhttp3/e0;Lokhttp3/h;Ljava/util/List;Lw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $peerCertificatesFn:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/s$b;->$peerCertificatesFn:Lw8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/s$b;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p0, p0, Lokhttp3/s$b;->$peerCertificatesFn:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

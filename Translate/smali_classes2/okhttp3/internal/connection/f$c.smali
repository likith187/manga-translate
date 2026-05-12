.class final Lokhttp3/internal/connection/f$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/f;->i(Lokhttp3/internal/connection/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $address:Lokhttp3/a;

.field final synthetic $certificatePinner:Lokhttp3/f;

.field final synthetic $unverifiedHandshake:Lokhttp3/s;


# direct methods
.method constructor <init>(Lokhttp3/f;Lokhttp3/s;Lokhttp3/a;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/f$c;->$certificatePinner:Lokhttp3/f;

    iput-object p2, p0, Lokhttp3/internal/connection/f$c;->$unverifiedHandshake:Lokhttp3/s;

    iput-object p3, p0, Lokhttp3/internal/connection/f$c;->$address:Lokhttp3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/f$c;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/f$c;->$certificatePinner:Lokhttp3/f;

    invoke-virtual {v0}, Lokhttp3/f;->d()Ls9/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/f$c;->$unverifiedHandshake:Lokhttp3/s;

    invoke-virtual {v1}, Lokhttp3/s;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lokhttp3/internal/connection/f$c;->$address:Lokhttp3/a;

    invoke-virtual {p0}, Lokhttp3/a;->l()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u;->h()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1, p0}, Ls9/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

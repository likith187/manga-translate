.class public final Lokhttp3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/f$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/f;
    .locals 3

    new-instance v0, Lokhttp3/f;

    iget-object p0, p0, Lokhttp3/f$a;->a:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/o;->v0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lokhttp3/f;-><init>(Ljava/util/Set;Ls9/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.class public final Lokhttp3/internal/connection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# static fields
.field public static final INSTANCE:Lokhttp3/internal/connection/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/connection/a;

    invoke-direct {v0}, Lokhttp3/internal/connection/a;-><init>()V

    sput-object v0, Lokhttp3/internal/connection/a;->INSTANCE:Lokhttp3/internal/connection/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/b0;
    .locals 9

    const-string p0, "chain"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lm9/g;

    invoke-virtual {p1}, Lm9/g;->e()Lokhttp3/internal/connection/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/e;->o(Lm9/g;)Lokhttp3/internal/connection/c;

    move-result-object v2

    const/16 v7, 0x3d

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lm9/g;->d(Lm9/g;ILokhttp3/internal/connection/c;Lokhttp3/z;IIIILjava/lang/Object;)Lm9/g;

    move-result-object p0

    invoke-virtual {p1}, Lm9/g;->i()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm9/g;->b(Lokhttp3/z;)Lokhttp3/b0;

    move-result-object p0

    return-object p0
.end method

.class public final enum Lokhttp3/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/y$a;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/y;

.field public static final Companion:Lokhttp3/y$a;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

.field public static final enum HTTP_1_0:Lokhttp3/y;

.field public static final enum HTTP_1_1:Lokhttp3/y;

.field public static final enum HTTP_2:Lokhttp3/y;

.field public static final enum QUIC:Lokhttp3/y;

.field public static final enum SPDY_3:Lokhttp3/y;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lokhttp3/y;
    .locals 6

    sget-object v0, Lokhttp3/y;->HTTP_1_0:Lokhttp3/y;

    sget-object v1, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    sget-object v2, Lokhttp3/y;->SPDY_3:Lokhttp3/y;

    sget-object v3, Lokhttp3/y;->HTTP_2:Lokhttp3/y;

    sget-object v4, Lokhttp3/y;->H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

    sget-object v5, Lokhttp3/y;->QUIC:Lokhttp3/y;

    filled-new-array/range {v0 .. v5}, [Lokhttp3/y;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->HTTP_1_0:Lokhttp3/y;

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x1

    const-string v2, "http/1.1"

    const-string v3, "HTTP_1_1"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->HTTP_1_1:Lokhttp3/y;

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x2

    const-string v2, "spdy/3.1"

    const-string v3, "SPDY_3"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->SPDY_3:Lokhttp3/y;

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x3

    const-string v2, "h2"

    const-string v3, "HTTP_2"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->HTTP_2:Lokhttp3/y;

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x4

    const-string v2, "h2_prior_knowledge"

    const-string v3, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->H2_PRIOR_KNOWLEDGE:Lokhttp3/y;

    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x5

    const-string v2, "quic"

    const-string v3, "QUIC"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/y;->QUIC:Lokhttp3/y;

    invoke-static {}, Lokhttp3/y;->$values()[Lokhttp3/y;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->$VALUES:[Lokhttp3/y;

    new-instance v0, Lokhttp3/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/y;->Companion:Lokhttp3/y$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/y;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getProtocol$p(Lokhttp3/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/y;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static final get(Ljava/lang/String;)Lokhttp3/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/y;->Companion:Lokhttp3/y$a;

    invoke-virtual {v0, p0}, Lokhttp3/y$a;->a(Ljava/lang/String;)Lokhttp3/y;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/y;
    .locals 1

    const-class v0, Lokhttp3/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/y;

    return-object p0
.end method

.method public static values()[Lokhttp3/y;
    .locals 1

    sget-object v0, Lokhttp3/y;->$VALUES:[Lokhttp3/y;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/y;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/y;->protocol:Ljava/lang/String;

    return-object p0
.end method

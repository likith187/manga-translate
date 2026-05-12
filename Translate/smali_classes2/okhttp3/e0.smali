.class public final enum Lokhttp3/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/e0$a;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lokhttp3/e0;

.field public static final Companion:Lokhttp3/e0$a;

.field public static final enum SSL_3_0:Lokhttp3/e0;

.field public static final enum TLS_1_0:Lokhttp3/e0;

.field public static final enum TLS_1_1:Lokhttp3/e0;

.field public static final enum TLS_1_2:Lokhttp3/e0;

.field public static final enum TLS_1_3:Lokhttp3/e0;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lokhttp3/e0;
    .locals 5

    sget-object v0, Lokhttp3/e0;->TLS_1_3:Lokhttp3/e0;

    sget-object v1, Lokhttp3/e0;->TLS_1_2:Lokhttp3/e0;

    sget-object v2, Lokhttp3/e0;->TLS_1_1:Lokhttp3/e0;

    sget-object v3, Lokhttp3/e0;->TLS_1_0:Lokhttp3/e0;

    sget-object v4, Lokhttp3/e0;->SSL_3_0:Lokhttp3/e0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lokhttp3/e0;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/e0;

    const/4 v1, 0x0

    const-string v2, "TLSv1.3"

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/e0;->TLS_1_3:Lokhttp3/e0;

    new-instance v0, Lokhttp3/e0;

    const/4 v1, 0x1

    const-string v2, "TLSv1.2"

    const-string v3, "TLS_1_2"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/e0;->TLS_1_2:Lokhttp3/e0;

    new-instance v0, Lokhttp3/e0;

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    const-string v3, "TLS_1_1"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/e0;->TLS_1_1:Lokhttp3/e0;

    new-instance v0, Lokhttp3/e0;

    const/4 v1, 0x3

    const-string v2, "TLSv1"

    const-string v3, "TLS_1_0"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/e0;->TLS_1_0:Lokhttp3/e0;

    new-instance v0, Lokhttp3/e0;

    const/4 v1, 0x4

    const-string v2, "SSLv3"

    const-string v3, "SSL_3_0"

    invoke-direct {v0, v3, v1, v2}, Lokhttp3/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/e0;->SSL_3_0:Lokhttp3/e0;

    invoke-static {}, Lokhttp3/e0;->$values()[Lokhttp3/e0;

    move-result-object v0

    sput-object v0, Lokhttp3/e0;->$VALUES:[Lokhttp3/e0;

    new-instance v0, Lokhttp3/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/e0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/e0;->Companion:Lokhttp3/e0$a;

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

    iput-object p3, p0, Lokhttp3/e0;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static final forJavaName(Ljava/lang/String;)Lokhttp3/e0;
    .locals 1

    sget-object v0, Lokhttp3/e0;->Companion:Lokhttp3/e0$a;

    invoke-virtual {v0, p0}, Lokhttp3/e0$a;->a(Ljava/lang/String;)Lokhttp3/e0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/e0;
    .locals 1

    const-class v0, Lokhttp3/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/e0;

    return-object p0
.end method

.method public static values()[Lokhttp3/e0;
    .locals 1

    sget-object v0, Lokhttp3/e0;->$VALUES:[Lokhttp3/e0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/e0;

    return-object v0
.end method


# virtual methods
.method public final -deprecated_javaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/e0;->javaName:Ljava/lang/String;

    return-object p0
.end method

.method public final javaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/e0;->javaName:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lt2/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lt2/b$a;

.field public static final enum FOLD:Lt2/b$a;

.field public static final enum UNFOLD:Lt2/b$a;

.field public static final enum UNFOLDING:Lt2/b$a;

.field public static final enum UNKNOWN:Lt2/b$a;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lt2/b$a;

    const/4 v1, 0x0

    const-string v2, "fd"

    const-string v3, "FOLD"

    invoke-direct {v0, v3, v1, v2}, Lt2/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lt2/b$a;->FOLD:Lt2/b$a;

    new-instance v1, Lt2/b$a;

    const/4 v2, 0x1

    const-string v3, "fding"

    const-string v4, "UNFOLDING"

    invoke-direct {v1, v4, v2, v3}, Lt2/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lt2/b$a;->UNFOLDING:Lt2/b$a;

    new-instance v2, Lt2/b$a;

    const/4 v3, 0x2

    const-string v4, "ufd"

    const-string v5, "UNFOLD"

    invoke-direct {v2, v5, v3, v4}, Lt2/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lt2/b$a;->UNFOLD:Lt2/b$a;

    new-instance v3, Lt2/b$a;

    const/4 v4, 0x3

    const-string v5, "unknown"

    const-string v6, "UNKNOWN"

    invoke-direct {v3, v6, v4, v5}, Lt2/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lt2/b$a;->UNKNOWN:Lt2/b$a;

    filled-new-array {v0, v1, v2, v3}, [Lt2/b$a;

    move-result-object v0

    sput-object v0, Lt2/b$a;->$VALUES:[Lt2/b$a;

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

    iput-object p3, p0, Lt2/b$a;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt2/b$a;
    .locals 1

    const-class v0, Lt2/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt2/b$a;

    return-object p0
.end method

.method public static values()[Lt2/b$a;
    .locals 1

    sget-object v0, Lt2/b$a;->$VALUES:[Lt2/b$a;

    invoke-virtual {v0}, [Lt2/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt2/b$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt2/b$a;->mName:Ljava/lang/String;

    return-object p0
.end method

.class public final enum Lcom/oplus/aiunit/core/data/DownloadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/data/DownloadType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/core/data/DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/core/data/DownloadType;

.field public static final Companion:Lcom/oplus/aiunit/core/data/DownloadType$Companion;

.field public static final enum DOWNLOAD_LOST:Lcom/oplus/aiunit/core/data/DownloadType;

.field public static final enum DOWNLOAD_NEW:Lcom/oplus/aiunit/core/data/DownloadType;

.field public static final enum DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 3

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    sget-object v1, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_LOST:Lcom/oplus/aiunit/core/data/DownloadType;

    sget-object v2, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NEW:Lcom/oplus/aiunit/core/data/DownloadType;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/core/data/DownloadType;

    const-string v1, "DOWNLOAD_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/data/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NONE:Lcom/oplus/aiunit/core/data/DownloadType;

    new-instance v0, Lcom/oplus/aiunit/core/data/DownloadType;

    const-string v1, "DOWNLOAD_LOST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/data/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_LOST:Lcom/oplus/aiunit/core/data/DownloadType;

    new-instance v0, Lcom/oplus/aiunit/core/data/DownloadType;

    const-string v1, "DOWNLOAD_NEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/core/data/DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->DOWNLOAD_NEW:Lcom/oplus/aiunit/core/data/DownloadType;

    invoke-static {}, Lcom/oplus/aiunit/core/data/DownloadType;->$values()[Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->$VALUES:[Lcom/oplus/aiunit/core/data/DownloadType;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->$ENTRIES:Lr8/a;

    new-instance v0, Lcom/oplus/aiunit/core/data/DownloadType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/data/DownloadType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->Companion:Lcom/oplus/aiunit/core/data/DownloadType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final find(I)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->Companion:Lcom/oplus/aiunit/core/data/DownloadType$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/data/DownloadType$Companion;->find(I)Lcom/oplus/aiunit/core/data/DownloadType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/core/data/DownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/data/DownloadType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/core/data/DownloadType;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/data/DownloadType;->$VALUES:[Lcom/oplus/aiunit/core/data/DownloadType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/core/data/DownloadType;

    return-object v0
.end method

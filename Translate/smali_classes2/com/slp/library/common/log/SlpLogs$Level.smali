.class public final enum Lcom/slp/library/common/log/SlpLogs$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slp/library/common/log/SlpLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/slp/library/common/log/SlpLogs$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/slp/library/common/log/SlpLogs$Level;

.field public static final enum DEBUG:Lcom/slp/library/common/log/SlpLogs$Level;

.field public static final enum ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

.field public static final enum INFOS:Lcom/slp/library/common/log/SlpLogs$Level;

.field public static final enum ON:Lcom/slp/library/common/log/SlpLogs$Level;

.field public static final enum WARNS:Lcom/slp/library/common/log/SlpLogs$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/slp/library/common/log/SlpLogs$Level;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/slp/library/common/log/SlpLogs$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slp/library/common/log/SlpLogs$Level;->ON:Lcom/slp/library/common/log/SlpLogs$Level;

    new-instance v1, Lcom/slp/library/common/log/SlpLogs$Level;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/slp/library/common/log/SlpLogs$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/slp/library/common/log/SlpLogs$Level;->DEBUG:Lcom/slp/library/common/log/SlpLogs$Level;

    new-instance v2, Lcom/slp/library/common/log/SlpLogs$Level;

    const-string v3, "INFOS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/slp/library/common/log/SlpLogs$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/slp/library/common/log/SlpLogs$Level;->INFOS:Lcom/slp/library/common/log/SlpLogs$Level;

    new-instance v3, Lcom/slp/library/common/log/SlpLogs$Level;

    const-string v4, "WARNS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/slp/library/common/log/SlpLogs$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/slp/library/common/log/SlpLogs$Level;->WARNS:Lcom/slp/library/common/log/SlpLogs$Level;

    new-instance v4, Lcom/slp/library/common/log/SlpLogs$Level;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/slp/library/common/log/SlpLogs$Level;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/slp/library/common/log/SlpLogs$Level;->ERROR:Lcom/slp/library/common/log/SlpLogs$Level;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/slp/library/common/log/SlpLogs$Level;

    move-result-object v0

    sput-object v0, Lcom/slp/library/common/log/SlpLogs$Level;->$VALUES:[Lcom/slp/library/common/log/SlpLogs$Level;

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

.method public static valueOf(Ljava/lang/String;)Lcom/slp/library/common/log/SlpLogs$Level;
    .locals 1

    const-class v0, Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/slp/library/common/log/SlpLogs$Level;

    return-object p0
.end method

.method public static values()[Lcom/slp/library/common/log/SlpLogs$Level;
    .locals 1

    sget-object v0, Lcom/slp/library/common/log/SlpLogs$Level;->$VALUES:[Lcom/slp/library/common/log/SlpLogs$Level;

    invoke-virtual {v0}, [Lcom/slp/library/common/log/SlpLogs$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/slp/library/common/log/SlpLogs$Level;

    return-object v0
.end method

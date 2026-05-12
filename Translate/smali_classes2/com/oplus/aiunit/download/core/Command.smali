.class public final enum Lcom/oplus/aiunit/download/core/Command;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/download/core/Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/download/core/Command;

.field public static final enum CANCEL:Lcom/oplus/aiunit/download/core/Command;

.field public static final enum DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

.field public static final enum QUERY:Lcom/oplus/aiunit/download/core/Command;

.field public static final enum UPDATE:Lcom/oplus/aiunit/download/core/Command;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/aiunit/download/core/Command;
    .locals 4

    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    sget-object v1, Lcom/oplus/aiunit/download/core/Command;->UPDATE:Lcom/oplus/aiunit/download/core/Command;

    sget-object v2, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    sget-object v3, Lcom/oplus/aiunit/download/core/Command;->CANCEL:Lcom/oplus/aiunit/download/core/Command;

    filled-new-array {v0, v1, v2, v3}, [Lcom/oplus/aiunit/download/core/Command;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/download/core/Command;

    const-string v1, "DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/download/core/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    new-instance v0, Lcom/oplus/aiunit/download/core/Command;

    const-string v1, "UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/download/core/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->UPDATE:Lcom/oplus/aiunit/download/core/Command;

    new-instance v0, Lcom/oplus/aiunit/download/core/Command;

    const-string v1, "QUERY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/download/core/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    new-instance v0, Lcom/oplus/aiunit/download/core/Command;

    const-string v1, "CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/aiunit/download/core/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->CANCEL:Lcom/oplus/aiunit/download/core/Command;

    invoke-static {}, Lcom/oplus/aiunit/download/core/Command;->$values()[Lcom/oplus/aiunit/download/core/Command;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->$VALUES:[Lcom/oplus/aiunit/download/core/Command;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/download/core/Command;->$ENTRIES:Lr8/a;

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

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/download/core/Command;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/download/core/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/download/core/Command;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/download/core/Command;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->$VALUES:[Lcom/oplus/aiunit/download/core/Command;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/download/core/Command;

    return-object v0
.end method

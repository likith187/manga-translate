.class public final enum Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

.field public static final enum Deferred:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

.field public static final enum Immediate:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;
    .locals 2

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->Deferred:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->Immediate:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    filled-new-array {v0, v1}, [Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    const-string v1, "Deferred"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->Deferred:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    const-string v1, "Immediate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->Immediate:Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    invoke-static {}, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->$values()[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/naive/coe/api/ExecutionType;

    return-object v0
.end method

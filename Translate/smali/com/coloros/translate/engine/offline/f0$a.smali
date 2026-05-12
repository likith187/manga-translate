.class public final enum Lcom/coloros/translate/engine/offline/f0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum COMPRESSING:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

.field public static final enum PENDING:Lcom/coloros/translate/engine/offline/f0$a;


# direct methods
.method private static synthetic $values()[Lcom/coloros/translate/engine/offline/f0$a;
    .locals 8

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v1, Lcom/coloros/translate/engine/offline/f0$a;->PENDING:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v2, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v3, Lcom/coloros/translate/engine/offline/f0$a;->PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v4, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v5, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSING:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v6, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    sget-object v7, Lcom/coloros/translate/engine/offline/f0$a;->NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

    filled-new-array/range {v0 .. v7}, [Lcom/coloros/translate/engine/offline/f0$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "NOEXIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NOEXIST:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->PENDING:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADING:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "PAUSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->PAUSE:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "DOWNLOADFIALED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->DOWNLOADFIALED:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "COMPRESSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSING:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "COMPRESSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    new-instance v0, Lcom/coloros/translate/engine/offline/f0$a;

    const-string v1, "NEEDUPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/engine/offline/f0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->NEEDUPDATE:Lcom/coloros/translate/engine/offline/f0$a;

    invoke-static {}, Lcom/coloros/translate/engine/offline/f0$a;->$values()[Lcom/coloros/translate/engine/offline/f0$a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/f0$a;->$VALUES:[Lcom/coloros/translate/engine/offline/f0$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0$a;
    .locals 1

    const-class v0, Lcom/coloros/translate/engine/offline/f0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/offline/f0$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/engine/offline/f0$a;
    .locals 1

    sget-object v0, Lcom/coloros/translate/engine/offline/f0$a;->$VALUES:[Lcom/coloros/translate/engine/offline/f0$a;

    invoke-virtual {v0}, [Lcom/coloros/translate/engine/offline/f0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/engine/offline/f0$a;

    return-object v0
.end method

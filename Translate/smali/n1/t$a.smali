.class public final enum Ln1/t$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln1/t$a;

.field public static final enum INDIVIDUALLY:Ln1/t$a;

.field public static final enum SIMULTANEOUSLY:Ln1/t$a;


# direct methods
.method private static synthetic $values()[Ln1/t$a;
    .locals 2

    sget-object v0, Ln1/t$a;->SIMULTANEOUSLY:Ln1/t$a;

    sget-object v1, Ln1/t$a;->INDIVIDUALLY:Ln1/t$a;

    filled-new-array {v0, v1}, [Ln1/t$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln1/t$a;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/t$a;->SIMULTANEOUSLY:Ln1/t$a;

    new-instance v0, Ln1/t$a;

    const-string v1, "INDIVIDUALLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/t$a;->INDIVIDUALLY:Ln1/t$a;

    invoke-static {}, Ln1/t$a;->$values()[Ln1/t$a;

    move-result-object v0

    sput-object v0, Ln1/t$a;->$VALUES:[Ln1/t$a;

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

.method public static forId(I)Ln1/t$a;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Ln1/t$a;->INDIVIDUALLY:Ln1/t$a;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown trim path type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Ln1/t$a;->SIMULTANEOUSLY:Ln1/t$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln1/t$a;
    .locals 1

    const-class v0, Ln1/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/t$a;

    return-object p0
.end method

.method public static values()[Ln1/t$a;
    .locals 1

    sget-object v0, Ln1/t$a;->$VALUES:[Ln1/t$a;

    invoke-virtual {v0}, [Ln1/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/t$a;

    return-object v0
.end method

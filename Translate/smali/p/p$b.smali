.class final enum Lp/p$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lp/p$b;

.field public static final enum CENTER:Lp/p$b;

.field public static final enum END:Lp/p$b;

.field public static final enum NONE:Lp/p$b;

.field public static final enum START:Lp/p$b;


# direct methods
.method private static synthetic $values()[Lp/p$b;
    .locals 4

    sget-object v0, Lp/p$b;->NONE:Lp/p$b;

    sget-object v1, Lp/p$b;->START:Lp/p$b;

    sget-object v2, Lp/p$b;->END:Lp/p$b;

    sget-object v3, Lp/p$b;->CENTER:Lp/p$b;

    filled-new-array {v0, v1, v2, v3}, [Lp/p$b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp/p$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp/p$b;->NONE:Lp/p$b;

    new-instance v0, Lp/p$b;

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lp/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp/p$b;->START:Lp/p$b;

    new-instance v0, Lp/p$b;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lp/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp/p$b;->END:Lp/p$b;

    new-instance v0, Lp/p$b;

    const-string v1, "CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lp/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp/p$b;->CENTER:Lp/p$b;

    invoke-static {}, Lp/p$b;->$values()[Lp/p$b;

    move-result-object v0

    sput-object v0, Lp/p$b;->$VALUES:[Lp/p$b;

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

.method public static valueOf(Ljava/lang/String;)Lp/p$b;
    .locals 1

    const-class v0, Lp/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp/p$b;

    return-object p0
.end method

.method public static values()[Lp/p$b;
    .locals 1

    sget-object v0, Lp/p$b;->$VALUES:[Lp/p$b;

    invoke-virtual {v0}, [Lp/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/p$b;

    return-object v0
.end method

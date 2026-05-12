.class public final enum Lw2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lw2/d;

.field public static final enum DEFAULT:Lw2/d;

.field public static final enum HIGHEST:Lw2/d;

.field public static final enum VERY_LOW:Lw2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lw2/d;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/d;->DEFAULT:Lw2/d;

    new-instance v1, Lw2/d;

    const-string v2, "VERY_LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lw2/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw2/d;->VERY_LOW:Lw2/d;

    new-instance v2, Lw2/d;

    const-string v3, "HIGHEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lw2/d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw2/d;->HIGHEST:Lw2/d;

    filled-new-array {v0, v1, v2}, [Lw2/d;

    move-result-object v0

    sput-object v0, Lw2/d;->$VALUES:[Lw2/d;

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

.method public static valueOf(Ljava/lang/String;)Lw2/d;
    .locals 1

    const-class v0, Lw2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/d;

    return-object p0
.end method

.method public static values()[Lw2/d;
    .locals 1

    sget-object v0, Lw2/d;->$VALUES:[Lw2/d;

    invoke-virtual {v0}, [Lw2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/d;

    return-object v0
.end method

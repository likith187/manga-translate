.class public final enum Lv9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lv9/a;

.field public static final enum LENIENT:Lv9/a;

.field public static final enum STRICT:Lv9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv9/a;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv9/a;->STRICT:Lv9/a;

    new-instance v1, Lv9/a;

    const-string v2, "LENIENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lv9/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv9/a;->LENIENT:Lv9/a;

    filled-new-array {v0, v1}, [Lv9/a;

    move-result-object v0

    sput-object v0, Lv9/a;->$VALUES:[Lv9/a;

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

.method public static valueOf(Ljava/lang/String;)Lv9/a;
    .locals 1

    const-class v0, Lv9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv9/a;

    return-object p0
.end method

.method public static values()[Lv9/a;
    .locals 1

    sget-object v0, Lv9/a;->$VALUES:[Lv9/a;

    invoke-virtual {v0}, [Lv9/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv9/a;

    return-object v0
.end method

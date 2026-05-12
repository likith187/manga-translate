.class public final enum Lp6/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lp6/b$c;

.field public static final enum DYNAMIC_SIMSLOT_1:Lp6/b$c;

.field public static final enum DYNAMIC_SIMSLOT_2:Lp6/b$c;

.field public static final enum STATIC_COMPONENT:Lp6/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lp6/b$c;

    const-string v1, "STATIC_COMPONENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp6/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp6/b$c;->STATIC_COMPONENT:Lp6/b$c;

    new-instance v1, Lp6/b$c;

    const-string v2, "DYNAMIC_SIMSLOT_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lp6/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lp6/b$c;->DYNAMIC_SIMSLOT_1:Lp6/b$c;

    new-instance v2, Lp6/b$c;

    const-string v3, "DYNAMIC_SIMSLOT_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lp6/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lp6/b$c;->DYNAMIC_SIMSLOT_2:Lp6/b$c;

    filled-new-array {v0, v1, v2}, [Lp6/b$c;

    move-result-object v0

    sput-object v0, Lp6/b$c;->$VALUES:[Lp6/b$c;

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

.method public static valueOf(Ljava/lang/String;)Lp6/b$c;
    .locals 1

    const-class v0, Lp6/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp6/b$c;

    return-object p0
.end method

.method public static values()[Lp6/b$c;
    .locals 1

    sget-object v0, Lp6/b$c;->$VALUES:[Lp6/b$c;

    invoke-virtual {v0}, [Lp6/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp6/b$c;

    return-object v0
.end method

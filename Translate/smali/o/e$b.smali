.class public final enum Lo/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/e$b;

.field public static final enum FIXED:Lo/e$b;

.field public static final enum MATCH_CONSTRAINT:Lo/e$b;

.field public static final enum MATCH_PARENT:Lo/e$b;

.field public static final enum WRAP_CONTENT:Lo/e$b;


# direct methods
.method private static synthetic $values()[Lo/e$b;
    .locals 4

    sget-object v0, Lo/e$b;->FIXED:Lo/e$b;

    sget-object v1, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    sget-object v2, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    sget-object v3, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    filled-new-array {v0, v1, v2, v3}, [Lo/e$b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/e$b;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/e$b;->FIXED:Lo/e$b;

    new-instance v0, Lo/e$b;

    const-string v1, "WRAP_CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/e$b;->WRAP_CONTENT:Lo/e$b;

    new-instance v0, Lo/e$b;

    const-string v1, "MATCH_CONSTRAINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/e$b;->MATCH_CONSTRAINT:Lo/e$b;

    new-instance v0, Lo/e$b;

    const-string v1, "MATCH_PARENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/e$b;->MATCH_PARENT:Lo/e$b;

    invoke-static {}, Lo/e$b;->$values()[Lo/e$b;

    move-result-object v0

    sput-object v0, Lo/e$b;->$VALUES:[Lo/e$b;

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

.method public static valueOf(Ljava/lang/String;)Lo/e$b;
    .locals 1

    const-class v0, Lo/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/e$b;

    return-object p0
.end method

.method public static values()[Lo/e$b;
    .locals 1

    sget-object v0, Lo/e$b;->$VALUES:[Lo/e$b;

    invoke-virtual {v0}, [Lo/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/e$b;

    return-object v0
.end method

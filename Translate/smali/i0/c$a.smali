.class public final enum Li0/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li0/c$a;

.field public static final enum DETECT_FRAGMENT_REUSE:Li0/c$a;

.field public static final enum DETECT_FRAGMENT_TAG_USAGE:Li0/c$a;

.field public static final enum DETECT_RETAIN_INSTANCE_USAGE:Li0/c$a;

.field public static final enum DETECT_SET_USER_VISIBLE_HINT:Li0/c$a;

.field public static final enum DETECT_TARGET_FRAGMENT_USAGE:Li0/c$a;

.field public static final enum DETECT_WRONG_FRAGMENT_CONTAINER:Li0/c$a;

.field public static final enum PENALTY_DEATH:Li0/c$a;

.field public static final enum PENALTY_LOG:Li0/c$a;


# direct methods
.method private static final synthetic $values()[Li0/c$a;
    .locals 8

    sget-object v0, Li0/c$a;->PENALTY_LOG:Li0/c$a;

    sget-object v1, Li0/c$a;->PENALTY_DEATH:Li0/c$a;

    sget-object v2, Li0/c$a;->DETECT_FRAGMENT_REUSE:Li0/c$a;

    sget-object v3, Li0/c$a;->DETECT_FRAGMENT_TAG_USAGE:Li0/c$a;

    sget-object v4, Li0/c$a;->DETECT_RETAIN_INSTANCE_USAGE:Li0/c$a;

    sget-object v5, Li0/c$a;->DETECT_SET_USER_VISIBLE_HINT:Li0/c$a;

    sget-object v6, Li0/c$a;->DETECT_TARGET_FRAGMENT_USAGE:Li0/c$a;

    sget-object v7, Li0/c$a;->DETECT_WRONG_FRAGMENT_CONTAINER:Li0/c$a;

    filled-new-array/range {v0 .. v7}, [Li0/c$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li0/c$a;

    const-string v1, "PENALTY_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->PENALTY_LOG:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "PENALTY_DEATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->PENALTY_DEATH:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_FRAGMENT_REUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_FRAGMENT_REUSE:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_FRAGMENT_TAG_USAGE:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_RETAIN_INSTANCE_USAGE:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_SET_USER_VISIBLE_HINT:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_TARGET_FRAGMENT_USAGE:Li0/c$a;

    new-instance v0, Li0/c$a;

    const-string v1, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Li0/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li0/c$a;->DETECT_WRONG_FRAGMENT_CONTAINER:Li0/c$a;

    invoke-static {}, Li0/c$a;->$values()[Li0/c$a;

    move-result-object v0

    sput-object v0, Li0/c$a;->$VALUES:[Li0/c$a;

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

.method public static valueOf(Ljava/lang/String;)Li0/c$a;
    .locals 1

    const-class v0, Li0/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li0/c$a;

    return-object p0
.end method

.method public static values()[Li0/c$a;
    .locals 1

    sget-object v0, Li0/c$a;->$VALUES:[Li0/c$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li0/c$a;

    return-object v0
.end method

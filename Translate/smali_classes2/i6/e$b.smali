.class public final enum Li6/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li6/e$b;

.field public static final enum ADD:Li6/e$b;

.field public static final enum INVERT:Li6/e$b;

.field public static final enum LUMA:Li6/e$b;

.field public static final enum LUMA_INVERTED:Li6/e$b;

.field public static final enum NONE:Li6/e$b;

.field public static final enum UNKNOWN:Li6/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Li6/e$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li6/e$b;->NONE:Li6/e$b;

    new-instance v1, Li6/e$b;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li6/e$b;->ADD:Li6/e$b;

    new-instance v2, Li6/e$b;

    const-string v3, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li6/e$b;->INVERT:Li6/e$b;

    new-instance v3, Li6/e$b;

    const-string v4, "LUMA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li6/e$b;->LUMA:Li6/e$b;

    new-instance v4, Li6/e$b;

    const-string v5, "LUMA_INVERTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Li6/e$b;->LUMA_INVERTED:Li6/e$b;

    new-instance v5, Li6/e$b;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Li6/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li6/e$b;->UNKNOWN:Li6/e$b;

    filled-new-array/range {v0 .. v5}, [Li6/e$b;

    move-result-object v0

    sput-object v0, Li6/e$b;->$VALUES:[Li6/e$b;

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

.method public static valueOf(Ljava/lang/String;)Li6/e$b;
    .locals 1

    const-class v0, Li6/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li6/e$b;

    return-object p0
.end method

.method public static values()[Li6/e$b;
    .locals 1

    sget-object v0, Li6/e$b;->$VALUES:[Li6/e$b;

    invoke-virtual {v0}, [Li6/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li6/e$b;

    return-object v0
.end method

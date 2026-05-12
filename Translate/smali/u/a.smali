.class public final enum Lu/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lu/a;

.field public static final enum CLEAR:Lu/a;

.field public static final enum COLOR:Lu/a;

.field public static final enum COLOR_BURN:Lu/a;

.field public static final enum COLOR_DODGE:Lu/a;

.field public static final enum DARKEN:Lu/a;

.field public static final enum DIFFERENCE:Lu/a;

.field public static final enum DST:Lu/a;

.field public static final enum DST_ATOP:Lu/a;

.field public static final enum DST_IN:Lu/a;

.field public static final enum DST_OUT:Lu/a;

.field public static final enum DST_OVER:Lu/a;

.field public static final enum EXCLUSION:Lu/a;

.field public static final enum HARD_LIGHT:Lu/a;

.field public static final enum HUE:Lu/a;

.field public static final enum LIGHTEN:Lu/a;

.field public static final enum LUMINOSITY:Lu/a;

.field public static final enum MODULATE:Lu/a;

.field public static final enum MULTIPLY:Lu/a;

.field public static final enum OVERLAY:Lu/a;

.field public static final enum PLUS:Lu/a;

.field public static final enum SATURATION:Lu/a;

.field public static final enum SCREEN:Lu/a;

.field public static final enum SOFT_LIGHT:Lu/a;

.field public static final enum SRC:Lu/a;

.field public static final enum SRC_ATOP:Lu/a;

.field public static final enum SRC_IN:Lu/a;

.field public static final enum SRC_OUT:Lu/a;

.field public static final enum SRC_OVER:Lu/a;

.field public static final enum XOR:Lu/a;


# direct methods
.method private static synthetic $values()[Lu/a;
    .locals 29

    sget-object v0, Lu/a;->CLEAR:Lu/a;

    sget-object v1, Lu/a;->SRC:Lu/a;

    sget-object v2, Lu/a;->DST:Lu/a;

    sget-object v3, Lu/a;->SRC_OVER:Lu/a;

    sget-object v4, Lu/a;->DST_OVER:Lu/a;

    sget-object v5, Lu/a;->SRC_IN:Lu/a;

    sget-object v6, Lu/a;->DST_IN:Lu/a;

    sget-object v7, Lu/a;->SRC_OUT:Lu/a;

    sget-object v8, Lu/a;->DST_OUT:Lu/a;

    sget-object v9, Lu/a;->SRC_ATOP:Lu/a;

    sget-object v10, Lu/a;->DST_ATOP:Lu/a;

    sget-object v11, Lu/a;->XOR:Lu/a;

    sget-object v12, Lu/a;->PLUS:Lu/a;

    sget-object v13, Lu/a;->MODULATE:Lu/a;

    sget-object v14, Lu/a;->SCREEN:Lu/a;

    sget-object v15, Lu/a;->OVERLAY:Lu/a;

    sget-object v16, Lu/a;->DARKEN:Lu/a;

    sget-object v17, Lu/a;->LIGHTEN:Lu/a;

    sget-object v18, Lu/a;->COLOR_DODGE:Lu/a;

    sget-object v19, Lu/a;->COLOR_BURN:Lu/a;

    sget-object v20, Lu/a;->HARD_LIGHT:Lu/a;

    sget-object v21, Lu/a;->SOFT_LIGHT:Lu/a;

    sget-object v22, Lu/a;->DIFFERENCE:Lu/a;

    sget-object v23, Lu/a;->EXCLUSION:Lu/a;

    sget-object v24, Lu/a;->MULTIPLY:Lu/a;

    sget-object v25, Lu/a;->HUE:Lu/a;

    sget-object v26, Lu/a;->SATURATION:Lu/a;

    sget-object v27, Lu/a;->COLOR:Lu/a;

    sget-object v28, Lu/a;->LUMINOSITY:Lu/a;

    filled-new-array/range {v0 .. v28}, [Lu/a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu/a;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->CLEAR:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SRC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SRC:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DST:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SRC_OVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SRC_OVER:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DST_OVER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DST_OVER:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SRC_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SRC_IN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DST_IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DST_IN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SRC_OUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SRC_OUT:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DST_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DST_OUT:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SRC_ATOP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SRC_ATOP:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DST_ATOP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DST_ATOP:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "XOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->XOR:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "PLUS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->PLUS:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->MODULATE:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SCREEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SCREEN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "OVERLAY"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->OVERLAY:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DARKEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DARKEN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "LIGHTEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->LIGHTEN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "COLOR_DODGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->COLOR_DODGE:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "COLOR_BURN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->COLOR_BURN:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "HARD_LIGHT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->HARD_LIGHT:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SOFT_LIGHT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SOFT_LIGHT:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "DIFFERENCE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->DIFFERENCE:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "EXCLUSION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->EXCLUSION:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "MULTIPLY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->MULTIPLY:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "HUE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->HUE:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "SATURATION"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->SATURATION:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "COLOR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->COLOR:Lu/a;

    new-instance v0, Lu/a;

    const-string v1, "LUMINOSITY"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lu/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->LUMINOSITY:Lu/a;

    invoke-static {}, Lu/a;->$values()[Lu/a;

    move-result-object v0

    sput-object v0, Lu/a;->$VALUES:[Lu/a;

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

.method public static valueOf(Ljava/lang/String;)Lu/a;
    .locals 1

    const-class v0, Lu/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/a;

    return-object p0
.end method

.method public static values()[Lu/a;
    .locals 1

    sget-object v0, Lu/a;->$VALUES:[Lu/a;

    invoke-virtual {v0}, [Lu/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/a;

    return-object v0
.end method

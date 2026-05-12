.class public final enum Lcom/oplus/vfxsdk/common/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/common/u;

.field public static final enum Color:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Event:Lcom/oplus/vfxsdk/common/u;

.field public static final enum FBO:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Float:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Int:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Range:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Texture:Lcom/oplus/vfxsdk/common/u;

.field public static final enum UseFBO:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Vec2:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Vec3:Lcom/oplus/vfxsdk/common/u;

.field public static final enum Vec4:Lcom/oplus/vfxsdk/common/u;

.field public static final enum fv:Lcom/oplus/vfxsdk/common/u;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/vfxsdk/common/u;
    .locals 12

    sget-object v0, Lcom/oplus/vfxsdk/common/u;->Vec2:Lcom/oplus/vfxsdk/common/u;

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    sget-object v2, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    sget-object v3, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    sget-object v4, Lcom/oplus/vfxsdk/common/u;->Int:Lcom/oplus/vfxsdk/common/u;

    sget-object v5, Lcom/oplus/vfxsdk/common/u;->Range:Lcom/oplus/vfxsdk/common/u;

    sget-object v6, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    sget-object v7, Lcom/oplus/vfxsdk/common/u;->UseFBO:Lcom/oplus/vfxsdk/common/u;

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->FBO:Lcom/oplus/vfxsdk/common/u;

    sget-object v9, Lcom/oplus/vfxsdk/common/u;->Texture:Lcom/oplus/vfxsdk/common/u;

    sget-object v10, Lcom/oplus/vfxsdk/common/u;->fv:Lcom/oplus/vfxsdk/common/u;

    sget-object v11, Lcom/oplus/vfxsdk/common/u;->Event:Lcom/oplus/vfxsdk/common/u;

    filled-new-array/range {v0 .. v11}, [Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Vec2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Vec2:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Vec3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Vec4"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Color"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Int"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Int:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Range"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Range:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Float"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "UseFBO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->UseFBO:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "FBO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->FBO:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Texture"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Texture:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "fv"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->fv:Lcom/oplus/vfxsdk/common/u;

    new-instance v0, Lcom/oplus/vfxsdk/common/u;

    const-string v1, "Event"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->Event:Lcom/oplus/vfxsdk/common/u;

    invoke-static {}, Lcom/oplus/vfxsdk/common/u;->$values()[Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->$VALUES:[Lcom/oplus/vfxsdk/common/u;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/u;->$ENTRIES:Lr8/a;

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

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/vfxsdk/common/u;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/u;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/common/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/u;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/common/u;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/u;->$VALUES:[Lcom/oplus/vfxsdk/common/u;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/common/u;

    return-object v0
.end method

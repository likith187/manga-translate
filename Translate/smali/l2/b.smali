.class public final enum Ll2/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Ll2/b;

.field public static final enum PHOTO_TRANSLATE:Ll2/b;

.field public static final enum SCREEN_TRANSLATE:Ll2/b;


# direct methods
.method private static final synthetic $values()[Ll2/b;
    .locals 2

    sget-object v0, Ll2/b;->PHOTO_TRANSLATE:Ll2/b;

    sget-object v1, Ll2/b;->SCREEN_TRANSLATE:Ll2/b;

    filled-new-array {v0, v1}, [Ll2/b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll2/b;

    const-string v1, "PHOTO_TRANSLATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll2/b;->PHOTO_TRANSLATE:Ll2/b;

    new-instance v0, Ll2/b;

    const-string v1, "SCREEN_TRANSLATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll2/b;->SCREEN_TRANSLATE:Ll2/b;

    invoke-static {}, Ll2/b;->$values()[Ll2/b;

    move-result-object v0

    sput-object v0, Ll2/b;->$VALUES:[Ll2/b;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Ll2/b;->$ENTRIES:Lr8/a;

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

    sget-object v0, Ll2/b;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll2/b;
    .locals 1

    const-class v0, Ll2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll2/b;

    return-object p0
.end method

.method public static values()[Ll2/b;
    .locals 1

    sget-object v0, Ll2/b;->$VALUES:[Ll2/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll2/b;

    return-object v0
.end method

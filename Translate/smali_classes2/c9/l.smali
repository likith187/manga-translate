.class public final enum Lc9/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lc9/l;

.field public static final enum INTERNAL:Lc9/l;

.field public static final enum PRIVATE:Lc9/l;

.field public static final enum PROTECTED:Lc9/l;

.field public static final enum PUBLIC:Lc9/l;


# direct methods
.method private static final synthetic $values()[Lc9/l;
    .locals 4

    sget-object v0, Lc9/l;->PUBLIC:Lc9/l;

    sget-object v1, Lc9/l;->PROTECTED:Lc9/l;

    sget-object v2, Lc9/l;->INTERNAL:Lc9/l;

    sget-object v3, Lc9/l;->PRIVATE:Lc9/l;

    filled-new-array {v0, v1, v2, v3}, [Lc9/l;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc9/l;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc9/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc9/l;->PUBLIC:Lc9/l;

    new-instance v0, Lc9/l;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc9/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc9/l;->PROTECTED:Lc9/l;

    new-instance v0, Lc9/l;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lc9/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc9/l;->INTERNAL:Lc9/l;

    new-instance v0, Lc9/l;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lc9/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc9/l;->PRIVATE:Lc9/l;

    invoke-static {}, Lc9/l;->$values()[Lc9/l;

    move-result-object v0

    sput-object v0, Lc9/l;->$VALUES:[Lc9/l;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lc9/l;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lc9/l;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lc9/l;
    .locals 1

    const-class v0, Lc9/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc9/l;

    return-object p0
.end method

.method public static values()[Lc9/l;
    .locals 1

    sget-object v0, Lc9/l;->$VALUES:[Lc9/l;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc9/l;

    return-object v0
.end method

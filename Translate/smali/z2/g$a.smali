.class public final enum Lz2/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lz2/g$a;

.field public static final enum FATAL_ERROR:Lz2/g$a;

.field public static final enum OK:Lz2/g$a;

.field public static final enum TRANSIENT_ERROR:Lz2/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz2/g$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz2/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz2/g$a;->OK:Lz2/g$a;

    new-instance v1, Lz2/g$a;

    const-string v2, "TRANSIENT_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lz2/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz2/g$a;->TRANSIENT_ERROR:Lz2/g$a;

    new-instance v2, Lz2/g$a;

    const-string v3, "FATAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lz2/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz2/g$a;->FATAL_ERROR:Lz2/g$a;

    filled-new-array {v0, v1, v2}, [Lz2/g$a;

    move-result-object v0

    sput-object v0, Lz2/g$a;->$VALUES:[Lz2/g$a;

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

.method public static valueOf(Ljava/lang/String;)Lz2/g$a;
    .locals 1

    const-class v0, Lz2/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz2/g$a;

    return-object p0
.end method

.method public static values()[Lz2/g$a;
    .locals 1

    sget-object v0, Lz2/g$a;->$VALUES:[Lz2/g$a;

    invoke-virtual {v0}, [Lz2/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz2/g$a;

    return-object v0
.end method

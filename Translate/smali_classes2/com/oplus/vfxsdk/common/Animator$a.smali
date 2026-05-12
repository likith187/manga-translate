.class public final enum Lcom/oplus/vfxsdk/common/Animator$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/common/Animator$a;

.field public static final enum LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

.field public static final enum ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

.field public static final enum REVERSE_LOOP:Lcom/oplus/vfxsdk/common/Animator$a;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/vfxsdk/common/Animator$a;
    .locals 3

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    sget-object v1, Lcom/oplus/vfxsdk/common/Animator$a;->REVERSE_LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    sget-object v2, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/vfxsdk/common/Animator$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$a;

    const-string v1, "LOOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/Animator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$a;

    const-string v1, "REVERSE_LOOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/Animator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->REVERSE_LOOP:Lcom/oplus/vfxsdk/common/Animator$a;

    new-instance v0, Lcom/oplus/vfxsdk/common/Animator$a;

    const-string v1, "ONCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/common/Animator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->ONCE:Lcom/oplus/vfxsdk/common/Animator$a;

    invoke-static {}, Lcom/oplus/vfxsdk/common/Animator$a;->$values()[Lcom/oplus/vfxsdk/common/Animator$a;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->$VALUES:[Lcom/oplus/vfxsdk/common/Animator$a;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator$a;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/common/Animator$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Animator$a;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/common/Animator$a;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/Animator$a;->$VALUES:[Lcom/oplus/vfxsdk/common/Animator$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/common/Animator$a;

    return-object v0
.end method

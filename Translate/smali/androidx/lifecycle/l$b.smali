.class public final enum Landroidx/lifecycle/l$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Landroidx/lifecycle/l$b;

.field public static final enum CREATED:Landroidx/lifecycle/l$b;

.field public static final enum DESTROYED:Landroidx/lifecycle/l$b;

.field public static final enum INITIALIZED:Landroidx/lifecycle/l$b;

.field public static final enum RESUMED:Landroidx/lifecycle/l$b;

.field public static final enum STARTED:Landroidx/lifecycle/l$b;


# direct methods
.method private static final synthetic $values()[Landroidx/lifecycle/l$b;
    .locals 5

    sget-object v0, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    sget-object v1, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    sget-object v2, Landroidx/lifecycle/l$b;->CREATED:Landroidx/lifecycle/l$b;

    sget-object v3, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    sget-object v4, Landroidx/lifecycle/l$b;->RESUMED:Landroidx/lifecycle/l$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/lifecycle/l$b;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/l$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    new-instance v0, Landroidx/lifecycle/l$b;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$b;->INITIALIZED:Landroidx/lifecycle/l$b;

    new-instance v0, Landroidx/lifecycle/l$b;

    const-string v1, "CREATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$b;->CREATED:Landroidx/lifecycle/l$b;

    new-instance v0, Landroidx/lifecycle/l$b;

    const-string v1, "STARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    new-instance v0, Landroidx/lifecycle/l$b;

    const-string v1, "RESUMED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$b;->RESUMED:Landroidx/lifecycle/l$b;

    invoke-static {}, Landroidx/lifecycle/l$b;->$values()[Landroidx/lifecycle/l$b;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/l$b;->$VALUES:[Landroidx/lifecycle/l$b;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/l$b;->$ENTRIES:Lr8/a;

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

    sget-object v0, Landroidx/lifecycle/l$b;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/l$b;
    .locals 1

    const-class v0, Landroidx/lifecycle/l$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l$b;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/l$b;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$b;->$VALUES:[Landroidx/lifecycle/l$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/l$b;

    return-object v0
.end method


# virtual methods
.method public final isAtLeast(Landroidx/lifecycle/l$b;)Z
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

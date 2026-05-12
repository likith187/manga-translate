.class public final enum Lkotlinx/coroutines/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/e0$a;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lkotlinx/coroutines/e0;

.field public static final enum ATOMIC:Lkotlinx/coroutines/e0;

.field public static final enum DEFAULT:Lkotlinx/coroutines/e0;

.field public static final enum LAZY:Lkotlinx/coroutines/e0;

.field public static final enum UNDISPATCHED:Lkotlinx/coroutines/e0;


# direct methods
.method private static final synthetic $values()[Lkotlinx/coroutines/e0;
    .locals 4

    sget-object v0, Lkotlinx/coroutines/e0;->DEFAULT:Lkotlinx/coroutines/e0;

    sget-object v1, Lkotlinx/coroutines/e0;->LAZY:Lkotlinx/coroutines/e0;

    sget-object v2, Lkotlinx/coroutines/e0;->ATOMIC:Lkotlinx/coroutines/e0;

    sget-object v3, Lkotlinx/coroutines/e0;->UNDISPATCHED:Lkotlinx/coroutines/e0;

    filled-new-array {v0, v1, v2, v3}, [Lkotlinx/coroutines/e0;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/e0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/e0;->DEFAULT:Lkotlinx/coroutines/e0;

    new-instance v0, Lkotlinx/coroutines/e0;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/e0;->LAZY:Lkotlinx/coroutines/e0;

    new-instance v0, Lkotlinx/coroutines/e0;

    const-string v1, "ATOMIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/e0;->ATOMIC:Lkotlinx/coroutines/e0;

    new-instance v0, Lkotlinx/coroutines/e0;

    const-string v1, "UNDISPATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/e0;->UNDISPATCHED:Lkotlinx/coroutines/e0;

    invoke-static {}, Lkotlinx/coroutines/e0;->$values()[Lkotlinx/coroutines/e0;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/e0;->$VALUES:[Lkotlinx/coroutines/e0;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/e0;->$ENTRIES:Lr8/a;

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

    sget-object v0, Lkotlinx/coroutines/e0;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static synthetic isLazy$annotations()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/e0;
    .locals 1

    const-class v0, Lkotlinx/coroutines/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/e0;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/e0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/e0;->$VALUES:[Lkotlinx/coroutines/e0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/e0;

    return-object v0
.end method


# virtual methods
.method public final invoke(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/p;",
            "TR;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/e0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1, p2, p3}, Lf9/b;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lkotlin/coroutines/f;->a(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lf9/a;->d(Lw8/p;Ljava/lang/Object;Lkotlin/coroutines/d;Lw8/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final isLazy()Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/e0;->LAZY:Lkotlinx/coroutines/e0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

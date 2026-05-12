.class public final enum Landroidx/lifecycle/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/l$a$a;,
        Landroidx/lifecycle/l$a$b;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Landroidx/lifecycle/l$a;

.field public static final Companion:Landroidx/lifecycle/l$a$a;

.field public static final enum ON_ANY:Landroidx/lifecycle/l$a;

.field public static final enum ON_CREATE:Landroidx/lifecycle/l$a;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/l$a;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/l$a;

.field public static final enum ON_RESUME:Landroidx/lifecycle/l$a;

.field public static final enum ON_START:Landroidx/lifecycle/l$a;

.field public static final enum ON_STOP:Landroidx/lifecycle/l$a;


# direct methods
.method private static final synthetic $values()[Landroidx/lifecycle/l$a;
    .locals 7

    sget-object v0, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    sget-object v1, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    sget-object v2, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    sget-object v3, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    sget-object v4, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    sget-object v5, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    sget-object v6, Landroidx/lifecycle/l$a;->ON_ANY:Landroidx/lifecycle/l$a;

    filled-new-array/range {v0 .. v6}, [Landroidx/lifecycle/l$a;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_RESUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_STOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    new-instance v0, Landroidx/lifecycle/l$a;

    const-string v1, "ON_ANY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/l$a;->ON_ANY:Landroidx/lifecycle/l$a;

    invoke-static {}, Landroidx/lifecycle/l$a;->$values()[Landroidx/lifecycle/l$a;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/l$a;->$VALUES:[Landroidx/lifecycle/l$a;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/l$a;->$ENTRIES:Lr8/a;

    new-instance v0, Landroidx/lifecycle/l$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/l$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

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

.method public static final downFrom(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/l$a$a;->a(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static final downTo(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/l$a$a;->b(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Landroidx/lifecycle/l$a;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static final upFrom(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/l$a$a;->c(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static final upTo(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/l$a$a;->d(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/l$a;
    .locals 1

    const-class v0, Landroidx/lifecycle/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/l$a;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/l$a;
    .locals 1

    sget-object v0, Landroidx/lifecycle/l$a;->$VALUES:[Landroidx/lifecycle/l$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/l$a;

    return-object v0
.end method


# virtual methods
.method public final getTargetState()Landroidx/lifecycle/l$b;
    .locals 2

    sget-object v0, Landroidx/lifecycle/l$a$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has no target state"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object p0, Landroidx/lifecycle/l$b;->DESTROYED:Landroidx/lifecycle/l$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/lifecycle/l$b;->RESUMED:Landroidx/lifecycle/l$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    return-object p0

    :pswitch_4
    sget-object p0, Landroidx/lifecycle/l$b;->CREATED:Landroidx/lifecycle/l$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

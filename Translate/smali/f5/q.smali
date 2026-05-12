.class final enum Lf5/q;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lf5/q;

.field private static final synthetic zzb:[Lf5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf5/q;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf5/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf5/q;->zza:Lf5/q;

    filled-new-array {v0}, [Lf5/q;

    move-result-object v0

    sput-object v0, Lf5/q;->zzb:[Lf5/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lf5/q;
    .locals 1

    sget-object v0, Lf5/q;->zzb:[Lf5/q;

    invoke-virtual {v0}, [Lf5/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf5/q;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lf5/f;->a()Lf5/f;

    move-result-object p0

    invoke-static {p0}, Lf5/f;->e(Lf5/f;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

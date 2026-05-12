.class public Lu7/a;
.super Landroid/database/MatrixCursor;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;

.field private static volatile c:Lu7/a;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu7/a;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lu7/a;->c:Lu7/a;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lu7/a;->a:Landroid/os/Bundle;

    const-string p0, "IBinder"

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static c(Landroid/os/IBinder;)Lu7/a;
    .locals 3

    sget-object v0, Lu7/a;->c:Lu7/a;

    if-nez v0, :cond_1

    const-class v0, Lu7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu7/a;->c:Lu7/a;

    if-nez v1, :cond_0

    new-instance v1, Lu7/a;

    sget-object v2, Lu7/a;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lu7/a;-><init>([Ljava/lang/String;Landroid/os/IBinder;)V

    sput-object v1, Lu7/a;->c:Lu7/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lu7/a;->c:Lu7/a;

    return-object p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lu7/a;->a:Landroid/os/Bundle;

    return-object p0
.end method

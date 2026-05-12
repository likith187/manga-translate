.class public Lcom/oplus/tingle/ipc/b;
.super Lcom/oplus/tingle/ipc/IMaster$Stub;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/oplus/tingle/ipc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/b;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/tingle/ipc/IMaster$Stub;-><init>()V

    return-void
.end method

.method static a()Lcom/oplus/tingle/ipc/b;
    .locals 2

    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Lcom/oplus/tingle/ipc/b;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oplus/tingle/ipc/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/tingle/ipc/b;->b:Lcom/oplus/tingle/ipc/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oplus/tingle/ipc/b;

    invoke-direct {v1}, Lcom/oplus/tingle/ipc/b;-><init>()V

    sput-object v1, Lcom/oplus/tingle/ipc/b;->b:Lcom/oplus/tingle/ipc/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/oplus/tingle/ipc/b;->b:Lcom/oplus/tingle/ipc/b;

    return-object v0
.end method

.method private b(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    invoke-static {}, Lg7/c;->a()Lg7/c;

    move-result-object v1

    invoke-virtual {v1}, Lg7/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lg7/c;->a()Lg7/c;

    move-result-object v1

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lg7/c;->e(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Tingle Authentication Failed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {p0, v0, v1, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "appendFrom failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Master"

    invoke-static {p2, p0, p1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getUid()I
    .locals 0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result p0

    return p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lt7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/oplus/tingle/ipc/b;->b(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/tingle/ipc/IMaster$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.class public abstract Lcom/heytap/shield/authcode/dao/AuthenticationDb;
.super Landroidx/room/h;
.source "SourceFile"


# static fields
.field private static volatile l:Lcom/heytap/shield/authcode/dao/AuthenticationDb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/h;-><init>()V

    return-void
.end method

.method public static t(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;
    .locals 3

    sget-object v0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->l:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    if-nez v0, :cond_1

    const-class v0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->l:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    const-string v2, "authentication.db"

    invoke-static {p0, v1, v2}, Landroidx/room/g;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/h$a;->b()Landroidx/room/h$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/h$a;->c()Landroidx/room/h;

    move-result-object p0

    check-cast p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    sput-object p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->l:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

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
    sget-object p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->l:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    return-object p0
.end method


# virtual methods
.method public abstract s()Lt5/a;
.end method

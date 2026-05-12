.class Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;
.super Landroidx/room/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->f(Landroidx/room/a;)Ls0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;


# direct methods
.method constructor <init>(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-direct {p0, p2}, Landroidx/room/j$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ls0/b;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `a_e` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `auth_code` TEXT, `is_enable` INTEGER NOT NULL, `uid` INTEGER NOT NULL, `packageName` TEXT, `capability_name` TEXT, `expiration` INTEGER NOT NULL, `permission` BLOB, `last_update_time` INTEGER NOT NULL, `cache_time` INTEGER NOT NULL)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4900734c010240a846af4887983ab420\')"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ls0/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `a_e`"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->u(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->v(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->x(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected c(Ls0/b;)V
    .locals 0

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->y(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->z(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->A(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ls0/b;)V
    .locals 1

    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->B(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Ls0/b;)Ls0/b;

    iget-object v0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {v0, p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->C(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;Ls0/b;)V

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->D(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p1}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->E(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl$a;->b:Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;

    invoke-static {p0}, Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;->w(Lcom/heytap/shield/authcode/dao/AuthenticationDb_Impl;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ls0/b;)V
    .locals 0

    return-void
.end method

.method public f(Ls0/b;)V
    .locals 0

    invoke-static {p1}, Lp0/c;->a(Ls0/b;)V

    return-void
.end method

.method protected g(Ls0/b;)Landroidx/room/j$b;
    .locals 9

    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v0, Lp0/e$a;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "auth_code"

    const-string v4, "TEXT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "auth_code"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "is_enable"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "is_enable"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "uid"

    const-string v4, "INTEGER"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "uid"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "packageName"

    const-string v4, "TEXT"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "packageName"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "capability_name"

    const-string v4, "TEXT"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "capability_name"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "expiration"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "expiration"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "permission"

    const-string v4, "BLOB"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "permission"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "last_update_time"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "last_update_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lp0/e$a;

    const-string v3, "cache_time"

    const-string v4, "INTEGER"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "cache_time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Lp0/e;

    const-string v4, "a_e"

    invoke-direct {v3, v4, p0, v0, v2}, Lp0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v4}, Lp0/e;->a(Ls0/b;Ljava/lang/String;)Lp0/e;

    move-result-object p0

    invoke-virtual {v3, p0}, Lp0/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/room/j$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_e(com.heytap.shield.authcode.dao.AuthenticationDbBean).\n Expected:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Landroidx/room/j$b;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

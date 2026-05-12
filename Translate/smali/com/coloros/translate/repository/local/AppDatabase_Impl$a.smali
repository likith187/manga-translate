.class Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;
.super Landroidx/room/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/local/AppDatabase_Impl;->f(Landroidx/room/a;)Ls0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/local/AppDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/j$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ls0/b;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `conversationHistory` (`conversationId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `fromText` TEXT NOT NULL, `toText` TEXT NOT NULL, `fromLanguage` TEXT NOT NULL, `toLanguage` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` INTEGER NOT NULL, `isLeft` INTEGER NOT NULL, `expandField1` TEXT NOT NULL, `expandField2` TEXT NOT NULL, `expandField3` TEXT NOT NULL)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_conversationHistory_timestamp` ON `conversationHistory` (`timestamp`)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `simultaneousHistory` (`sid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `timestamp` INTEGER NOT NULL, `noteId` INTEGER NOT NULL, `noteTitle` TEXT NOT NULL, `audioFile` TEXT NOT NULL, `simpleText` TEXT NOT NULL, `audioTime` INTEGER NOT NULL)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `simultaneousSentence` (`sid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `msgId` INTEGER NOT NULL, `recordId` TEXT NOT NULL, `fromText` TEXT NOT NULL, `toText` TEXT NOT NULL, `fromLanguage` TEXT NOT NULL, `toLanguage` TEXT NOT NULL, `startTimeOffset` INTEGER NOT NULL, `endTimeOffset` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL, `noteId` INTEGER NOT NULL)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `text_history` (`oriContent` TEXT NOT NULL, `oriLanguageCode` TEXT NOT NULL, `resultContent` TEXT NOT NULL, `resultLanguageCode` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` INTEGER NOT NULL, `expandField1` TEXT NOT NULL, `expandField2` TEXT NOT NULL, `expandField3` TEXT NOT NULL, `globalId` TEXT NOT NULL, `type` INTEGER NOT NULL, `updateTimestamp` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'fb3c376a8fe5ba532fad1bf441ceea14\')"

    invoke-interface {p1, p0}, Ls0/b;->y(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ls0/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `conversationHistory`"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `simultaneousHistory`"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `simultaneousSentence`"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `text_history`"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->w(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->x(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p0}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->z(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

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

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->A(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->B(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p0}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->C(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->D(Lcom/coloros/translate/repository/local/AppDatabase_Impl;Ls0/b;)Ls0/b;

    iget-object v0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->E(Lcom/coloros/translate/repository/local/AppDatabase_Impl;Ls0/b;)V

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->F(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p1}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->G(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/repository/local/AppDatabase_Impl$a;->b:Lcom/coloros/translate/repository/local/AppDatabase_Impl;

    invoke-static {p0}, Lcom/coloros/translate/repository/local/AppDatabase_Impl;->y(Lcom/coloros/translate/repository/local/AppDatabase_Impl;)Ljava/util/List;

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
    .locals 34

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v10, Lp0/e$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "conversationId"

    const-string v5, "INTEGER"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "conversationId"

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "fromText"

    const-string v13, "TEXT"

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "fromText"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "toText"

    const-string v7, "TEXT"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "toText"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "fromLanguage"

    const-string v8, "TEXT"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "fromLanguage"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v8, "toLanguage"

    const-string v9, "TEXT"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "toLanguage"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v13, 0x0

    const-string v9, "timestamp"

    const-string v10, "INTEGER"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "timestamp"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "state"

    const-string v11, "INTEGER"

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "state"

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "isLeft"

    const-string v12, "INTEGER"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "isLeft"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/16 v16, 0x0

    const-string v12, "expandField1"

    const-string v13, "TEXT"

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "expandField1"

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const-string v12, "expandField2"

    const-string v13, "TEXT"

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "expandField2"

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lp0/e$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "expandField3"

    const-string v14, "TEXT"

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "expandField3"

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Lp0/e$d;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v16, v12

    const-string v12, "index_conversationHistory_timestamp"

    invoke-direct {v2, v12, v15, v13}, Lp0/e$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lp0/e;

    const-string v12, "conversationHistory"

    invoke-direct {v2, v12, v1, v3, v14}, Lp0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v12}, Lp0/e;->a(Ls0/b;Ljava/lang/String;)Lp0/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lp0/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "\n Found:\n"

    if-nez v3, :cond_0

    new-instance v0, Landroidx/room/j$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversationHistory(com.coloros.translate.repository.local.Conversation).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lp0/e$a;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "sid"

    const-string v20, "INTEGER"

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v19, "timestamp"

    const-string v20, "INTEGER"

    const/16 v22, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "noteId"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "noteId"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v19, "noteTitle"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "noteTitle"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v19, "audioFile"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "audioFile"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v19, "simpleText"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "simpleText"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v19, "audioTime"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "audioTime"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Ljava/util/HashSet;-><init>(I)V

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v14}, Ljava/util/HashSet;-><init>(I)V

    new-instance v14, Lp0/e;

    move-object/from16 v19, v11

    const-string v11, "simultaneousHistory"

    invoke-direct {v14, v11, v1, v2, v15}, Lp0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v11}, Lp0/e;->a(Ls0/b;Ljava/lang/String;)Lp0/e;

    move-result-object v1

    invoke-virtual {v14, v1}, Lp0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Landroidx/room/j$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simultaneousHistory(com.coloros.translate.repository.local.SimultaneousHistory).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lp0/e$a;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v21, "sid"

    const-string v22, "INTEGER"

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/16 v32, 0x0

    const/16 v33, 0x1

    const-string v28, "msgId"

    const-string v29, "INTEGER"

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "msgId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "recordId"

    const-string v22, "TEXT"

    const/16 v24, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "recordId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "fromText"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v28, "toText"

    const-string v29, "TEXT"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "fromLanguage"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v28, "toLanguage"

    const-string v29, "TEXT"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "startTimeOffset"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "startTimeOffset"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "endTimeOffset"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "endTimeOffset"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "timestamp"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v28, "noteId"

    const-string v29, "INTEGER"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Lp0/e;

    const-string v5, "simultaneousSentence"

    invoke-direct {v3, v5, v1, v2, v4}, Lp0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v5}, Lp0/e;->a(Ls0/b;Ljava/lang/String;)Lp0/e;

    move-result-object v1

    invoke-virtual {v3, v1}, Lp0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroidx/room/j$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simultaneousSentence(com.coloros.translate.repository.local.SimultaneousSentence).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lp0/e$a;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string v21, "oriContent"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "oriContent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "oriLanguageCode"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "oriLanguageCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "resultContent"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "resultContent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "resultLanguageCode"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "resultLanguageCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "timestamp"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const-string v28, "state"

    const-string v29, "INTEGER"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v21, "expandField1"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "expandField2"

    const-string v5, "TEXT"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "expandField3"

    const-string v6, "TEXT"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v5, "globalId"

    const-string v6, "TEXT"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "globalId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v5, "type"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const-string v5, "updateTimestamp"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "updateTimestamp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lp0/e$a;

    const/4 v8, 0x1

    const-string v5, "id"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lp0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Lp0/e;

    const-string v5, "text_history"

    invoke-direct {v3, v5, v1, v2, v4}, Lp0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v5}, Lp0/e;->a(Ls0/b;Ljava/lang/String;)Lp0/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lp0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/room/j$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "text_history(com.coloros.translate.repository.local.TextHistory).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v0, Landroidx/room/j$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/room/j$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

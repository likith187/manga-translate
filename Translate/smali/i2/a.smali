.class public final Li2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Li2/a;

.field private static final a:Li2/a$a;

.field private static final b:Lcom/coloros/translate/repository/local/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li2/a;

    invoke-direct {v0}, Li2/a;-><init>()V

    sput-object v0, Li2/a;->INSTANCE:Li2/a;

    new-instance v0, Li2/a$a;

    invoke-direct {v0}, Li2/a$a;-><init>()V

    sput-object v0, Li2/a;->a:Li2/a$a;

    sget-object v1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v1}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/coloros/translate/repository/local/AppDatabase;

    const-string v3, "conversation-db"

    invoke-static {v1, v2, v3}, Landroidx/room/g;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h$a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lo0/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroidx/room/h$a;->a([Lo0/a;)Landroidx/room/h$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/h$a;->c()Landroidx/room/h;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/repository/local/AppDatabase;

    sput-object v0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0}, Li2/b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AppDatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string p0, "conversation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0, p1}, Li2/b;->a(Lcom/coloros/translate/repository/local/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AppDatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1

    const-string p0, "conversationList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0, p1}, Li2/b;->e(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AppDatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final d()I
    .locals 3

    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Landroidx/room/h;->i()Ls0/c;

    move-result-object p0

    const-string v0, "getOpenHelper(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ls0/c;->b()Ls0/b;

    move-result-object p0

    invoke-interface {p0}, Ls0/b;->l0()I

    move-result p0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "databaseVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppDatabaseHelper"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final e(II)Ljava/util/List;
    .locals 0

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Li2/b;->c(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "AppDatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Lcom/coloros/translate/repository/local/AppDatabase;
    .locals 0

    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    return-object p0
.end method

.method public final g(Lcom/coloros/translate/repository/local/Conversation;)J
    .locals 2

    const-string p0, "conversation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "insertConversation"

    const-string v1, "AppDatabaseHelper"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0, p1}, Li2/b;->b(Lcom/coloros/translate/repository/local/Conversation;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final h(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string p0, "conversation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Li2/a;->b:Lcom/coloros/translate/repository/local/AppDatabase;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/AppDatabase;->s()Li2/b;

    move-result-object p0

    invoke-interface {p0, p1}, Li2/b;->d(Lcom/coloros/translate/repository/local/Conversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "AppDatabaseHelper"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

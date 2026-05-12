.class public final Lcom/coloros/translate/LanguageManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/observer/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/LanguageManager;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/LanguageManager;


# direct methods
.method constructor <init>(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager$f;->f(Lcom/coloros/translate/LanguageManager;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager$f;->e(Lcom/coloros/translate/LanguageManager;)V

    return-void
.end method

.method private static final e(Lcom/coloros/translate/LanguageManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/LanguageManager;->k(Lcom/coloros/translate/LanguageManager;Z)V

    return-void
.end method

.method private static final f(Lcom/coloros/translate/LanguageManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/LanguageManager;->k(Lcom/coloros/translate/LanguageManager;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    invoke-static {v1}, Lcom/coloros/translate/LanguageManager;->i(Lcom/coloros/translate/LanguageManager;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net onAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    invoke-static {v0}, Lcom/coloros/translate/LanguageManager;->i(Lcom/coloros/translate/LanguageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    new-instance v0, Lcom/coloros/translate/i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/i;-><init>(Lcom/coloros/translate/LanguageManager;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/LanguageManager;->j(Lcom/coloros/translate/LanguageManager;Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    invoke-static {v1}, Lcom/coloros/translate/LanguageManager;->i(Lcom/coloros/translate/LanguageManager;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net onLost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LanguageManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    invoke-static {v0}, Lcom/coloros/translate/LanguageManager;->i(Lcom/coloros/translate/LanguageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    new-instance v0, Lcom/coloros/translate/j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/j;-><init>(Lcom/coloros/translate/LanguageManager;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/LanguageManager$f;->a:Lcom/coloros/translate/LanguageManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/translate/LanguageManager;->j(Lcom/coloros/translate/LanguageManager;Z)V

    :goto_0
    return-void
.end method

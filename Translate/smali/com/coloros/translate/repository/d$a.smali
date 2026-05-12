.class public final Lcom/coloros/translate/repository/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/repository/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/repository/d$a;)Lcom/coloros/translate/repository/a;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;->d()Lcom/coloros/translate/repository/a;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/coloros/translate/repository/a;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/repository/d;->b()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/a;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;->d()Lcom/coloros/translate/repository/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/a;->h()V

    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;->d()Lcom/coloros/translate/repository/a;

    move-result-object v0

    invoke-static {}, Lcom/coloros/translate/repository/d;->a()Lcom/coloros/translate/repository/d$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/a;->i(Lcom/coloros/translate/repository/a$b;)V

    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;->d()Lcom/coloros/translate/repository/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/repository/d$a$a;->INSTANCE:Lcom/coloros/translate/repository/d$a$a;

    invoke-static {p0}, Lcom/coloros/translate/repository/e;->a(Lw8/l;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "RepositoryFactory"

    const-string v2, "checkAiDownload false"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/repository/d$a;->d()Lcom/coloros/translate/repository/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Li2/a;
    .locals 0

    sget-object p0, Li2/a;->INSTANCE:Li2/a;

    return-object p0
.end method

.method public final e()Lcom/coloros/translate/repository/remote/c;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/repository/d;->c()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/c;

    return-object p0
.end method

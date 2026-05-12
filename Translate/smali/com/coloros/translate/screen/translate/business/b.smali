.class public final Lcom/coloros/translate/screen/translate/business/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

.field private static final a:Ljava/util/List;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/business/b;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/business/b;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/b;->a:Ljava/util/List;

    const-string v0, "oediv.oohiq.moc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/translate/business/b;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/translate/business/b;->a:Ljava/util/List;

    return-object v0
.end method

.method private final c(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/coloros/translate/screen/translate/business/b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/r;->U0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    invoke-static {}, Lcom/coloros/translate/screen/translate/business/c;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 5

    const-string p0, "BlackListManager"

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {}, Lcom/coloros/translate/screen/utils/w;->e()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "Top Component Name is empty!"

    invoke-virtual {v1, p0, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/coloros/translate/screen/translate/business/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    invoke-direct {v3, v1}, Lcom/coloros/translate/screen/translate/business/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :goto_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContainsInAppBlackList exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "BlackListManager"

    const-string v1, "update"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lj2/a;

    invoke-direct {p0, p1}, Lj2/a;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/coloros/translate/screen/translate/business/b$a;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b$a;

    invoke-virtual {p0, p1}, Lj2/a;->a(Lw8/l;)V

    return-void
.end method

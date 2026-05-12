.class public final Lcom/coloros/translate/observer/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/observer/c;
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
    invoke-direct {p0}, Lcom/coloros/translate/observer/c$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/b0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/observer/c$a;->d(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public static synthetic b(Landroidx/lifecycle/b0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/observer/c$a;->f(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private static final d(Landroidx/lifecycle/b0;)V
    .locals 6

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/y;->f()Z

    move-result v2

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observeConnForever, observer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasObserver = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitConnectionState"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/f;->h(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private static final f(Landroidx/lifecycle/b0;)V
    .locals 6

    const-string v0, "$observer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/y;->f()Z

    move-result v2

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeConnObserver, observer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasObserver = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiUnitConnectionState"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/observer/c;->q()Lcom/coloros/translate/observer/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/observer/f;->l(Landroidx/lifecycle/b0;)V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/b0;)V
    .locals 3

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/observer/b;

    invoke-direct {p0, p1}, Lcom/coloros/translate/observer/b;-><init>(Landroidx/lifecycle/b0;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1, v0}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Landroidx/lifecycle/b0;)V
    .locals 3

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/observer/a;

    invoke-direct {p0, p1}, Lcom/coloros/translate/observer/a;-><init>(Landroidx/lifecycle/b0;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1, v0}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

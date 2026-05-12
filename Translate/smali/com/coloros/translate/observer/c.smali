.class public final Lcom/coloros/translate/observer/c;
.super Lcom/coloros/translate/observer/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/observer/c$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/coloros/translate/observer/c$a;

.field private static final p:Lcom/coloros/translate/observer/c;


# instance fields
.field private final n:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/observer/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/observer/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/observer/c;->o:Lcom/coloros/translate/observer/c$a;

    new-instance v0, Lcom/coloros/translate/observer/c;

    invoke-direct {v0}, Lcom/coloros/translate/observer/c;-><init>()V

    sput-object v0, Lcom/coloros/translate/observer/c;->p:Lcom/coloros/translate/observer/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/observer/f;-><init>()V

    new-instance v0, Lcom/coloros/translate/observer/c$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/observer/c$b;-><init>(Lcom/coloros/translate/observer/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/observer/c;->n:Ln8/j;

    return-void
.end method

.method public static final synthetic q()Lcom/coloros/translate/observer/c;
    .locals 1

    sget-object v0, Lcom/coloros/translate/observer/c;->p:Lcom/coloros/translate/observer/c;

    return-object v0
.end method

.method private final r()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-direct {p0}, Lcom/coloros/translate/observer/c;->s()Lcom/coloros/translate/observer/c$b$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method private final s()Lcom/coloros/translate/observer/c$b$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/observer/c;->n:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/observer/c$b$a;

    return-object p0
.end method

.method private final t()V
    .locals 6

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/observer/c;->s()Lcom/coloros/translate/observer/c$b$a;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected i()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/y;->i()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitConnectionState"

    const-string v2, "onActive"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/observer/c;->t()V

    return-void
.end method

.method protected j()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/y;->j()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitConnectionState"

    const-string v2, "onInactive"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/observer/c;->r()V

    sget-object p0, Lcom/coloros/translate/observer/c;->p:Lcom/coloros/translate/observer/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

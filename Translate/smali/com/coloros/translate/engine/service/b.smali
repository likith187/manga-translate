.class public Lcom/coloros/translate/engine/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/coloros/translate/engine/service/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/coloros/translate/engine/service/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/coloros/translate/engine/service/b;)Lcom/coloros/translate/engine/service/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b;->a:Lcom/coloros/translate/engine/service/a;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/os/IBinder;
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b;->b:Landroid/content/Context;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/service/b$a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/service/b$a;-><init>(Lcom/coloros/translate/engine/service/b;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/service/a;

    invoke-direct {v0}, Lcom/coloros/translate/engine/service/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/service/b;->a:Lcom/coloros/translate/engine/service/a;

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/coloros/translate/engine/service/b;->b:Landroid/content/Context;

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "TranslateServiceInterProxy"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b;->b:Landroid/content/Context;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/engine/service/b;->a:Lcom/coloros/translate/engine/service/a;

    const-string v1, "com.coloros.translate"

    invoke-virtual {v0, v1}, Lcom/coloros/translate/engine/service/a;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b;->a:Lcom/coloros/translate/engine/service/a;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/service/a;->g()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/engine/service/b;->b:Landroid/content/Context;

    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

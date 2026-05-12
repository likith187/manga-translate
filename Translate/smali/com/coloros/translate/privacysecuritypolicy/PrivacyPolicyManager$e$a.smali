.class public final Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;


# direct methods
.method constructor <init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->x(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "use_basic_function"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->t(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->C(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Le2/b;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->x(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e$a;->a:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

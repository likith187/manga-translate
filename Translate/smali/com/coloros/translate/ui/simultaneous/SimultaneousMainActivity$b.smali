.class final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->invoke$lambda$1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->S0()V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->T0()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v0}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "SimultaneousMainActivity"

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "checkPhoneConnect connect"

    invoke-virtual {v0, v6, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/coloros/translate/R$string;->ear_phone_connect_tips:I

    const/4 v1, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v1, v6, v5}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/l;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/l;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    invoke-static {v3, v4, v0, v2, v5}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "checkPhoneConnect disconnect"

    invoke-virtual {v0, v6, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$b;->this$0:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/m;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/m;-><init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V

    invoke-static {v3, v4, v0, v2, v5}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "checkPhoneConnect other"

    invoke-virtual {p0, v6, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

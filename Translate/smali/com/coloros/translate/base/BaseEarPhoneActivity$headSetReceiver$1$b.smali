.class final Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/translate/base/BaseEarPhoneActivity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/base/BaseEarPhoneActivity<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->invoke$lambda$0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->invoke$lambda$1(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->S0()V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->T0()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-static {v0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->L0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-static {v0}, Lcom/coloros/translate/base/BaseEarPhoneActivity;->M0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    new-instance v0, Lcom/coloros/translate/base/n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/n;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v3, v4, v0, v2, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$b;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    new-instance v0, Lcom/coloros/translate/base/o;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/o;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    invoke-static {v3, v4, v0, v2, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

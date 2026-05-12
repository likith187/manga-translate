.class final Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;
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

    iput-object p1, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;->invoke$lambda$0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V
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
    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    invoke-static {v0}, Lcom/coloros/translate/utils/s;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "BaseEarPhoneActivity"

    const-string v2, "headset disconnect real"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/coloros/translate/base/BaseEarPhoneActivity$headSetReceiver$1$a;->this$0:Lcom/coloros/translate/base/BaseEarPhoneActivity;

    new-instance v0, Lcom/coloros/translate/base/m;

    invoke-direct {v0, p0}, Lcom/coloros/translate/base/m;-><init>(Lcom/coloros/translate/base/BaseEarPhoneActivity;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

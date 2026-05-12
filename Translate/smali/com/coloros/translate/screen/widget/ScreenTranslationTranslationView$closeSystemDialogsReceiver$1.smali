.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "reason"

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {p1, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->b0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/os/IOplusExInputCallBack;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->F(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->I(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/os/IOplusExInputCallBack;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Q(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/engine/panel/e;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->G()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->b0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->ZONE:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->X(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->R(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/business/l;

    move-result-object p1

    sget-object p2, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p1, p2, :cond_8

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Y(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$closeSystemDialogsReceiver$1;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->T(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

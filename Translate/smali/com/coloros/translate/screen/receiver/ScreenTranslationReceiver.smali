.class public final Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver;->a:Lcom/coloros/translate/screen/receiver/ScreenTranslationReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

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

    const-string v2, "ScreenTranslationReceiver"

    invoke-virtual {p0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p0, "com.coloros.translate.screen.exit"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ll2/a;->INSTANCE:Ll2/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getPackageName(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ll2/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Ll2/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

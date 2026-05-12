.class final Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/cube/CubeSettingActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/cube/CubeSettingActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;-><init>(Lcom/coloros/translate/ui/cube/CubeSettingActivity;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    const-string p1, "content://uri.gesturemanagerprovider/action_button"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->U(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "second_menu_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/cube/CubeSettingActivity;->T(Lcom/coloros/translate/ui/cube/CubeSettingActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    sget v3, Lcom/coloros/translate/R$string;->screen_translation:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "long_press_action_info"

    const-string v4, "long_press_action_type"

    if-eqz v1, :cond_0

    const-string v1, "service"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v4, "oplus.intent.action.GLOBAL_TRANSLATION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_from_package"

    const-string v5, "com.oplus.gesture"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coloros.intent.action.translate.CUBE"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "update_flag"

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/cube/CubeSettingActivity$b$a;->this$0:Lcom/coloros/translate/ui/cube/CubeSettingActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "translate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene_name=?"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

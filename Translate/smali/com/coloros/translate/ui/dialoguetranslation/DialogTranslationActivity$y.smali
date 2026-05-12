.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->t3(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $needShowTips:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(ZLcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->$needShowTips:Z

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->invoke$lambda$0(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->invoke(ZZ)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(ZZ)V
    .locals 6

    if-eqz p2, :cond_2

    .line 2
    iget-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->$needShowTips:Z

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 5
    const-string v1, "key_is_show_double_screen_open_tips"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    .line 8
    sget v0, Lcom/coloros/translate/R$string;->double_screen_open_tips:I

    invoke-static {v0}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 11
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->h2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 12
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->I()Landroidx/lifecycle/a0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "asr is running must be stop"

    const-string v1, "DialogTranslationActivity"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->M()Lcom/coloros/translate/repository/local/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->m2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    goto :goto_1

    .line 16
    :cond_3
    const-string v0, "the translate result has not back"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_1
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->R0()V

    .line 18
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/e0;

    invoke-direct {v0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/e0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->f2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    goto :goto_2

    .line 20
    :cond_5
    iget-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->g2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 21
    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$y;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Z)V

    return-void
.end method

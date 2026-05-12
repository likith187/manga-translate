.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;
.super Landroid/os/IOplusExInputCallBack$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->r0()Landroid/os/IOplusExInputCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Default;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->b(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/v;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/v;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "floatViewTip onInputEvent"

    const-string v1, "ScreenTranslationTranslationView"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->Q(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/translate/engine/panel/e;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "floatViewTip hide"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->F(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b(Landroid/os/IOplusExInputCallBack;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->a0(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Landroid/os/IOplusExInputCallBack;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$newFloatTipExInputCallback$1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    new-instance p1, Lcom/coloros/translate/screen/widget/a2;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/a2;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

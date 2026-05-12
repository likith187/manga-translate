.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;
    .locals 1

    .line 1
    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->L(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;)Landroid/os/IOplusExService;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;-><init>(Landroid/os/IOplusExService;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$d;->invoke()Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;

    move-result-object p0

    return-object p0
.end method

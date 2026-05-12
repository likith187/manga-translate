.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;

    invoke-direct {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$b;->invoke()Lkotlinx/coroutines/c0;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/coroutines/c0;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p0}, Lkotlinx/coroutines/x1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object p0

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object p0

    return-object p0
.end method

.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->I(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationFloatFrameView"

    const-string v2, "SelectStart anim start"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    const-string v0, "SelectStart"

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->x(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Ljava/lang/String;)V

    return-void
.end method

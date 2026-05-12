.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->R0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentHeight:F

.field final synthetic $currentWidth:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;IF)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->$currentWidth:I

    iput p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->$currentHeight:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->invoke$lambda$0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getRealView()Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->$currentWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->$currentHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    new-instance v1, Lcom/coloros/translate/screen/widget/m1;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/m1;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getEventLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->getEventLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->N0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V

    .line 8
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$c;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->B(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

    return-void
.end method

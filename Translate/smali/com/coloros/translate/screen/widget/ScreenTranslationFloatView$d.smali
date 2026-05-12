.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$d;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$d;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/Animator;)V

    return-void
.end method

.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/GestureDetector;
    .locals 3

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {v2, p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i$a;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$i;->invoke()Landroid/view/GestureDetector;

    move-result-object p0

    return-object p0
.end method

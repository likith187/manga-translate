.class public final Lcom/coloros/translate/panel/TextTranslationPanel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/panel/TextTranslationPanel;->b(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;


# direct methods
.method constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$i;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$i;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->D(Lcom/coloros/translate/panel/TextTranslationPanel;)Lcom/coloros/translate/panel/ScrollableTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$i;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->O(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    return-void
.end method

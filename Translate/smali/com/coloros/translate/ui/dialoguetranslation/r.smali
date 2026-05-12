.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/r;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/r;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->i1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lf2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/p;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lf2/p;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->r(Lcom/coloros/translate/panel/TextTranslationPanel;Landroid/content/DialogInterface;)V

    return-void
.end method

.class public final synthetic Lf2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/o;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lf2/o;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->k(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    return-void
.end method

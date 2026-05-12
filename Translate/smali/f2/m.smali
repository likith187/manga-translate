.class public final synthetic Lf2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;

.field public final synthetic b:Lw8/a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/m;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iput-object p2, p0, Lf2/m;->b:Lw8/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf2/m;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iget-object p0, p0, Lf2/m;->b:Lw8/a;

    invoke-static {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->m(Lcom/coloros/translate/panel/TextTranslationPanel;Lw8/a;)V

    return-void
.end method

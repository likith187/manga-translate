.class public final synthetic Lcom/coloros/translate/engine/text/engine/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/text/engine/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic h:Lcom/coloros/translate/engine/ITranslateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/text/engine/f;->a:Lcom/coloros/translate/engine/text/engine/i;

    iput-object p2, p0, Lcom/coloros/translate/engine/text/engine/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/text/engine/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/text/engine/f;->f:Ljava/util/List;

    iput-object p5, p0, Lcom/coloros/translate/engine/text/engine/f;->h:Lcom/coloros/translate/engine/ITranslateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/text/engine/f;->a:Lcom/coloros/translate/engine/text/engine/i;

    iget-object v1, p0, Lcom/coloros/translate/engine/text/engine/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/text/engine/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/text/engine/f;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/translate/engine/text/engine/f;->h:Lcom/coloros/translate/engine/ITranslateListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/text/engine/i;->d(Lcom/coloros/translate/engine/text/engine/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V

    return-void
.end method

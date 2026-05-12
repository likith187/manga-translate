.class public final synthetic Lcom/coloros/translate/engine/offline/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/t0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic h:Lcom/coloros/translate/engine/IOfflineTranslateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/p0;->a:Lcom/coloros/translate/engine/offline/t0;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/p0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/translate/engine/offline/p0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/engine/offline/p0;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/translate/engine/offline/p0;->h:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/p0;->a:Lcom/coloros/translate/engine/offline/t0;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/p0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/p0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/p0;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/p0;->h:Lcom/coloros/translate/engine/IOfflineTranslateListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/engine/offline/t0;->g(Lcom/coloros/translate/engine/offline/t0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/IOfflineTranslateListener;)V

    return-void
.end method

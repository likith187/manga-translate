.class public final synthetic Lcom/coloros/translate/engine/offline/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/x;

.field public final synthetic b:Lcom/coloros/translate/engine/offline/f0;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/x;Lcom/coloros/translate/engine/offline/f0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/v;->a:Lcom/coloros/translate/engine/offline/x;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/v;->b:Lcom/coloros/translate/engine/offline/f0;

    iput-boolean p3, p0, Lcom/coloros/translate/engine/offline/v;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/v;->a:Lcom/coloros/translate/engine/offline/x;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/v;->b:Lcom/coloros/translate/engine/offline/f0;

    iget-boolean p0, p0, Lcom/coloros/translate/engine/offline/v;->c:Z

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/engine/offline/x;->a(Lcom/coloros/translate/engine/offline/x;Lcom/coloros/translate/engine/offline/f0;Z)V

    return-void
.end method

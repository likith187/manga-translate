.class public final synthetic Lcom/coloros/translate/engine/offline/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/offline/d;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/offline/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/b;->a:Lcom/coloros/translate/engine/offline/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/b;->a:Lcom/coloros/translate/engine/offline/d;

    check-cast p1, Lcom/coloros/translate/engine/offline/f0;

    invoke-static {p0, p1}, Lcom/coloros/translate/engine/offline/d;->a(Lcom/coloros/translate/engine/offline/d;Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

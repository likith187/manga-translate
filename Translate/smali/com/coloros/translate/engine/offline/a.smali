.class public final synthetic Lcom/coloros/translate/engine/offline/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/translate/engine/offline/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/a;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/a;->b:Ljava/util/List;

    check-cast p1, Lcom/coloros/translate/engine/offline/f0;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/engine/offline/d;->b(Ljava/util/List;Ljava/util/List;Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

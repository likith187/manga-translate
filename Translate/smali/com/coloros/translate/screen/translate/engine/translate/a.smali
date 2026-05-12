.class public final synthetic Lcom/coloros/translate/screen/translate/engine/translate/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->b:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->f:Ljava/lang/String;

    iput p5, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->b:Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->f:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/translate/screen/translate/engine/translate/a;->h:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;->a(Ljava/util/List;Lcom/coloros/translate/screen/translate/engine/translate/AiUitOnlineTranslateClient;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/engine/info/AsrTranslateResult;

.field public final synthetic b:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/n;->a:Lcom/coloros/translate/engine/info/AsrTranslateResult;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/n;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/n;->a:Lcom/coloros/translate/engine/info/AsrTranslateResult;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/n;->b:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$d;->a(Lcom/coloros/translate/engine/info/AsrTranslateResult;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    return-void
.end method

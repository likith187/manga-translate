.class public final synthetic Lcom/coloros/translate/screen/translate/engine/panel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/translate/engine/panel/e;

.field public final synthetic b:Lcom/coloros/translate/screen/translate/engine/language/a;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/panel/d;->b:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/d;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/d;->b:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->e(Lcom/coloros/translate/screen/translate/engine/panel/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V

    return-void
.end method

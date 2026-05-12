.class public final synthetic Lcom/coloros/translate/screen/translate/engine/panel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/translate/engine/panel/e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic f:Z

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->b:Ljava/lang/String;

    iput p3, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->c:I

    iput-boolean p4, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->f:Z

    iput-object p5, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->b:Ljava/lang/String;

    iget v2, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->c:I

    iget-boolean v3, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->f:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/f;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->b(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

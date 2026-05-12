.class public final synthetic Lx1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:Lcom/coloros/translate/engine/info/AsrTranslateResult;


# direct methods
.method public synthetic constructor <init>(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/h;->a:Lx1/n;

    iput-object p2, p0, Lx1/h;->b:Lcom/coloros/translate/engine/info/AsrTranslateResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/h;->a:Lx1/n;

    iget-object p0, p0, Lx1/h;->b:Lcom/coloros/translate/engine/info/AsrTranslateResult;

    invoke-static {v0, p0}, Lx1/n;->e(Lx1/n;Lcom/coloros/translate/engine/info/AsrTranslateResult;)V

    return-void
.end method

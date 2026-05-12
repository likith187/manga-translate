.class public final synthetic Lx1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/n;

.field public final synthetic b:Lcom/coloros/translate/engine/info/AsrResult;


# direct methods
.method public synthetic constructor <init>(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/i;->a:Lx1/n;

    iput-object p2, p0, Lx1/i;->b:Lcom/coloros/translate/engine/info/AsrResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/i;->a:Lx1/n;

    iget-object p0, p0, Lx1/i;->b:Lcom/coloros/translate/engine/info/AsrResult;

    invoke-static {v0, p0}, Lx1/n;->i(Lx1/n;Lcom/coloros/translate/engine/info/AsrResult;)V

    return-void
.end method

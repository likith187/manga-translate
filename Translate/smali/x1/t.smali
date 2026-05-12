.class public final synthetic Lx1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/g0;

.field public final synthetic b:Lcom/coloros/translate/engine/info/AsrParams;


# direct methods
.method public synthetic constructor <init>(Lx1/g0;Lcom/coloros/translate/engine/info/AsrParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/t;->a:Lx1/g0;

    iput-object p2, p0, Lx1/t;->b:Lcom/coloros/translate/engine/info/AsrParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx1/t;->a:Lx1/g0;

    iget-object p0, p0, Lx1/t;->b:Lcom/coloros/translate/engine/info/AsrParams;

    invoke-static {v0, p0}, Lx1/g0;->c(Lx1/g0;Lcom/coloros/translate/engine/info/AsrParams;)V

    return-void
.end method

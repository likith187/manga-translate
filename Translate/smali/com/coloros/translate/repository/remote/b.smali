.class public final synthetic Lcom/coloros/translate/repository/remote/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;


# direct methods
.method public synthetic constructor <init>(ZLcom/coloros/translate/repository/remote/RtasrEngineHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/b;->a:Z

    iput-object p2, p0, Lcom/coloros/translate/repository/remote/b;->b:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/b;->a:Z

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/b;->b:Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-static {v0, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->a(ZLcom/coloros/translate/repository/remote/RtasrEngineHandler;)V

    return-void
.end method

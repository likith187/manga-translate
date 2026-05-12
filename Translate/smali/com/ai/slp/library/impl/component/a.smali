.class public final synthetic Lcom/ai/slp/library/impl/component/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ai/slp/library/impl/component/b;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/ai/slp/library/impl/component/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/a;->a:Lcom/ai/slp/library/impl/component/b;

    iput-object p2, p0, Lcom/ai/slp/library/impl/component/a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/a;->a:Lcom/ai/slp/library/impl/component/b;

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/a;->b:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/ai/slp/library/impl/component/b;->j(Lcom/ai/slp/library/impl/component/b;Ljava/lang/Throwable;)V

    return-void
.end method

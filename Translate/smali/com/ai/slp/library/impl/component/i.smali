.class public abstract Lcom/ai/slp/library/impl/component/i;
.super Lcom/ai/slp/library/impl/component/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/f;-><init>(Lz0/b;)V

    return-void
.end method


# virtual methods
.method protected K()Ly0/a;
    .locals 0

    sget-object p0, Ly0/a;->STATE_START:Ly0/a;

    return-object p0
.end method

.method protected L()Ly0/a;
    .locals 0

    sget-object p0, Ly0/a;->STATE_STOP:Ly0/a;

    return-object p0
.end method

.class public abstract Ld1/a;
.super Lcom/ai/slp/library/impl/component/i;
.source "SourceFile"


# instance fields
.field private final m:Ld1/b;

.field protected final n:Lcom/slp/library/track/TrackWrap;


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/i;-><init>(Lz0/b;)V

    new-instance p1, Ld1/b;

    invoke-virtual {p0}, Ld1/a;->R()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ld1/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ld1/a;->m:Ld1/b;

    iget-object p1, p1, Ld1/b;->a:Lcom/slp/library/track/TrackWrap;

    iput-object p1, p0, Ld1/a;->n:Lcom/slp/library/track/TrackWrap;

    return-void
.end method


# virtual methods
.method protected abstract R()Ljava/lang/String;
.end method

.method protected S()Lcom/slp/library/track/TrackWrap;
    .locals 0

    iget-object p0, p0, Ld1/a;->m:Ld1/b;

    invoke-virtual {p0}, Ld1/b;->a()Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    return-object p0
.end method

.method protected z(Ly0/a;Ly0/a;)V
    .locals 1

    iget-object v0, p0, Ld1/a;->m:Ld1/b;

    invoke-virtual {v0, p1, p2}, Ld1/b;->b(Ly0/a;Ly0/a;)V

    invoke-super {p0, p1, p2}, Lcom/ai/slp/library/impl/component/b;->z(Ly0/a;Ly0/a;)V

    return-void
.end method

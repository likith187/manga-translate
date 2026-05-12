.class public Ld1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/slp/library/track/TrackWrap;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf1/a;->a(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;

    move-result-object p1

    iput-object p1, p0, Ld1/b;->a:Lcom/slp/library/track/TrackWrap;

    return-void
.end method


# virtual methods
.method public a()Lcom/slp/library/track/TrackWrap;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld1/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf1/a;->a(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    return-object p0
.end method

.method public b(Ly0/a;Ly0/a;)V
    .locals 2

    sget-object p1, Lcom/slp/library/common/log/Logs;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " STATE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    iget-object p1, p0, Ld1/b;->a:Lcom/slp/library/track/TrackWrap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/slp/library/track/TrackWrap;->addTime(Ljava/lang/String;)Lcom/slp/library/track/TrackWrap;

    sget-object p1, Ly0/a;->STATE_STOP:Ly0/a;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Ld1/b;->a:Lcom/slp/library/track/TrackWrap;

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->commit()Lcom/slp/library/track/TrackWrap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/slp/library/track/TrackWrap;->clean()Lcom/slp/library/track/TrackWrap;

    :cond_0
    return-void
.end method

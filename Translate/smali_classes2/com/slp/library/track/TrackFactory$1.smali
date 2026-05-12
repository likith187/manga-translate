.class Lcom/slp/library/track/TrackFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slp/library/track/ITrackApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slp/library/track/TrackFactory;->createTrack()Lcom/slp/library/track/ITrackApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/slp/library/track/ITrackApi<",
        "Lcom/slp/library/otrack/OTrackWrap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/slp/library/otrack/OTrackWrap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/slp/library/otrack/OTrackWrap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/slp/library/otrack/OTrackWrap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/slp/library/track/TrackFactory$1;->add(Lcom/slp/library/otrack/OTrackWrap;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public commit(Lcom/slp/library/otrack/OTrackWrap;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/slp/library/otrack/OTrackWrap;->commit()V

    return-void
.end method

.method public bridge synthetic commit(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/slp/library/otrack/OTrackWrap;

    invoke-virtual {p0, p1}, Lcom/slp/library/track/TrackFactory$1;->commit(Lcom/slp/library/otrack/OTrackWrap;)V

    return-void
.end method

.method public createTrack(Ljava/lang/String;)Lcom/slp/library/otrack/OTrackWrap;
    .locals 0

    .line 2
    new-instance p0, Lcom/slp/library/otrack/OTrackWrap;

    invoke-direct {p0}, Lcom/slp/library/otrack/OTrackWrap;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/slp/library/otrack/OTrackWrap;->createTrack(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createTrack(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/slp/library/track/TrackFactory$1;->createTrack(Ljava/lang/String;)Lcom/slp/library/otrack/OTrackWrap;

    move-result-object p0

    return-object p0
.end method

.method public push(Lcom/slp/library/otrack/OTrackWrap;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/slp/library/otrack/OTrackWrap;->push()V

    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/slp/library/otrack/OTrackWrap;

    invoke-virtual {p0, p1}, Lcom/slp/library/track/TrackFactory$1;->push(Lcom/slp/library/otrack/OTrackWrap;)V

    return-void
.end method

.method public remove(Lcom/slp/library/otrack/OTrackWrap;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/slp/library/otrack/OTrackWrap;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/slp/library/otrack/OTrackWrap;

    invoke-virtual {p0, p1, p2}, Lcom/slp/library/track/TrackFactory$1;->remove(Lcom/slp/library/otrack/OTrackWrap;Ljava/lang/String;)V

    return-void
.end method

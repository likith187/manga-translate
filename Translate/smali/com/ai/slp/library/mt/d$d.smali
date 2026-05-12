.class final Lcom/ai/slp/library/mt/d$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/mt/d;->W(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $obtainTrack:Lcom/slp/library/track/TrackWrap;


# direct methods
.method constructor <init>(Lcom/slp/library/track/TrackWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/mt/d$d;->$obtainTrack:Lcom/slp/library/track/TrackWrap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ai/slp/library/mt/d$d;->invoke(J)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ai/slp/library/mt/d$d;->$obtainTrack:Lcom/slp/library/track/TrackWrap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "translate_time"

    invoke-virtual {p0, p2, p1}, Lcom/slp/library/track/TrackWrap;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/slp/library/track/TrackWrap;

    return-void
.end method

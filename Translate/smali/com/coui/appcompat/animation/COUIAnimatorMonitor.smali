.class public Lcom/coui/appcompat/animation/COUIAnimatorMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CALLERS_DEPTH:I = 0xa


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hookAfterUpdateProperty(J)V
    .locals 0

    return-void
.end method

.method public hookAnimationEnd()V
    .locals 0

    return-void
.end method

.method public hookAnimationStart()V
    .locals 3

    :try_start_0
    sget-wide v0, Lcom/oplus/wrapper/os/Trace;->TRACE_TAG_VIEW:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatorStart "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/wrapper/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/wrapper/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hookAnimator()V
    .locals 0

    return-void
.end method

.method public hookSpringAnimationEnd(I)V
    .locals 3

    :try_start_0
    sget-wide v0, Lcom/oplus/wrapper/os/Trace;->TRACE_TAG_VIEW:J

    const-string v2, "spring_animator"

    invoke-static {v0, v1, v2, p1}, Lcom/oplus/wrapper/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookAnimationEnd()V

    return-void
.end method

.method public hookSpringAnimationStart(I)V
    .locals 3

    :try_start_0
    sget-wide v0, Lcom/oplus/wrapper/os/Trace;->TRACE_TAG_VIEW:J

    const-string v2, "spring_animator"

    invoke-static {v0, v1, v2, p1}, Lcom/oplus/wrapper/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/animation/COUIAnimatorMonitor;->hookAnimationStart()V

    return-void
.end method

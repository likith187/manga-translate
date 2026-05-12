.class public final Lq9/d;
.super Ljava/util/logging/Handler;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lq9/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq9/d;

    invoke-direct {v0}, Lq9/d;-><init>()V

    sput-object v0, Lq9/d;->INSTANCE:Lq9/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 4

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lq9/c;->INSTANCE:Lq9/c;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record.loggerName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq9/e;->a(Ljava/util/logging/LogRecord;)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "record.message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lq9/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

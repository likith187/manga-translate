.class public final Lm9/h;
.super Lokhttp3/c0;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:J

.field private final f:Lt9/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLt9/f;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/c0;-><init>()V

    iput-object p1, p0, Lm9/h;->b:Ljava/lang/String;

    iput-wide p2, p0, Lm9/h;->c:J

    iput-object p4, p0, Lm9/h;->f:Lt9/f;

    return-void
.end method


# virtual methods
.method public i()J
    .locals 2

    iget-wide v0, p0, Lm9/h;->c:J

    return-wide v0
.end method

.method public k()Lt9/f;
    .locals 0

    iget-object p0, p0, Lm9/h;->f:Lt9/f;

    return-object p0
.end method

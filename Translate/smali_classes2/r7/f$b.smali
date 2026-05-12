.class public Lr7/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lr7/f$b;->a:I

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lr7/f$b;->b:J

    return-void
.end method

.method static synthetic a(Lr7/f$b;)I
    .locals 0

    iget p0, p0, Lr7/f$b;->a:I

    return p0
.end method

.method static synthetic b(Lr7/f$b;)J
    .locals 2

    iget-wide v0, p0, Lr7/f$b;->b:J

    return-wide v0
.end method


# virtual methods
.method public c()Lr7/f;
    .locals 2

    new-instance v0, Lr7/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr7/f;-><init>(Lr7/f$b;Lr7/f$a;)V

    return-object v0
.end method

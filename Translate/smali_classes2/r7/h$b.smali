.class Lr7/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/h$b;->a:Ljava/lang/Runnable;

    iput-wide p2, p0, Lr7/h$b;->b:J

    return-void
.end method

.method static synthetic a(Lr7/h$b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lr7/h$b;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lr7/h$b;)J
    .locals 2

    iget-wide v0, p0, Lr7/h$b;->b:J

    return-wide v0
.end method

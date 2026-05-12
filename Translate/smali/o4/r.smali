.class final synthetic Lo4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map$Entry;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;Lt4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/r;->a:Ljava/util/Map$Entry;

    return-void
.end method

.method public static a(Ljava/util/Map$Entry;Lt4/a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lo4/r;

    invoke-direct {v0, p0, p1}, Lo4/r;-><init>(Ljava/util/Map$Entry;Lt4/a;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lo4/r;->a:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo4/s;->c(Ljava/util/Map$Entry;Lt4/a;)V

    return-void
.end method

.class public Lu2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lu2/g;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu2/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu2/g;-><init>(Z)V

    sput-object v0, Lu2/g;->b:Lu2/g;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu2/g;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Lu2/f;->c:Lu2/f;

    const-string v0, "default config"

    invoke-virtual {p0, p1, v0}, Lu2/g;->a(Lu2/f;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static c()Lu2/g;
    .locals 1

    sget-object v0, Lu2/g;->b:Lu2/g;

    return-object v0
.end method


# virtual methods
.method public a(Lu2/f;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lu2/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lu2/g;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configName is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lu2/g;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

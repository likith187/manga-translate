.class public final Li0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/c$c$a;
    }
.end annotation


# static fields
.field public static final c:Li0/c$c$a;

.field public static final d:Li0/c$c;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li0/c$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li0/c$c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Li0/c$c;->c:Li0/c$c$a;

    new-instance v0, Li0/c$c;

    invoke-static {}, Lkotlin/collections/q0;->b()Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/j0;->h()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Li0/c$c;-><init>(Ljava/util/Set;Li0/c$b;Ljava/util/Map;)V

    sput-object v0, Li0/c$c;->d:Li0/c$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Li0/c$b;Ljava/util/Map;)V
    .locals 1

    const-string p2, "flags"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "allowedViolations"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/c$c;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Li0/c$c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Li0/c$c;->a:Ljava/util/Set;

    return-object p0
.end method

.method public final b()Li0/c$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Li0/c$c;->b:Ljava/util/Map;

    return-object p0
.end method

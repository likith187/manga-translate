.class public final Landroidx/lifecycle/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h0$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/lifecycle/h0$a;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lk0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/h0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/h0;->c:Landroidx/lifecycle/h0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h0;->a:Ljava/util/Map;

    .line 6
    new-instance v0, Lk0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lk0/b;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/lifecycle/h0;->b:Lk0/b;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h0;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lk0/b;

    invoke-direct {v0, p1}, Lk0/b;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/lifecycle/h0;->b:Lk0/b;

    return-void
.end method


# virtual methods
.method public final a()Lq0/e$b;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/h0;->b:Lk0/b;

    invoke-virtual {p0}, Lk0/b;->b()Lq0/e$b;

    move-result-object p0

    return-object p0
.end method

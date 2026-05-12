.class public final Lk9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/b$a;,
        Lk9/b$b;
    }
.end annotation


# static fields
.field public static final c:Lk9/b$a;


# instance fields
.field private final a:Lokhttp3/z;

.field private final b:Lokhttp3/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk9/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk9/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lk9/b;->c:Lk9/b$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/z;Lokhttp3/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk9/b;->a:Lokhttp3/z;

    iput-object p2, p0, Lk9/b;->b:Lokhttp3/b0;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/b0;
    .locals 0

    iget-object p0, p0, Lk9/b;->b:Lokhttp3/b0;

    return-object p0
.end method

.method public final b()Lokhttp3/z;
    .locals 0

    iget-object p0, p0, Lk9/b;->a:Lokhttp3/z;

    return-object p0
.end method

.class final synthetic Lf3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/p;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/util/Map;)Lf3/b0$b;
    .locals 1

    new-instance v0, Lf3/p;

    invoke-direct {v0, p0}, Lf3/p;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/p;->a:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p0, p1}, Lf3/b0;->I0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final synthetic Le3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Le3/j;

.field private final b:Ly2/m;


# direct methods
.method private constructor <init>(Le3/j;Ly2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/f;->a:Le3/j;

    iput-object p2, p0, Le3/f;->b:Ly2/m;

    return-void
.end method

.method public static a(Le3/j;Ly2/m;)Lg3/b$a;
    .locals 1

    new-instance v0, Le3/f;

    invoke-direct {v0, p0, p1}, Le3/f;-><init>(Le3/j;Ly2/m;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le3/f;->a:Le3/j;

    iget-object p0, p0, Le3/f;->b:Ly2/m;

    invoke-static {v0, p0}, Le3/j;->b(Le3/j;Ly2/m;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

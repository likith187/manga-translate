.class final synthetic Le3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Le3/n;


# direct methods
.method private constructor <init>(Le3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/m;->a:Le3/n;

    return-void
.end method

.method public static a(Le3/n;)Lg3/b$a;
    .locals 1

    new-instance v0, Le3/m;

    invoke-direct {v0, p0}, Le3/m;-><init>(Le3/n;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le3/m;->a:Le3/n;

    invoke-static {p0}, Le3/n;->b(Le3/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

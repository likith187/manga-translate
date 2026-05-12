.class final synthetic Le3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Le3/j;

.field private final b:Ly2/m;

.field private final c:I


# direct methods
.method private constructor <init>(Le3/j;Ly2/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/i;->a:Le3/j;

    iput-object p2, p0, Le3/i;->b:Ly2/m;

    iput p3, p0, Le3/i;->c:I

    return-void
.end method

.method public static a(Le3/j;Ly2/m;I)Lg3/b$a;
    .locals 1

    new-instance v0, Le3/i;

    invoke-direct {v0, p0, p1, p2}, Le3/i;-><init>(Le3/j;Ly2/m;I)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le3/i;->a:Le3/j;

    iget-object v1, p0, Le3/i;->b:Ly2/m;

    iget p0, p0, Le3/i;->c:I

    invoke-static {v0, v1, p0}, Le3/j;->d(Le3/j;Ly2/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

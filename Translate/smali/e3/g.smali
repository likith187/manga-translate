.class final synthetic Le3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Le3/j;

.field private final b:Lz2/g;

.field private final c:Ljava/lang/Iterable;

.field private final d:Ly2/m;

.field private final e:I


# direct methods
.method private constructor <init>(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/g;->a:Le3/j;

    iput-object p2, p0, Le3/g;->b:Lz2/g;

    iput-object p3, p0, Le3/g;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Le3/g;->d:Ly2/m;

    iput p5, p0, Le3/g;->e:I

    return-void
.end method

.method public static a(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)Lg3/b$a;
    .locals 7

    new-instance v6, Le3/g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Le3/g;-><init>(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)V

    return-object v6
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le3/g;->a:Le3/j;

    iget-object v1, p0, Le3/g;->b:Lz2/g;

    iget-object v2, p0, Le3/g;->c:Ljava/lang/Iterable;

    iget-object v3, p0, Le3/g;->d:Ly2/m;

    iget p0, p0, Le3/g;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Le3/j;->c(Le3/j;Lz2/g;Ljava/lang/Iterable;Ly2/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

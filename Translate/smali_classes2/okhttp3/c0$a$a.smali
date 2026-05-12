.class public final Lokhttp3/c0$a$a;
.super Lokhttp3/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c0$a;->a(Lt9/f;Lokhttp3/w;J)Lokhttp3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/w;

.field final synthetic c:J

.field final synthetic f:Lt9/f;


# direct methods
.method constructor <init>(Lokhttp3/w;JLt9/f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c0$a$a;->b:Lokhttp3/w;

    iput-wide p2, p0, Lokhttp3/c0$a$a;->c:J

    iput-object p4, p0, Lokhttp3/c0$a$a;->f:Lt9/f;

    invoke-direct {p0}, Lokhttp3/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public i()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/c0$a$a;->c:J

    return-wide v0
.end method

.method public k()Lt9/f;
    .locals 0

    iget-object p0, p0, Lokhttp3/c0$a$a;->f:Lt9/f;

    return-object p0
.end method

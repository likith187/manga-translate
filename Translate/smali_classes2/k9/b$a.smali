.class public final Lk9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk9/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/b0;Lokhttp3/z;)Z
    .locals 3

    const-string p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/b0;->x()I

    move-result p0

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_0

    const/16 v0, 0x134

    if-eq p0, v0, :cond_1

    const/16 v0, 0x194

    if-eq p0, v0, :cond_1

    const/16 v0, 0x195

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const-string p0, "Expires"

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v2}, Lokhttp3/b0;->I(Lokhttp3/b0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->i()Lokhttp3/d;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d;->c()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->i()Lokhttp3/d;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d;->b()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lokhttp3/b0;->i()Lokhttp3/d;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d;->a()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lokhttp3/b0;->i()Lokhttp3/d;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d;->h()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lokhttp3/z;->b()Lokhttp3/d;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/d;->h()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

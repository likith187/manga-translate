.class abstract Landroidx/core/graphics/drawable/IconCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->c(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 2

    iget p1, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$d;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, [B

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->d()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :cond_0
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    if-eq p0, v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    :cond_1
    return-object p1

    :pswitch_7
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

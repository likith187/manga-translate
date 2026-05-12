.class public Lu/h$a;
.super La0/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lt/h$e;


# direct methods
.method public constructor <init>(Lt/h$e;)V
    .locals 0

    invoke-direct {p0}, La0/g$c;-><init>()V

    iput-object p1, p0, Lu/h$a;->a:Lt/h$e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lu/h$a;->a:Lt/h$e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/h$e;->h(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 0

    iget-object p0, p0, Lu/h$a;->a:Lt/h$e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lt/h$e;->i(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

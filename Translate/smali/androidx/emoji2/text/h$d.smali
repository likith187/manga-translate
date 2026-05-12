.class Landroidx/emoji2/text/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/h$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/emoji2/text/h$d;->c()Landroidx/emoji2/text/h$d;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/o;)Z
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Landroidx/emoji2/text/h$d;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p4, p1}, Landroidx/emoji2/text/o;->l(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public c()Landroidx/emoji2/text/h$d;
    .locals 0

    return-object p0
.end method

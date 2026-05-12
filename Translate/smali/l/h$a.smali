.class Ll/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/h;->F(Ll/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll/h;


# direct methods
.method constructor <init>(Ll/h;)V
    .locals 0

    iput-object p1, p0, Ll/h$a;->a:Ll/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/i;Ll/i;)I
    .locals 0

    iget p0, p1, Ll/i;->c:I

    iget p1, p2, Ll/i;->c:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll/i;

    check-cast p2, Ll/i;

    invoke-virtual {p0, p1, p2}, Ll/h$a;->a(Ll/i;Ll/i;)I

    move-result p0

    return p0
.end method

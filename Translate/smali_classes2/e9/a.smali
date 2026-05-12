.class public final synthetic Le9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le9/b;

    check-cast p2, Le9/b;

    invoke-static {p1, p2}, Le9/b;->a(Le9/b;Le9/b;)I

    move-result p0

    return p0
.end method

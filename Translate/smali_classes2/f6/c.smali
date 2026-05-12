.class public Lf6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lf6/c;


# instance fields
.field private final a:Landroidx/collection/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf6/c;

    invoke-direct {v0}, Lf6/c;-><init>()V

    sput-object v0, Lf6/c;->b:Lf6/c;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/h;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/collection/h;-><init>(I)V

    iput-object v0, p0, Lf6/c;->a:Landroidx/collection/h;

    return-void
.end method

.method public static b()Lf6/c;
    .locals 1

    sget-object v0, Lf6/c;->b:Lf6/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/oplus/anim/a;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lf6/c;->a:Landroidx/collection/h;

    invoke-virtual {p0, p1}, Landroidx/collection/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/a;

    return-object p0
.end method

.method public c(Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lf6/c;->a:Landroidx/collection/h;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

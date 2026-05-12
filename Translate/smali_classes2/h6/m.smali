.class public Lh6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg6/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg6/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/m;->b:Lg6/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/q;

    invoke-direct {p2, p1, p3, p0}, Lc6/q;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/m;)V

    return-object p2
.end method

.method public b()Lg6/m;
    .locals 0

    iget-object p0, p0, Lh6/m;->b:Lg6/m;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/m;->a:Ljava/lang/String;

    return-object p0
.end method

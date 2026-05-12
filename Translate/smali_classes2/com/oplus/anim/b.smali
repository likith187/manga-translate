.class public final synthetic Lcom/oplus/anim/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/o$b;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/o;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/b;->a:Lcom/oplus/anim/o;

    iput-object p2, p0, Lcom/oplus/anim/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/anim/a;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/b;->a:Lcom/oplus/anim/o;

    iget-object p0, p0, Lcom/oplus/anim/b;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/oplus/anim/o;->k(Lcom/oplus/anim/o;Ljava/lang/String;Lcom/oplus/anim/a;)V

    return-void
.end method

.class public final synthetic Lcom/oplus/anim/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/o$b;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/o;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/o;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/c;->a:Lcom/oplus/anim/o;

    iput p2, p0, Lcom/oplus/anim/c;->b:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/anim/a;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/c;->a:Lcom/oplus/anim/o;

    iget p0, p0, Lcom/oplus/anim/c;->b:F

    invoke-static {v0, p0, p1}, Lcom/oplus/anim/o;->h(Lcom/oplus/anim/o;FLcom/oplus/anim/a;)V

    return-void
.end method
